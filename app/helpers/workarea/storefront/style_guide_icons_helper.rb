module Workarea
  module Storefront
    module StyleGuideIconsHelper
      # TODO - Remove this helper once ECOMMERCE-5446 is merged and released
      def style_guide_icons
        super + Dir["#{Theme.installed.root}/app/assets/images/workarea/**/icons/**/*.svg"].uniq.sort
      end
    end
  end
end
