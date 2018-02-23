module Workarea
  Plugin.append_stylesheets(
    "storefront.settings",
    "workarea/storefront/settings/font_families",
  )

  Plugin.append_stylesheets(
    "storefront.components",
    "workarea/storefront/components/color_box",
    "workarea/storefront/components/account_menu"
  )

  Plugin.append_javascripts(
    "storefront.modules",
    "workarea/storefront/modules/toggle_class_button",
    "workarea/storefront/modules/user_welcome_placeholder"
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
