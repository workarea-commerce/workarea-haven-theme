module Workarea
  module Storefront
    module ProductMediaSliderHelper
      def media_alt_image_slider_options(product_id)
        {
          waitForImages: true,
          options: {
            asNavFor: "##{product_id}_primary_media_carousel",
            slidesToShow: 4,
            slidesToScroll: 1,
            autoplay: false,
            mobileFirst: true,
            dots: false,
            arrows: true,
            focusOnSelect: true
          }
        }.to_json
      end

      def media_primary_image_slider_options(product_id)
        {
          waitForImages: true,
          options: {
            asNavFor: "##{product_id}_alt_media_carousel",
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: false,
            mobileFirst: true,
            dots: false,
            arrows: true
          },
          forceSetPosition: true
        }.to_json
      end
    end
  end
end
