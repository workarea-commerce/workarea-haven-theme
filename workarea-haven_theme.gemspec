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

  s.add_dependency "workarea", "~> 3.x"
  s.add_dependency "workarea-theme"
  s.add_dependency "workarea-blog"
  s.add_dependency "workarea-clothing"
end
