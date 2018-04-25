Workarea::Content.define_block_types do
  find_asset_id = lambda do |name|
    proc do
      asset = Workarea::Content::Asset.where(file_name: name).first ||
                Workarea::Content::Asset.placeholder

      asset.try(:id)
    end
  end

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
      field "Asset", :asset, file_types: "image", default: find_asset_id.call("product_grid_content_2_cell_background.jpg"), html_data_attributes: { media_mode: ["resize", "crop", "switch"] }
      field "Heading", :string, default: "Stylish home office"
      field "Sub Heading", :string, default: "Tie the room together with our chairs and desks"
      field "Link", :url, default: "/"
      field "Link Text", :string, default: "Click Me!"
      field "Link Style", :options, values: [["button", "button"], ["Secondary button" , "button button--secondary"], ["Secondary Button Alternative" , "button button--secondary-alt"], ["Text Button", "text-button"], ["Link", "link"]], default: "button"
      field "Text Color", :color, default: "#000000", presets: ["#000000", "#ffffff", "#999999", "#ff0000", "#00ff00", "#0000ff"]
    end
  end
end
