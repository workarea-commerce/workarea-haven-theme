module Workarea
  Plugin.append_stylesheets(
    "storefront.settings",
    "workarea/storefront/settings/font_families",
  )

  Plugin.append_stylesheets(
    "storefront.tools",
    "workarea/storefront/tools/full_bleed_container"
  )

  Plugin.append_stylesheets(
    "storefront.components",
    "workarea/storefront/components/account_menu",
    "workarea/storefront/components/add_to_cart",
    "workarea/storefront/blog/components/blog_index",
    "workarea/storefront/components/checkout_confirmation",
    "workarea/storefront/components/color_box",
    "workarea/storefront/components/email_signup_view",
    "workarea/storefront/components/login",
    "workarea/storefront/components/order_details",
    "workarea/storefront/components/overlay",
    "workarea/storefront/components/product_media",
    "workarea/storefront/components/recommendations",
    "workarea/storefront/components/quantity_control",
    "workarea/storefront/components/search"
  )

  Plugin.append_stylesheets(
    "storefront.theme",
    "workarea/storefront/theme/style_guide"
  )

  Plugin.append_javascripts(
    "storefront.config",
    "workarea/storefront/haven_theme/config"
  )

  Plugin.append_javascripts(
    "storefront.dependencies",
    "jquery.payment",
    "polyfills/stickyfill"
  )

  Plugin.append_javascripts(
    "storefront.modules",
    "workarea/storefront/modules/expandable_filters",
    "workarea/storefront/modules/product_detail_tabs",
    "workarea/storefront/modules/quantity_control",
    "workarea/storefront/modules/search_buttons",
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

  Plugin.remove_partials(
    "storefront.cart_checkout_actions",
    "workarea/storefront/carts/shipping_message"
  )

  Plugin.remove_partials(
    "storefront.product_details",
    "workarea/storefront/products/reviews_aggregate"
  )

  Plugin.remove_partials(
    "storefront.product_description",
    "workarea/storefront/products/badges"
  )

  Plugin.remove_partials(
    "storefront.product_summary",
    "workarea/storefront/products/reviews_summary"
  )

  Plugin.remove_partials(
    "storefront.style_guide_product_summary",
    "workarea/storefront/style_guides/reviews_product_summary_docs"
  )

  Plugin.remove_partials(
    "storefront.product_description",
    "workarea/storefront/products/video_link"
  )
end
