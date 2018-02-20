module Workarea
  module HavenTheme
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      include Workarea::Theme
      isolate_namespace Workarea::HavenTheme

      config.to_prepare do
        Storefront::ApplicationController.helper(Storefront::StyleGuideIconsHelper)
      end
    end
  end
end
