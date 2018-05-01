module Workarea
  module Storefront
    module CartContent
      include DisplayContent

      def with_items_content
        content_blocks_for("with_items")
      end

      def empty_content
        content_blocks_for("empty")
      end

      def content_lookup
        "cart"
      end
    end
  end
end
