module Workarea
  module Storefront
    module ProductRetinaImageSrcsetHelper
      def product_image_retina_srcset(image, processor, processor_retina)
        "#{product_image_url(image, processor)}, #{product_image_url(image, processor_retina)} 2x"
      end
    end
  end
end
