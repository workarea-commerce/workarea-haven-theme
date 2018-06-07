module Workarea
  module Storefront
    module AppliedFacetsHelper
      def applied_facets(facets)
        result = []

        params.slice(*facets.map(&:system_name)).each_pair do |key, value|
          facet = facets.find { |f| f.name.casecmp(key).zero? }
          if value.respond_to?(:map)
            value.map do |val|
              result << [facet, val]
            end
          else
            result << [facet, value]
          end
        end

        result
      end

      def applied_range_facet_text(facet_value)
        left, right = facet_value.split("-").map do |price|
          number_to_currency(price.to_m)
        end

        "#{left} - #{right}"
      end
    end
  end
end
