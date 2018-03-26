module Workarea
  module Storefront
    module AppliedFacetsHelper
      def applied_facets(facets)
        result = []

        params.slice(*facets.map(&:system_name)).each_pair do |key, value|
          facet = facets.find(name: key).first
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
    end
  end
end
