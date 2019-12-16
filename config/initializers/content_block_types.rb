Workarea.define_content_block_types do
  block_type "Hero" do
    description "Positionable button over a background image."

    fieldset "Image" do
      field "Asset", :asset, required: true, file_types: "image", default: find_asset_id_by_file_name("960x470_light.png")
      field "Alt Text", :string, default: ""
    end

    fieldset "Button" do
      field "Text", :string, default: "Button"
      field "URL", :url, default: "#"
      field "Style", :options, values: [
        ["Primary", "button"],
        ["Secondary", "button button--secondary"],
        ["Secondary - alternative", "button button--secondary-alt"]
      ], default: "Primary"
      field "Size", :options, values: [
        "Regular",
        "Large",
        "Small"
      ], default: "Regular"
      field "Position", :options, values: [
        "Top, Left",
        "Top, Center",
        "Top, Right",
        "Middle, Left",
        "Middle, Center",
        "Middle, Right",
        "Bottom, Left",
        "Bottom, Center",
        "Bottom, Right"
      ], default: "Middle, Center"
    end
  end

  block_type "Category Summary" do
    description "A category name and its first few products."
    field "Category", :category, default: -> { Workarea::Catalog::Category.sample.try(:id).try(:to_s) }
    field "Full Bleed", :boolean, default: false
  end

  block_type "Product List" do
    description "A custom list of products."

    field "Title", :string, default: "Featured"
    field "Products", :products, default: (lambda do
      result = Array.new(3) { Workarea::Catalog::Product.sample.try(:id) }
      result.compact
    end)
    field "Full Bleed", :boolean, default: false
  end

  block_type "Product Insights" do
    description "A list of top selling products."

    field "Title", :string, default: "Top Products"
    field "Type", :options, values: [
        "Cold Products",
        "Hot Products",
        "Most Discounted Products",
        "Non Sellers",
        "Products To Improve",
        "Promising Products",
        "Star Products",
        "Top Products",
        "Trending Products"
      ], default: "Top Products"
    field "Full Bleed", :boolean, default: false
  end

  # Custom content blocks

  block_type "Product Grid Cell" do
    description "Content block for your product grid"
    view_model "Workarea::Storefront::ContentBlocks::ProductGridCellViewModel"

    fieldset "Grid" do
      field "Position", :integer, default: 1, min: 1
      field "Width", :options, values: [["1 cell", 1], ["2 cells", 2]], default: "1 cell"
      field "Height", :options, values: [["1 cell", 1], ["2 cells", 2]], default: "1 cell"
      field "Float", :options, values: ["none", "left", "right"], default: "none"
    end

    fieldset "Content" do
      field "Asset", :asset, file_types: "image", default: find_asset_id_by_file_name("product_grid_content_2_cell_background.jpg"), html_data_attributes: { media_mode: ["resize", "crop", "switch"] }
      field "Heading", :string, default: "Stylish home office"
      field "Sub Heading", :string, default: "Tie the room together with our chairs and desks"
      field "Link", :url, default: "/"
      field "Link Text", :string, default: "Click Me!"
      field "Link Style", :options, values: [["button", "button"], ["Secondary button" , "button button--secondary"], ["Secondary Button Alternative" , "button button--secondary-alt"], ["Text Button", "text-button"], ["Link", "link"]], default: "button"
      field "Text Color", :color, default: "#000000", presets: ["#000000", "#ffffff", "#999999", "#ff0000", "#00ff00", "#0000ff"]
    end
  end
end
