require "workarea/testing/teaspoon"

Teaspoon.configure do |config|
  config.root = Workarea::HavenTheme::Engine.root
  Workarea::Teaspoon.apply(config)
end
