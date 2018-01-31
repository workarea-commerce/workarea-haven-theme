$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "workarea/haven_theme/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workarea-haven_theme"
  s.version     = Workarea::HavenTheme::VERSION
  s.authors     = ["Jake Beresford"]
  s.email       = ["jberesford@weblinc.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of HavenTheme."
  s.description = "TODO: Description of HavenTheme."
  
  s.files = `git ls-files`.split("\n")
  
  s.add_dependency 'workarea', '~> 3.x'
end
