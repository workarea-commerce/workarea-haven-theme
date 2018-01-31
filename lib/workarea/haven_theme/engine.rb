module Workarea
  module HavenTheme
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::HavenTheme
    end
  end
end
