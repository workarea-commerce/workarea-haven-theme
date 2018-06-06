Workarea.configure do |config|
  config.theme = {
    color_schemes: ["haven"],
    color_scheme: "haven",
    font_stacks: {
      poppins: '"Poppins", "Helvetica", "Helvetica Neue", sans-serif',
      pt_serif: '"PT Serif", "Times New Roman", "Georgia", serif'
    },
    primary_font_family: "poppins",
    secondary_font_family: "pt_serif"
  }

  config.filter_group_truncation_limit = 8

  config.storefront_break_points = {
    small: 320,
    small_horizontal: 456,
    medium: 760,
    wide: 960,
    x_wide: 1160
  }

  config.admin_break_points = {
    small: 320,
    small_horizontal: 456,
    medium: 760,
    wide: 960,
    x_wide: 1160
  }

  config.favicon_path = "workarea/storefront/favicon.ico"

  config.content_areas = config.content_areas.merge(
    "cart" => %w(with_items empty),
    "layout" => %w(header_promo footer_column_1 footer_column_2 footer_column_3)
  )

  # How many search suggestions should be shown in the
  # autocomplete searches
  config.search_suggestions = 4

  config.product_grid_cell_classes = {
    "1": "grid__cell--50 grid__cell--33-at-medium grid__cell--25-at-wide",
    "2": "grid__cell--50-at-medium"
  }

  # Number of recommendations to show on the detail page
  config.detail_page_recommendations_count = 4

  # Number of recommendations to show in the personalized recommendations
  # content block
  config.personalized_recommendations_count = 4

  # Number of recommendations to show in transactional emails
  config.email_recommendations_count = 4

  # Number of recommendations to show on the cart
  config.cart_recommendations_count = 4

  # How many products show in a category summary content block
  config.category_summary_product_count = 4

  # How many products show in product insights content block
  config.product_insights_count = 4
end
