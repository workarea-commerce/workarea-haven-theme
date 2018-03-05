Workarea.configure do |config|
  config.seeds.insert_after("Workarea::SystemContentSeeds", "Workarea::ThemeLayoutContentSeeds")
end
