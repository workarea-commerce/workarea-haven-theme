source 'https://rubygems.org'

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

gem 'workarea', source: 'https://gems.weblinc.com'
group :test do
  gem 'workarea-testing', source: 'https://gems.weblinc.com'
  # TODO: remove git reference once workarea-theme is released
  gem "workarea-theme", git: "ssh://git@stash.tools.weblinc.com:7999/wp/workarea-theme.git", branch: :master
end
