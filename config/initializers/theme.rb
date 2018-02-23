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
end
