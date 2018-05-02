require "test_helper"

module Workarea
  module Storefront
    class CartContentSystemTest < Workarea::SystemTest
      setup :set_inventory
      setup :set_product

      def set_inventory
        create_inventory(id: "SKU1", policy: "standard", available: 2)
      end

      def set_product
        @product = create_product(
          name: "Integration Product",
          variants: [
            { name: "SKU1", sku: "SKU1", regular: 5.to_m },
            { name: "SKU2", sku: "SKU2", regular: 6.to_m }
          ]
        )
      end

      def test_cart_content
        create_content(
          name: "Cart",
          blocks: [
            {
              area: :with_items,
              type: "html",
              data: { html: "foo bar" }
            }
          ]
        )

        visit storefront.product_path(@product)
        select @product.skus.first, from: "sku"
        click_button t("workarea.storefront.products.add_to_cart")

        visit storefront.cart_path
        assert(page.has_content?("foo bar"))
      end

      def test_empty_cart_content
        create_content(
          name: "Cart",
          blocks: [
            {
              area: :empty,
              type: "html",
              data: { html: "CartEmptyContent" }
            }
          ]
        )

        visit storefront.cart_path
        assert(page.has_content?("CartEmptyContent"))
      end
    end
  end
end
