module Workarea
  class HavenCategoriesSeeds
    def perform
      puts "Adding Haven categories..."

      rules = [
        { name: "price", operator: "greater_than", value: 40 },
        { name: "price", operator: "less_than", value: 40 },
        { name: "search", operator: "equals", value: "*" }
      ]

      Sidekiq::Callbacks.disable do
        categories.each do |category_name|
          Catalog::Category.create!(
            name: category_name,
            product_rules: [rules.sample]
          )
        end
      end
    end

    def categories
      [ "Kitchen",
        "Bath",
        "Office",
        "Decor",
        "Pet",
        "Bar",
        "Kid",
        "Outdoor",
        "Bath Rugs",
        "Bath Towels",
        "Bathrobes and Slippers",
        "Office Furniture",
        "Office Lighting",
        "Outdoor Lighting",
        "Laundry",
        "Hand Tools"
      ]
    end
  end
end
