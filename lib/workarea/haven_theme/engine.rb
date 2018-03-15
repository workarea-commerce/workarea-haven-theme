module Workarea
  module HavenTheme
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      include Workarea::Theme
      isolate_namespace Workarea::HavenTheme

      config.to_prepare do
        Storefront::ApplicationController.helper(Storefront::StyleGuideIconsHelper)
        Storefront::ApplicationController.helper(Storefront::ProductRetinaImageSrcsetHelper)
      end
    end
  end
end
