namespace :workarea do
  desc "Load haven demo data onto site"
  task haven_demo_data: :environment do
    require "workarea/seeds"

    Workarea.config.seeds.delete("Workarea::ClothingProductSeeds")

    Workarea.config.seeds.swap(
      "Workarea::CategoriesSeeds",
      "Workarea::HavenCategoriesSeeds"
    )

    Workarea.config.seeds.swap(
      "Workarea::ProductsSeeds",
      "Workarea::HavenDemoProductSeeds"
    )

    Workarea::Seeds.run
  end
end
