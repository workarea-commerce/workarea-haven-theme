source "https://rubygems.org"

# Declare your gem's dependencies in haven_theme.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec
gem "rubocop", "~> 0.48", require: false
gem "bundler-audit", require: false

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]

gem "workarea", git: "ssh://git@stash.tools.weblinc.com:7999/wl/workarea.git", ref: "3846146b639"
group :test do
  # TODO: to using source: "https://gems.weblinc.com" once v3.3 is released
  gem "workarea-testing", git: "ssh://git@stash.tools.weblinc.com:7999/wl/workarea.git", ref: "3846146b639"
  gem "workarea-theme", source: "https://gems.weblinc.com"
end

# TODO: Remove this before releasing
gem "pry"
