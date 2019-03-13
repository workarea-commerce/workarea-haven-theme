$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "workarea/haven_theme/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workarea-haven_theme"
  s.version     = Workarea::HavenTheme::VERSION
  s.authors     = ["Jake Beresford"]
  s.email       = ["jberesford@weblinc.com"]
  s.homepage    = "https://stash.tools.weblinc.com/projects/WP/repos/workarea-haven-theme/browse"
  s.summary     = "Haven Theme for Workarea ecommerce platform"
  s.description = "A place of safety or refuge."

  s.files = `git ls-files`.split("\n")

  s.add_dependency "workarea", "~> 3.x", ">= 3.4.x"
  s.add_dependency "workarea-theme", "~> 1.x"
  s.add_dependency "workarea-blog", "~> 3.x", ">= 3.3.x"
  s.add_dependency "workarea-styled_selects", "~> 1.x"
  s.add_dependency "workarea-product_badges", "~> 1.x"
  s.add_dependency "workarea-content_search", "~> 1.x"
  s.add_dependency "workarea-product_grid_content", "~> 1.x"
  s.add_dependency "workarea-shipping_message", "~> 1.x"
  s.add_dependency "workarea-swatches", "~> 1.x"
  s.add_dependency "workarea-product_quickview", "~> 1.x", ">= 1.2.x"
  s.add_dependency "workarea-reviews", "~> 3.x"
  s.add_dependency "workarea-slick_slider", "~> 1.x"
  s.add_dependency "workarea-share", "~> 1.x", ">= 1.2.x"
  s.add_dependency "workarea-product_videos", "~> 1.x", ">= 1.2.x"
  s.add_dependency "workarea-package_products", "~> 3.x", ">= 3.2.x"
  s.add_dependency "workarea-hover_zoom", "~> 2.x"
  s.add_dependency "workarea-gift_cards", "~> 3.x", ">= 3.4.x"
  s.add_dependency "workarea-email_signup_popup", "~> 2.x"

  s.add_dependency "jquery_payment-rails", "~> 1.1.0"
end
