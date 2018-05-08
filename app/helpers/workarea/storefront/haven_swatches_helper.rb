module Workarea
  module Storefront
    module HavenSwatchesHelper
      def render_swatch_option(selection, swatch)
        id = selection.optionize

        if swatch&.image?
          image_tag(
            swatch.image.process(:swatch_thumb).url,
            alt: selection,
            class: "option-button__image option-button__image--#{id}"
          )
        elsif swatch&.hex?
          content_tag(
            :div,
            "",
            class: "option-button__swatch option-button__swatch--#{id}",
            style: "background-color: #{swatch.hex};"
          )
        end
      end
    end
  end
end
