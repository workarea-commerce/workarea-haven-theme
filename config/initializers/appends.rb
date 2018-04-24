module Workarea
  Plugin.append_stylesheets(
    "storefront.settings",
    "workarea/storefront/settings/font_families",
  )

  Plugin.append_stylesheets(
    "storefront.components",
    "workarea/storefront/components/account_menu",
    "workarea/storefront/components/color_box",
    "workarea/storefront/components/email_signup_view",
    "workarea/storefront/components/login",
    "workarea/storefront/components/overlay",
    "workarea/storefront/components/search"
  )

  Plugin.append_javascripts(
    "storefront.config",
    "workarea/storefront/haven_theme/config"
  )

  Plugin.append_javascripts(
    "storefront.modules",
    "workarea/storefront/modules/filter_view_more",
    "workarea/storefront/modules/toggle_class_button",
    "workarea/storefront/modules/user_welcome_placeholder",
    "workarea/storefront/modules/search_buttons"
  )

  Plugin.append_javascripts(
    "storefront.templates",
    "workarea/storefront/templates/user_welcome"
  )

  Plugin.append_partials(
    "storefront.current_user",
    "workarea/storefront/users/haven_current_user"
  )
end
