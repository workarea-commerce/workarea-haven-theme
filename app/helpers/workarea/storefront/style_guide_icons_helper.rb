module Workarea
  module Storefront
    module StyleGuideIconsHelper
      def style_guide_icons
        super + Dir["#{Theme.installed.root}/app/assets/images/workarea/**/icons/**/*.svg"].uniq.sort
      end
    end
  end
end
