module Workarea
  module HavenTheme
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      include Workarea::Theme
      isolate_namespace Workarea::HavenTheme

      config.to_prepare do
        Storefront::ApplicationController.helper(Storefront::AppliedFacetsHelper)
        Storefront::ApplicationController.helper(Storefront::HavenSwatchesHelper)
        Storefront::ApplicationController.helper(Storefront::ProductRetinaImageSrcsetHelper)
        Storefront::ApplicationController.helper(Storefront::ProductMediaSliderHelper)
        # TODO - Remove this helper once v3.3 is released, this method was added to base.
        Storefront::ApplicationController.helper(Storefront::OptionalFieldHelper)
        Storefront::ApplicationController.helper(Storefront::HavenBlogHelper)
      end
    end
  end
end
