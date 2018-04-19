# TODO - Remove this file once v3.3 is released, this method was added to base.
module Workarea
  module Storefront
    module OptionalFieldHelper
      def optional_field(prompt, *fields, &block)
        return capture(&block) if fields.any?(&:present?)
        content_tag(:div, capture(&block),  class: "hidden-if-js-enabled",
                                             data: { optional_field: prompt })
      end
    end
  end
end
