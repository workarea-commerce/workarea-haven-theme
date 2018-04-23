module Workarea
  class HavenDemoProductSeeds
    def perform
      puts "Adding Haven Theme Products..."

      Sidekiq::Callbacks.disable do
        Catalog::ProductPlaceholderImage.cached

        Catalog::Category.all.each do |category|
          10.times do
            materials = ["Leather", "Concrete", "Brass", "Ceramic"]
            colors = Array.new(3) { Faker::Commerce.color.titleize }
            on_sale = rand(10) > 9

            product = Catalog::Product.new(name: Faker::Commerce.product_name)

            sku_count = if chance(5)
              1
            else
              3
            end

            sku_count.times do
              sku = Faker::Code.isbn
              sku_price = Faker::Commerce.price.to_m

              add_details = chance(6)
              details = if add_details
                { "Material" => materials.sample, "Color" => colors.sample }
              else
                {}
              end

              product.variants.build(
                sku: sku,
                details: details
              )

              Inventory::Sku.create!(
                id: sku,
                policy: "standard",
                available: rand(25)
              )

              Pricing::Sku.create!(
                id: sku,
                msrp: sku_price + 10.to_m,
                tax_code: "001",
                on_sale: on_sale,
                prices: [
                  { regular: sku_price, sale: sku_price - rand(5).to_m }
                ]
              )
            end

            materials = product.variants.map { |v| v.details["Material"] }.compact
            colors = product.variants.map { |v| v.details["Color"] }.compact

            if materials.present? || colors.present?
              product.filters = { "Materials" => materials.uniq, "Color" => colors.uniq }
            end

            product.new_badge = chance(2)
            product.sale_badge = on_sale
            product.best_seller_badge = chance(9)

            product.description = Faker::Hipster.paragraph
            product.save!

            add_images(product)
          end
        end
      end
    end

    private

      def add_images(product)
        product.variants.each do |variant|
          option = variant.details["Color"].present? ? variant.details["Color"].first : nil
          product.images.create!(
            image: File.new("#{Workarea::HavenTheme::Engine.root}/data/workarea/images/products/#{image_files.sample}"),
            option: option
          )
        end
      end

      def image_files
        @image_files ||= Dir.entries("#{Workarea::HavenTheme::Engine.root}/data/workarea/images/products/").select { |f| !File.directory? f }
      end

      def chance(threshold)
        rand(10) <= threshold ? true : false
      end
  end
end
