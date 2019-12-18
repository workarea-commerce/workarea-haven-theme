Workarea Haven Theme 1.3.0 (2019-12-17)
--------------------------------------------------------------------------------

*   Upgrade to Workarea v3.5 & Friends

    HAVEN-2
    Curt Howard



Workarea Haven Theme 1.2.1 (2019-11-12)
--------------------------------------------------------------------------------

*   Fix scrolling issue around Reviews Drawer on mobile devices

    HAVEN-1
    Curt Howard

*   Set capybara to ignore whitespace for cetain system tests

    * Added cursor pointer to mobile filters close button for better UX

    HANVTHEME-186
    Jake Beresford

*   Add link to demo site in readme

    HAVNTHEME-185
    Jake Beresford

*   Upgrade for v3.4

    * Update CI scripts
    * Updates all relevant views etc. for v3.4 changes
    * Fix badge placement on product detail page
    * Fix tests and linting errors
    * Use styled select styleguide component from plugin, override in app is not needed

    HAVNTHEME-184
    Jake Beresford

*   Add screenshots to README

    * Adds screenshots of the theme to /public/screenshots dir
    * Adds a few screenshots to the README as examples of the theme

    HAVNTHEME-183
    Jake Beresford

*   Update implementation to account for swatches

    HAVNTHEME-182
    Jake Beresford

*   Implement styles for loading indicator

    * Make UI dialog transparent for loading dialogs
    * Adjust color and size of loading indicator

    HAVNTHEME-181
    Jake Beresford

*   Update implementation of quickview button

    * Centers quickview button on the product summary, preventing layout jump and misalignment
    * Remove redundant flex rules
    * Clean up hover state of product-summary by absolutely positioning the product-summary__divider, move append point outside of divider to allow for absolute positioning of appended components (quickview and badges)

    HAVNTHEME-182
    Jake Beresford

*   Add missing image and link to taxonomy content block

    HAVNTHEME-179
    Jake Beresford

*   Extend style_guide styles from base to include new color swatch for styleguide

    HAVNTHEME-177
    Jake Beresford

*   Update cart item counts to display total quantity to match site header.

    HAVNTHEME-178
    Jake Beresford

*   Configure plugin for new CI scripts

    * Add CI scripts and update gemfile for new CI
    * Update linting failures

    HAVNTHEME-180
    Jake Beresford

*   Add fonts stylesheet with dynamic importing based on configuration

    * This fixes an issue that prevented custom fonts being loaded in the themed storefront

    HAVNTHEME-176
    Jake Beresford

*   Styled back to top button to match the theme

    Added missing opengraph tage to blog_entry#show

    HAVNTHEME-41
    Jake Beresford

*   Add version requirements to dependencies in gemspec

    HAVNTHEME-175
    Jake Beresford

*   Close search UI on escape keypress

    HAVNTHEME-173
    Jake Beresford

*   Fixes bug with region field initialization - no default select value.

    HAVNTHEME-174
    Jake Beresford

*   Loosen version dependencies

    * Add config for hoverZoom v3
    * Fix incorrect class name in product/_media

    HAVNTHEME-174
    Jake Beresford

*   Bump version for v1.0.0 release

    Jake Beresford

*   Remove unnecessary test decoration

    HAVNTHEME-171
    Jake Beresford

*   Remove SKU from decorated analytics system test following change made to base

    HAVNTHEME-172
    Jake Beresford

*   Add required field indicator toggling to address region fields

    HAVNTHEME-171
    Jake Beresford

*   Fix issue where non-US states were not being populated as a select menu

    * address_region_fields was dependent on DOM order, changing the way we select region fields allows regions to be stored properly

    HAVNTHEME-171
    Jake Beresford

*   Adjust margins for blog entry summary tags to ensure they wrap nicely

    HAVNTHEME-84
    Jake Beresford

*   Add new color scheme

    * Adds Lagoon color scheme
    * Fix non functional color variables throughout the app
    * Add new functional color variables to improve skinnability
    * Make social icon styles consistent
    * Fix mis-alignment jump when animating share buttons
    * Hide original price ranges on product summary to prevent crazy height variations on browse

    HAVNTHEME-86
    Jake Beresford

*   Update dragonfly processors to lock height

    * Made Dragonfly processors more restrictive to prevent non-square images breaking layout
    * Update swatch & option button image processor

    HAVNTHEME-170
    Jake Beresford

*   Correct pricing for products which should display a range

    * Revert decision not to display price ranges, allow product data to determine what should be displayed

    HAVNTHEME-105
    Jake Beresford

*   Update styleguide

    * Update various styleguide components to reflect markup changes in the theme.
    * Increate negative Y offset of account menu to prevent it being shown when a user scrolls up beyond the top of the page in modern browsers

    HAVNTHEME-141
    Jake Beresford

*   Prevent table layout overflowing device window at smaller viewport widths

    HAVNTHEME-85
    Jake Beresford

*   Haven theme is not OneTheme

    HAVNTHEME-167
    Jake Beresford

*   Fix failing tests related to product videos and blog

    * Resolve TODOs throughout code, mostly related to v3.3
    * Lock down sassc version to allow CI to run without errors

    HAVNTHEME-167
    Jake Beresford

*   QA fixes

    * Move search autocomplete JS to storefront
    * Increase z-index for search to prevent other elements being interactable through the search overlay
    * Adjust styles to restrict width of products
    * Adjust padding of product names in search results

    HAVNTHEME-131
    Jake Beresford

*   Update based on QA feedback

    * Do not display price for $0 customizations
    * Allow product list items to wrap if necessary (customization price is present)
    * Move comment closer to footnote for easier understanding. Remove shorthand in favor of clearer styling and explaination.
    * Remove redundant styles

    HAVNTHEME-157
    Jake Beresford

*   Fix account addresses QA feedback

    * Reduce min width of data-card to prevent overlapping of grid__cells at smedium viewport widths
    * break-word on data-card__line to ensure weirdly long addresses and phone numbers do not overflow the data-card container

    HAVNTHEME-100
    Jake Beresford

*   Reduce heading size in footer

    HAVNTHEME-147
    Jake Beresford

*   Increase padding around breadcrumbs

    HAVNTHEME-116
    Jake Beresford

*   Reduce offset of .button__icon in the context of .button--small

    HAVNTHEME-150
    Jake Beresford

*   Imnplement design for featured entry content block

    * Content block uses blog entry summary partial
    * Implement a placeholder for blog summaries if no thumbnail is present
    * Configure blog entries on index
    * Change class to make featured entries double width

    HAVNTHEME-84
    Jake Beresford

*   Add %p tags to text in user dashboard view to get the layout looking nice

    HAVNTHEME-103
    Jake Beresford

*   * Add some padding to pagination, makes content search results look better

    HAVNTHEME-158
    Jake Beresford

*   Override pagination.scss from base

    HAVNTHEME-158
    Jake Beresford

*   Integrate Package products plugin

    * Update markup and styles for package product views
    * Update package cart item markup to match designs
    * Style family checkboxes to be inline and centered
    * Prevent duplicate ID issue on package products with swatches
    * Fix duplicate ID error when adding multiple family products to cart

    HAVNTHEME-164
    Jake Beresford

*   Search QA fixes

    * Prevent .page-layout collapsing when fewer than 4 products are displayed with an aside

    HAVNTHEME-158
    Jake Beresford

*   In grid content QA fixes

    * Set font-size 0 for .content-block--product-grid-cell in page-content to prevent grid being broken
    * Set font-size of product-grid-cell-content-block to 1 rem

    HAVNTHEME-134
    Jake Beresford

*   Utility nav QA fixes

    * Use orders/status route for the my orders link in the account dropdown

    HAVNTHEME-108
    Jake Beresford

*   Search - no results QA fixes

    * Do not center search form on no results pages

    HAVNTHEME-129
    Jake Beresford

*   * Remove pending items from order/details partial to reduce redundant information, all items are shown in order aside.

    HAVNTHEME-142
    Jake Beresford

*   Order confirmation QA fixes

    * Fix double bold styling on table totals
    * Adjust heading styles
    * Use negative margins to match order details information to designs without screwing up the layout

    HAVNTHEME-142
    Jake Beresford

*   remove required from region text-box

    HAVNTHEME-142
    Jake Beresford

*   Fix rubocop

    HAVNTHEME-148
    Jake Beresford

*   Browse page QA Feedback

    * Adjust secondary nav heading size down
    * Tweak padding values

    HAVNTHEME-148
    Jake Beresford

*   Quickview QA fixes

    * Prevent client side validation message overlapping in quickview
    * Update share buttons to center icons properly
    * Adjust style of verified purchaser text to match rest of review UI

    HAVNTHEME-153
    Jake Beresford

*   Update dragonfly processors for zoom

    HAVNTHEME-109
    Jake Beresford

*   * Add missing configuration for scrollToButtons

    HAVNTHEME-109
    Jake Beresford

*   Fix decorated test

    HAVNTHEME-140
    Jake Beresford

*   Left nav QA fixes

    * Fix bug with removing applied facets
    * Format applied price facets as currency
    * Titlize applied facet values to match regular facet UI
    * Prevent mobile filters overflowing their container
    * Remove workarea-accordions, replacing accordion with a custom expandable
    filters module. This allows multiple filter groups to be open at once
    * Combine filter_view_more module with new expandable_filters module
    * Simplify the JS by conditionally including the view more button in the view
    * use .erb for result filters to share configuration from application with Scss

    HAVNTHEME-140
    Jake Beresford

*   Update account dashboard styles based on QA

    * Hide heading
    * Add borders to .box and adjust padding
    * Give .data-card a background color instead of using a border to reduce nested borders

    HAVNTHEME-103
    Jake Beresford

*   Restrict width of order cards on order history view

    HAVNTHEME-137
    Jake Beresford

*   Correct haml indentation

    HAVNTHEME-138
    Jake Beresford

*   * Apply styles to order index view, styled to match login view

    HAVNTHEME-138
    Jake Beresford

*   Override orders index view from base

    HAVNTHEME-138
    Jake Beresford

*   Address region field text input is required

    HAVNTHEME-145
    Jake Beresford

*   * Hide styled selects in address region fields when necessary

    HAVNTHEME-145
    Jake Beresford

*   * Adjust error styling for styled selects to prevent invalid state being set prematurely

    HAVNTHEME-145
    Jake Beresford

*   Override address_region_fields from base

    HAVNTHEME-145
    Jake Beresford

*   Checkout step summary QA fixes

    * Make table__total bold
    * Switch order of price and QTY in checkout items
    * Increase padding between table total rows
    * Display all checkout summary sections on small devices
    * Update implementation of checkout progress dividers to be simple and not break layout
    * Increase width of checkout views
    * Update width of aside in checkout to prevent product-list__item wrapping and looking broken
    * Add promo code input to checkout summary except payments step
    * Add missing translations

    HAVNTHEME-127
    Jake Beresford

*   Remove find_asset_id proc, use existing method instead

    HAVNTHEME-144
    Jake Beresford

*   Checkout payment QA fixes

    * Prevent card icons breaking to new line on small viewports
    * Vertically align button property text everywhere

    HAVNTHEME-104
    Jake Beresford

*   Update markup for all user password views to match designs

    HAVNTHEME-161
    Jake Beresford

*   Override password views from base

    HAVNTHEME-161
    Jake Beresford

*   Login view QA updates

    * Add icons to inputs
    * Restrict width of login forms
    * Increase heading size
    * Increase button size

    HAVNTHEME-110
    Jake Beresford

*   Increase font-size of all text boxes to prevent zoom in on mobile devices

    HAVNTHEME-128
    Jake Beresford

*   Footer QA fixes

    * Add .value to email signup form to fix client side validation
    * Update footer grid cell classes to match designed layout on medium devices
    * Update font weight of all footer headings to bold
    * Update placeholder opacity to 1 for email signup
    * Update email signup UI to match designs (invert button colors, move border etc.)

    HAVNTHEME-128
    Jake Beresford

*   Header QA fixes

    * Fix cart SVG, icon was a compound path that needed to be expanded in AI
    * Change implementation of account menu z-indexes to ensure it's always above page content

    HAVNTHEME-126
    Jake Beresford

*   Update gift card template to match other product templates

    * Adjust styles for share button toggle button to ensure it's always round

    HAVNTHEME-166
    Jake Beresford

*   Override gift card product template

    HAVNTHEME-168
    Jake Beresford

*   Install email signup popup plugin

    * Install plugin and adjust styles and markup to match other areas of the site

    HAVNTHEME-27
    Jake Beresford

*   Implement blog entry page

    * Styles and markup for blog entry pages
    * Styles blog comments
    * Implement scroll_to_buttons for all write comment links
    * Add blog thumbnail image sizes to README
    * Remove thumbnail from blog show, use blog_header content area instead
    * Fix alignment of page aside for longer pages

    HAVNTHEME-80
    Jake Beresford

*   Update gemspec and gemfile to use workarea v3.3

    * Re-add gift cards integration
    * Fix many tests

    HAVNTHEME-163
    Jake Beresford

*   Move stickyfill to vendor

    HAVNTHEME-162
    Jake Beresford

*   Assorted visual QA fixes

    * Update width and height restrictions for product summary to be closer to designs in all contexts
    * Update color variables for product summary component
    * Update all font weights to use font weight variables from _typography.scss
    * Update implementation of primary nav/page header to prevent nav breaking to a new line on medium devices
    * Update layout and UI for write review dialog
    * Center remove item button in cart
    * Update color and margin for account menu header
    * Add padding to page-content__main
    * Update implementation of breadcrumbs to use classes and match padding to page content
    * Update badge styling to match designs more closely
    * Fix vertical alignment of logo on mobile
    * Remove borders from page header buttons up to wide layout
    * Adjust padding on cart count to match designs more closely
    * Add classes for breakpoint link and text where necessary
    * Update background color of mobile filters to match designs
    * Update ui-state-focused to use focus ring styles
    * Add border around white swatch facet to make it visible in all states
    * Update styles and markup for mobile filters to match designs more closely
    * Fix alignment of page content on pages without secondary nav, like search results
    * Add polyfill for display: sticky
    * Update selected state for primary nav
    * Add vertical margin between taxonomy links in primary navigation
    * Scope content block font size to .page__content to keep header and footer matching designs properly
    * Make social networks content block items round to match share UI on products
    * Do not display product deatil description section heading in wide layout
    * Make PDP tab UI full bleed on mobile
    * Center product media primary image carousel
    * Update padding implementation for reviews aggregate to fix alignment when no reviews are present
    * Add margin above product prices on mobile PDP
    * Update add to cart dialog styles for mobile

    HAVNTHEME-162
    Jake Beresford

*   Override from workarea-reviews

    * new reviews view
    * write_review.scss component

    HAVNTHEME-162
    Jake Beresford

*   Update upcased headers to @extend %heading--upcase;

    HAVNTHEME-90
    Jake Beresford

*   Remove display flex from product summary

    * Unnecessary flex display was causing issue on IE11

    HAVNTHEME-94
    Jake Beresford

*   HAVNTHEME-44: Write a test for clearing filters

    Ashley Chapokas

*   Adjust display option for .value__option-group to prevent regression on vertical spacing in layout

    HAVNTHEME-96
    Jake Beresford

*   * Implement .value__option-group element to strip font size from container for option groups

    HAVNTHEME-96
    Jake Beresford

*   Change implementation to use .visually hidden

    * Dont use .hidden to hide inputs, unless you dont need validation.

    HAVNTHEME-96
    Jake Beresford

*   rubocop fixes

    Jake Beresford

*   Implement blog entry summary

    * Update markup and styles for blog entry summary
    * Add blog_index.scss and apply styles to blogs/index
    * Implement selected state for blog index tags
    * Implement dragonfly processor for blog thumbnail images

    HAVNTHEME-81
    Jake Beresford

*   Let's do 3 per row

    HAVNTHEME-82
    Jake Beresford

*   Point at git for blog in test to get latest headless chrome fixes

    HAVNTHEME-82
    Jake Beresford

*   * Implement flex based layout for blog index pages * Update blog navigation markup to match other secondary-nav on site

    HAVNTHEME-82
    Jake Beresford

*   Override blog index views and styles

    HAVNTHEME-82
    Jake Beresford

*   Add blog gem to theme

    HAVNTHEME-82
    Jake Beresford

*   Update styles and markup for no search results and recent views

    * Added missing translation
    * Use grid for layout
    * Update styles of recent views to match recommendations

    HAVNTHEME-36
    Jake Beresford

*   Overrides

    * searches/no_results view & sass
    * recent views show and sass

    HAVNTHEME-36
    Jake Beresford

*   Install and configure hover zoom plugin

    * Lock hover zoom down to latest major version to prevent breaking changes when hover zoom v3 is finally released

    HAVNTHEME-54
    Jake Beresford

*   Implement availability messaging styles

    * Update markup and placement of inventory status on PDP
    * Update markup and styles for clear selections link

    HAVNTHEME-51
    Jake Beresford

*   Implement content page designs

    * Remove margin-bottom from .page-content

    HAVNTHEME-85
    Jake Beresford

*   Style product option fields

    * Use hidden to properly hide inputs for swatch and thumbnail templates
    * Adjust option button styles to match designs
    * Ensure quantity control input value is visually centered

    HAVNTHEME-52
    Jake Beresford

*   Render product video thumbnails in primary image carousel

    HAVNTHEME-55
    Jake Beresford

*   Fix failing product video test

    HAVNTHEME-55
    Jake Beresford

*   Update markup for product videos on product/show view to match other sections (following change on another ticket)

    HAVNTHEME-55
    Jake Beresford

*   Change the product insights view model decorator to actually work

    HAVNTHEME-55
    Jake Beresford

*   Fixes sharing tests

    HAVNTHEME-55
    Jake Beresford

*   Fix decorator

    HAVNTHEME-55
    Jake Beresford

*   Implement product videos

    * Install product videos plugin
    * Add tab section on product/show if embedded videos are present
    * Add missing append point to media view partial
    * Move IDs of all tab sections to beginning for consistency and best practice
    * Update implementation of media to always display product video thumbnails, regardless of the number of alt images
    * Make video thumbnail play icon larger

    HAVNTHEME-55
    Jake Beresford

*   Implement reviews styles

    * Update markup for reviews to work with PDP layout
    * Style reviews according to designs
    * Override sort_by_property JST to apply styled-select markup
    * Change placement of reviews sort append to be more obvious and easier to style* Implement product-detail-container section markup
    * Update implementation of product details container section heading to allow for more complex headings (e.g with sort controls)
    * Update reviews UI for no reviews
    * Duplicate empty star and render that because tests are crazy and look at the SVG title

    HAVNTHEME-57
    Jake Beresford

*   Override product_reviews_sort_menus from workarea-reviews

    HAVNTHEME-57
    Jake Beresford

*   Override reviews sort_by_property jst

    HAVNTHEME-57
    Jake Beresford

*   Override reviews view and stylesheet from workarea-reviews

    HAVNTHEME-57
    Jake Beresford

*   Decorate failing test to fix build

    HAVNTHEME-88
    Jake Beresford

*   Update markup for email shares dialog to use grid for layout and change heading modifiers

    HAVNTHEME-88
    Jake Beresford

*   * Add borders to share icons to match share toggle button

    HAVNTHEME-88
    Jake Beresford

*   Improve focus state and open state styling of share button

    HAVNTHEME-88
    Jake Beresford

*   Clean up Sass indentation

    HAVNTHEME-88
    Jake Beresford

*   Implement Share UI on PDP

    * Share icons display/hide when 'share_button' is clicked
    * Tasty animation displays each social icon in sequence
    * Use toggle_class_button for JS - winning!

    HAVNTHEME-88
    Jake Beresford

*   Override share button views & stylesheet from workarea-share plugin

    HAVNTHEME-88
    Jake Beresford

*   Install workarea-share plugin

    HAVNTHEME
    Jake Beresford

*   Clean up variable alignment

    HAVNTHEME-58
    Jake Beresford

*   Reduce weight of read reviews link

    HAVNTHEME-58
    Jake Beresford

*   * Ensure product images are centered

    HAVNTHEME-58
    Jake Beresford

*   Implement half star and empty star styles per-design

    HAVNTHEME-58
    Jake Beresford

*   Override rating view and half star SVG

    HAVNTHEME-58
    Jake Beresford

*   Override rating stylesheet from workarea-reviews

    HAVNTHEME-58
    Jake Beresford

*   Implement styles for reviews aggregate UI

    * Removed write review link from aggregate
    * Update markup and styles
    * Restrict max width of product-details__header to ensure floated aggregate is well positioned.

    HAVNTHEME-58
    Jake Beresford

*   Override reviews aggregate view and stylesheet from workarea-reviews

    HAVNTHEME-58
    Jake Beresford

*   Implement product detail page images

    * Install workarea-slick_slider
    * Add configuration helper for PDP carousels
    * Update markup to use slick & display as carousel
    * Rename product_details_media to product_media and add styles
    * Update dragonfly processors for PDP images
    * Update product image sizes in README
    * Implement selected state for alt images
    * Update slick styles: arrow sizes, colors, and padding

    HAVNTHEME-49
    Jake Beresford

*   Implement styles for base content blocks

    * Override content block views and stylesheets from base
    * Adjust grid cell classes for product list and category summary block types
    * Add padding to quote content block
    * Configure counts for blocks that include products
    * Add a background-color-alternate color variable and clean up usage of $light-gray
    * Add full bleed option to all content blocks that include products
    * Adjust styles for all blockquotes
    * Update button style and size options for hero content block
    * General styling for all blocktypes

    HAVNTHEME-29
    Jake Beresford

*   fix indentation on generic template

    HAVNTHEME-50
    Jake Beresford

*   Implement quantity control on all product templates

    HAVNTHEME-50
    Jake Beresford

*   Update pricing styles for product details

    HAVNTHEME-48
    Jake Beresford

*   Adjust margins on product ID per design

    HAVNTHEME-47
    Jake Beresford

*   Update styles for product name and ID on PDP

    HAVNTHEME-47
    Jake Beresford

*   Implement styles for product name

    * Adjust markup

    HAVNTHEME-47
    Jake Beresford

*   Implement PDP layout

    * Update markup of all product templates to match design
    * Create _media partial for re-use in all product templates
    * Remove reviews summary from appends and manually render in correct position
    * Update recommendations markup on PDP
    * Remove personalized recommendations from PDP
    * Implement layout for desktop and mobile PDP
    * Break media out to a separate component & partial (unchanged from base)
    * Add layout styles to product pricing on details pages
    * Style swatches on PDP according to design
    * Added option-button--color modifier
    * Add custom dragonfly processor for swatch images
    * Render product details as key/value pairs on PDP
    * Implement a new JS module for PDP tabs/overlay UI
    * Add styles to product detail container
    * Remove redundant styleguide icons helper
    * Remove review stars from product summary per design
    * Add global variable for product image ratio
    * Bump workare commit sha to include recent changes, and relevant partials for reviews plugin tests

    HAVNTHEME-46
    Jake Beresford

*   Add variable for border

    HAVNTHEME-79
    Jake Beresford

*   Update order details pages to match designs

    * Add page-content markup to create layout
    * Added new modifiers needed for page-content
    * Update order/details partial markup to follow updated product-list__item structure
    * Move the track package action to .box__action

    HAVNTHEME-79
    Jake Beresford

*   Implement checkout order confirmation

    * Split orders/summary into order/details and order/summary to allow rendering in split column layout
    * Update markup to use product-list__item structure
    * Update optional field button to use button--small
    * Update markup and styles of related components
    * Update checkout layout to use page-content classes for layout, removing avalanche grid classes
    * Override saved addresses JST and apply markup styled selects

    HAVNTHEME-75
    Jake Beresford

*   Fixes to swatch facet UI

    * Update swatch facet heading text and add missing classes
    * Prevent .result-filters__attribute:after being absolutely positioned

    HAVNTHEME-91
    Jake Beresford

*   Update product seed data to use color names from swatches and swatch template

    HAVNTHEME-91
    Jake Beresford

*   Implement swatches

    * Install workarea-swatches plugin
    * Remove clothing from gemspec due to incompatibility with swatches plugin
    * Override swatches markup & update per-designs
    * Update swatch styling
    * Restrict the number of swatches to display on browse, display a truncated icon after 3 swatches
    * Update styles for quickview button to align with swatches when present
    * Change flex implementation of all facets to prevent weirdness with space-between
    * Add swatch display to applied filters UI
    * Tweak applied filters styles & markup

    HAVNTHEME-91
    Jake Beresford

*   Update user account dialogs

    * Update markup for all account dialogs to use avalanche grid for layout
    * Use heading classes and modifiers to style account dialog headings
    * Middle align account dialog buttons
    * Attach class modifier to add to cart dialogs to remove padding
    * Add padding back to dialog content, add class to remove padding for add to cart dialog

    HAVNTHEME-77
    Jake Beresford

*   Override new product template views ready for development

    Jake Beresford

*   Implement added to cart dialog designs

    * Re-structure markup & apply styles
    * Add new add_to_cart component for styling
    * Add recommendations.scss component and allow for --vertical modifier
    * Add cart count to add to cart dialog
    * Global dialog styles
    * Integrate shipping message plugin
    * Update placement of free shipping message on cart/show
    * Render shipping message in add to cart dialog
    * Add padding below cart
    * Update product summary to use padding rather than widths for info section, allowing them to expand as necessary when product summaries are wider (e.g. in recommendations)

    HAVNTHEME-63
    Jake Beresford

*   Update order history page for theme

    * Add heading class modifiers to h1 on order history to match rest of account section

    HAVNTHEME-78
    Jake Beresford

*   Override user orders index from base

    HAVNTHEME-78
    Jake Beresford

*   Implement styling for account dashboard

    * Added heading--uppercase modifier with placeholder class
    * Updated recommendations markup to use existing styles
    * Move append point for account menu dropdown

    HAVNTHEME-76
    Jake Beresford

*   Implement product list item

    * Add quantity control component & js module
    * Override and update styleguide component for product list
    * Update markup of product list item in cart
    * Style product list
    * Styling product prices in cart including discounts and all that good stuff
    * Update products in checkout summary to use product-list__item, get rid of the custom .order-item component

    HAVNTHEME-59
    Jake Beresford

*   Make promo code heading smaller

    HAVNTHEME-66
    Jake Beresford

*   Fix promo code form markup

    HAVNTHEME-66
    Jake Beresford

*   Update optional field styles to use button--secondary with an icon

    HAVNTHEME-66
    Jake Beresford

*   Override optional field JST

    HAVNTHEME-66
    Jake Beresford

*   Add tests for cart content

    HAVNTHEME-67
    Jake Beresford

*   Update implementation of cart content to use a new system page, rather than appending to layout

    HAVNTHEME-67
    Jake Beresford

*   Add content area to cart page

    HAVNTHEME-67
    Jake Beresford

*   Implement Checkout payment

    * Use grid to create layout for new card fields
    * Update markup to reflect designs
    * Update translations
    * Install jquery-payment dependency via gem
    * Override checkout_primary_payments.js from storefront & implement jquery payment functionality
    * Add card type detection, CVV validation, and card number formatting to new card UI
    * Override button_property.scss from storefront
    * Add some padding around button property text
    * Install and style workarea-gift_cards
    * Update promo code UI
    * Add value--with-button modifier
    * Add focus and invalid state styling to styled select menus
    * Point workarea at master, locked down to a seemingly stable commit SHA for v3.3
    * Resolve test failures relating to v3.3 and headless chrome
    * Remove SKU from storefront checkout assertions
    * comment out credit card type assertion on order confirmation with TODO for future ticket.

    HAVNTHEME-74
    Jake Beresford

*   Update gemfile to point at stash SHA - hopefully fixing tests

    HAVNTHEME-64
    Jake Beresford

*   * Update styles and layout of recommendations component * Add background to product summary

    HAVNTHEME-93
    Jake Beresford

*   Implement recommendations

    * Configure all recommendations to display 4 products

    HAVNTHEME-93
    Jake Beresford

*   Override recommendations view and stylesheet from base

    HAVNTHEME-93
    Jake Beresford

*   Update styles for empty cart view

    * Add modifier for cart--empty
    * Style empty cart

    HAVNTHEME-64
    Jake Beresford

*   cart actions are full width on mobile

    HAVNTHEME-60
    Jake Beresford

*   Make checkout buttons full width, but restrict the width of actions.

    HAVNTHEME-60
    Jake Beresford

*   * General styling for cart page

    HAVNTHEME-60
    Jake Beresford

*   * Update cart view markup to match designs * Add some basic styles * Add translation for cart items count text

    HAVNTHEME-60
    Jake Beresford

*   Override cart/show and cart.scss from base

    HAVNTHEME-60
    Jake Beresford

*   Move _badges.scss to correct path following name change on the plugin

    HAVNTHEME-92
    Jake Beresford

*   Ensure that every product has details in sample data

    HAVNTHEME-7
    Jeff Yucis

*   * Move global promo messaging out of sticky header

    HAVNTHEME-68
    Jake Beresford

*   * Add login Sass component * Update markup and styles to match designs

    HAVNTHEME-68
    Jake Beresford

*   Override login view from base

    HAVNTHEME-68
    Jake Beresford

*   Implement checkout summary

    * Add cart items to checkout summary
    * Add order item component. This will probably become .product-list__item
    * Update markup of products in checkout to match design
    * Adjust layout and styles of checkout summary
    * Override base table styles & tweak styles per design
    * Update checkout section heading styles
    * Style checkout step summaries according to current designs

    HAVNTHEME-71
    Jake Beresford

*   Checkout shipping step

    * Update shipping step heading to match designs
    * Add styles for radio buttons

    HAVNTHEME-73
    Jake Beresford

*   Checkout - addresses

    * Override & Style checkout address view and components
    * Add styles for checkboxes
    * Restrict width of main checkout area per design
    * Update spacing & layout of addresses view of checkout to match design
    * Update checkout action button translations to match step names
    * Add missing checkout icons
    * Adjust margins and positioning for checkout progress, addresses, and page content

    HAVNTHEME-72
    Jake Beresford

*   Sample data with images

    Commit adds rake task for running Haven theme specific data. Rake file
    accounts for various plugins installed and tries to simulate a sampling
    of data for better variety when viewing products.

    HAVNTHEME-7
    Jeff Yucis

*   Sample data with images

    Commit adds rake task for running Haven theme specific data. Rake file
    accounts for various plugins installed and tries to simulate a sampling
    of data for better variety when viewing products.

    HAVNTHEME-7
    Jeff Yucis

*   rubocop no changelog

    Jake Beresford

*   Update checkout steps UI according to designs

    HAVNTHEME-70
    Jake Beresford

*   Override checkout_progress view and stylesheet

    HAVNTHEME-70
    Jake Beresford

*   revert last test push

    Jake Beresford

*   test push

    Jake Beresford

*   Update checkout layout

    * Update layout of checkout template per designs
    * Add value--block modifier for full-width inputs within grid layouts
    * Update copyright messaging
    * Override shared address fields & update layout
    * Add missing helper method to fix tests
    * Comment out PO BOX condition until v3.3 is released to fix tests
    * update design of styled selects to match new designs

    HAVNTHEME-69
    Jake Beresford

*   Cleanup implementation of .button--secondary-alt modifier to extend button--secondary

    HAVNTHEME-39
    Jake Beresford

*   Install & configure product grid content plugin

    * Configure grid cell widths
    * Add append point for in grid content to browse & search
    * Override blocktype definition, add new link types, text color, and subheading fields
    * Fix content button styles
    * Add new button options to product grid content blocktype
    * Add text color and sub heading to blocktype definition
    * Adjust styles & markup to be closer to designs
    * Add default images for content blocks
    * Update readme with optimum image sizes and plugin support

    HAVNTHEME-39
    Jake Beresford

*   Implement site search UI

    * Search is no longer part of page-heading
    * Create a JS module to open and close search
    * Search field gets focus when search UI is opened
    * Search results appended to .search__results DOM element
    * Add styles to site search, and search results, and other search components
    * Use flexbox for search autocomplete layout
    * Update markup for jquery UI changes
    * Add styles for selected menu items using new .ui-state-active class
    * Configure number of search results for autocomplete to 4
    * Add content search, override view and style according to design

    HAVNTHEME-21
    Jake Beresford

*   Fix build - add path to workarea-badges in gemfile

    HAVNTHEME-89
    Jake Beresford

*   Integrate with workarea-badges

    * Adds badges plugin
    * Style badges according to designs

    HAVENTHEME-89
    Jake Beresford

*   HAVNTHEME-44: Replaces extended button alignment properties with result-filters__group

    Ashley Chapokas

*   HAVNTHEME-44: Adds clear button that resets filters on both search/category pages

    Ashley Chapokas

*   Creates a helper method that maps facet key value pairs. Appropriate heading and alignment styles have been applies. Enhances mobile drawer by updating alignment and treatment of close button.

    * Refactors filter JS. Includes a new class to hide nth filters. Toggles class under certain params
    * Creates a helper method that maps a facets key value pair. Includes background color and appropriate heading treatments
    * Updates two methods in search_system_test that click element
    * A few updates didn't make it over in rebase. This commit resolves that
    * Overrides mobile filters jst, removes button element and classes. Replaces button with svg. Updates categories/search decorator to click on text since it's no longer a button
    * Applies applied filters classes to search
    *  adds sleep 1.second to test. There are two click events that happen, one after the other, we need to include this line to give capybara a chance to catch up
    * Moves @category.filters.any above results filters

    HAVNTHENE-43
    Ashley Chapokas

*   Update styling of taxonomy content blocks in the footer

    HAVNTHEME-25
    Jake Beresford

*   HAVNTHEME-43: Remove xpath in tests and searches for text by class

    Ashley Chapokas

*   HAVNTHEME-42: Builds filterViewMore module to toggle visibility of filters that exceed the maximum configuration

    Ashley Chapokas

*   HAVNTHEME-42: Includes filter.js which is still a work in progress overall. Updated class structure to be less abstracted, and more clear

    Ashley Chapokas

*   HAVNTHEME-42: appends haven theme javascript configurations. Updates accordion options to maintain individual heights

    Ashley Chapokas

*   HAVNTHEME-42: Introduces additional page-aside classes for abstraction purposes

    Ashley Chapokas

*   Applies appropriate abstraction for page-aside components. Removes the grid structure for page-aside and main content areas, and replaces it with table layout to allow page-aside to maintain full height. Creates filterViewMore that toggles filters if the exceed 7 options. Includes accordion gem for filter values

    * Introduces additional page-aside classes for abstraction purposes
    * Overrides drawer and includes additional div so that outer container can span full width for styling purposes
    * appends haven theme javascript configurations. Updates accordion options to maintain individual heights
    * Removes grid from application layout and replaced it with table. Aside needs to maintain full height of it's sibling, grid does not support this design requirement
    * Swaps aside and main content and removes directional table styles
    * Includes filter.js which is still a work in progress overall. Updated class structure to be less abstracted, and more clear
    * Builds filterViewMore module to toggle visibility of filters that exceed the maximum configuration
    * Updates test decorators, includes new svg class
    * Updates tests to click on class that contains certain text. Refactors JS to use a modifier class to target the nth child in list items
    * Refactors JS to return the filter button based on a classes prescense
    * Removes filter markup.
    * Adds additional padding around filter name values
    * Interactive rebase to resolve conflicts in stylesheets

    HAVNTHEME-42
    Ashley Chapokas

*   Fix related test failure and remove debugging from other decorated tests

    HAVNTHEME-18
    Jake Beresford

*   Fix Scss linting issues & related test fails

    HAVNTHEME-18
    Jake Beresford

*   Rubocop fix

    Jake Beresford

*   * Update styles to use font weight variables * Update font weight variables to match weight names in sketch/poppins fontface definitions

    HAVNTHEME-18
    Jake Beresford

*   Style mobile navigation

    * Add overlay behind mobile nav
    * Add slide-in transition for mobile nav
    * Style top-level mobile navigation links
    * Style taxonomy content blocks for mobile-nav context
    * Style & position close button
    * Add styles and update markup for mobile nav 'back' UI
    * Add mobile nav close button to child menus
    * Add link to @menu.taxon from a @menu child nav

    HAVNTHEME-18
    Jake Beresford

*   Updates product summary grid in mobile/tablet/desktop breakpoints. Adjusts filter mobile button breakpoint to hide aside navigation for tablet> breakpoints. Adds processors for various breakpoints, and adjusts product summary media to use picture/srcet. Adds letter-spacing on a global level for paragraph text

    * Include product summary desktop font treatments
    * Updates grid layout for tablet devices. Hides page-content__aside on medium> breakpoints. Updates visibility classes on mobile filters to ensure that they initialize at medium
    * Includes processors for mobile/desktop retina images. Creates a helper to handle the processing of images for product summary
    * Extends filter breakpoints for search show page
    * Remove product label class, and updates vertical alignment for all product name classes. Updates variable structure for product summary
    * Sets letter spacing on a more global level. Removes from components and adding to link, p, blockquote, button
    * Updates tests to ensure that price scale is not present
    * Corrects naming conventions for product_system_test

    HAVNTHEME-33
    Ashley Chapokas

*   Updates dragonfly processor to crop if image is larger than 232x232. Reincludes another grid-cell class for wide and medium breakpoints to ensure that layout is not cramped. Includes variables where appropriate.

    *Extends grid cell classes to search

    *Updates ratio to 1

    *Updates the width of product summary media to adhere to image width contraints

    *Includes retina process

    HAVNTHEME-34
    Ashley Chapokas

*   Update the styling for breadcrumbs. Include a border above and below breadcrumbs, and adds appropriate font treatment. Update logic pattern for breadcrumbs to allow for span tag for font treatment and alignment purposes. Removes the content wrapper and slated width to the breadcrumb node to allow for a full width border.

    * Updates the styling of breadcrumbs. Includes border above and below breadcrumbs, adds appropriate font treatment. Removes content-wrapper, as the border must be full width. Moves max-width to breadcrumbs_node-group. Updates breadcrumbs logic to include span on non linkable breadcrumbs for verical alignment

    * Creates functional var for breadcrumb content. Update letter spacing to use px instead of ems

    HAVNTHEME-16
    Ashley Chapokas

*   Updates layout for search/category browse pages per the HAVN design mockup. Duplicates sort and includes inside of the mobile drawer. Includes some inital styling updates for product summary, secondary navigation. Uses the grid to rearrange the heading and sort layout.

    * Includes dragonfly initalizer to update thumb size for product summary
    * Updates global width for content-wrapper to ensure that breadcrumbs and other global items line up properly
    * Duplicates sort and include inside of the mobile drawer
    * Includes secondary navigation styles. In particular a border that indicates the active category

    HAVNTHEME-35
    Ashley Chapokas

*   Overrides files for upcoming sprint work

    * Overrides browse and search views, filter partials, and relevant stylesheets

    HAVNTHEME-35
    Ashley Chapokas

*   Override styled select styleguide partial to fix duplicate ID

    HAVNTHEME-17
    Jake Beresford

*   Fix the label

    HAVNTHEME-26
    Jake Beresford

*   Implement email signup form styles

    * Create reusable partial for email signup form
    * Remove page-footer__email-signup styles, this is a separate component now
    * Styles email signup form according to designs
    * Add some basic colors to email-signup-view, a separate ticket will style the email signup popup

    HAVNTHEME-26
    Jake Beresford

*   Override email_signups/show

    HAVNTHEME-26
    Jake Beresford

*   Use variable for primary nav link border

    HAVNTHEME-17
    Jake Beresford

*   Style primary navigation

    * Style primary nav links & link items
    * Remove relative positioning, dropdown should be relative to page-header
    * Primary navigation heading styles
    * Add basic styles to primary nav dropdown through taxonomy content blocks, more to come in a later ticket.
    * Fix regression with account menu positioning

    HAVNTHEME-17
    Jake Beresford

*   Footer layout and styles

    * Restructure footer markup to match design
    * Add new content areas for footer columns with fresh seed data
    * Add modifier to remove margin from .text components
    * Style the copyright section of footer
    * Style links in footer

    HAVENTHEME-24
    Jake Beresford

*   Override taxonomy content blocks and stylesheets

    HAVNTHEME-17
    Jake Beresford

*   Inputs and form controls

    * Implement basic form control styles
    * Add validation states for all input types
    * Add value__icon and relevant styles, including stateful styles
    * Add secondary text-box styles for use in footer
    * Update styleguide with value__icon examples
    * Install styled select plugin & customize

    HAVNTHEME-13
    Jake Beresford

*   Logo and mobile header tweaks

    * Adds a new breakpoint for smedium devices
    * Add Logo
    * Add generic workarea favicon to storefront

    HAVNTHEME-14
    Jake Beresford

*   Overrides base input stylesheets and markup

    Jake Beresford

*   Site header

    * Implement design of page header using flexbox
    * Add icons for buttons in page header
    * Implement drop-down menu for account-menu
    * Add toggle_class_button js module for use with account header dropdown
    * Account menu is a component, not an element of page-header
    * Add user-specific welcome messaging via JS
    * Add user first name to current_user
    * Header is sticky with offset for admin toolbar.
    * Add translations
    * Update README with boilerplate from OneTheme and specifics re. browser support.
    * Unrelated - Fix button color on hover
    * Add pry to the gemfile for developer joy

    HAVNTHEME-15
    Jake Beresford

*   * Update SVG icon component to use font-size as base unit

    HAVNTHEME-23
    Jake Beresford

*   Implement icons

    * Add all icon svgs
    * Clean all defs, IDs, and classes from SVG files
    * Update _svg_icon Sass component with adjusted size values and new modifiers
    * Update style_guide_icons to render icons from an installed theme
    * Update styleguide with new icon colors

    HAVNTHEME-23
    Jake Beresford

*   Overrides

    Jake Beresford

*   * Add styleguide section for link--with-arrow

    HAVNTHEME-12
    Jake Beresford

*   Style button component

    * Update .button styles
    * Add .button--secondary modifier and button__icon
    * Added link--with-arrow modifier, adding a pseudo element to every link was a bad idea
    * Add new modifiers to styleguide
    * Add long arrow icon

    HAVNTHEME-12
    Jake Beresford

*   Override button component from base

    HAVNTHEME-12
    Jake Beresford

*   Implement Haven color scheme based on designs

    * Update styleguide colors to include functional variables and theme colors

    HAVNTHEME-11
    Jake Beresford

*   Pr updates

    * Font names use underscore instead of dash
    * Font definitions on new lines

    HAVNTHEME-10
    Jake Beresford

*   Implement Typography

    * Add custom fonts
    * Allow fonts to be configured in theme.rb
    * Implement responsive heading sizes
    * Font size and letter spacing
    * Update link styles
    * Render fonts in the styleguide

    HAVNTHEME-10
    Jake Beresford

*   rubocop fixes

    Jake Beresford

*   add missing require

    HAVENTHEME-2
    Jake Beresford

*   Remove browserslistrc file.

    F.M. Bonnevier

*   Add browserslist

    F.M. Bonnevier

*   Add browserlist config

    HAVNTHEME-2
    Jake Beresford

*   Setup theme project for development

    HAVNTHEME-2
    Jake Beresford



Workarea Haven Theme 1.2.0 (2019-04-02)
--------------------------------------------------------------------------------

*   Upgrade for v3.4

    * Update CI scripts
    * Updates all relevant views etc. for v3.4 changes
    * Fix badge placement on product detail page
    * Fix tests and linting errors
    * Use styled select styleguide component from plugin, override in app is not needed

    HAVNTHEME-184
    Jake Beresford



Workarea Haven Theme 1.1.0 (2019-02-19)
--------------------------------------------------------------------------------

*   Add screenshots to README

    * Adds screenshots of the theme to /public/screenshots dir
    * Adds a few screenshots to the README as examples of the theme

    HAVNTHEME-183
    Jake Beresford

*   Update implementation to account for swatches

    HAVNTHEME-182
    Jake Beresford

*   Implement styles for loading indicator

    * Make UI dialog transparent for loading dialogs
    * Adjust color and size of loading indicator

    HAVNTHEME-181
    Jake Beresford

*   Update implementation of quickview button

    * Centers quickview button on the product summary, preventing layout jump and misalignment
    * Remove redundant flex rules
    * Clean up hover state of product-summary by absolutely positioning the product-summary__divider, move append point outside of divider to allow for absolute positioning of appended components (quickview and badges)

    HAVNTHEME-182
    Jake Beresford



Workarea Haven Theme 1.0.3 (2019-02-05)
--------------------------------------------------------------------------------

*   Add missing image and link to taxonomy content block

    HAVNTHEME-179
    Jake Beresford

*   Extend style_guide styles from base to include new color swatch for styleguide

    HAVNTHEME-177
    Jake Beresford

*   Update cart item counts to display total quantity to match site header.

    HAVNTHEME-178
    Jake Beresford

*   Configure plugin for new CI scripts

    * Add CI scripts and update gemfile for new CI
    * Update linting failures

    HAVNTHEME-180
    Jake Beresford



Workarea Haven Theme 1.0.2 (2018-11-28)
--------------------------------------------------------------------------------

*   Add fonts stylesheet with dynamic importing based on configuration

    * This fixes an issue that prevented custom fonts being loaded in the themed storefront

    HAVNTHEME-176
    Jake Beresford



Workarea Haven Theme 1.0.2 (2018-11-28)
--------------------------------------------------------------------------------

*   Add fonts stylesheet with dynamic importing based on configuration

    * This fixes an issue that prevented custom fonts being loaded in the themed storefront

    HAVNTHEME-176
    Jake Beresford



Workarea Haven Theme 1.0.1 (2018-10-30)
--------------------------------------------------------------------------------

*   Styled back to top button to match the theme

    Added missing opengraph tage to blog_entry#show

    HAVNTHEME-41
    Jake Beresford

*   Add version requirements to dependencies in gemspec

    HAVNTHEME-175
    Jake Beresford

*   Close search UI on escape keypress

    HAVNTHEME-173
    Jake Beresford

*   Fixes bug with region field initialization - no default select value.

    HAVNTHEME-174
    Jake Beresford

*   Loosen version dependencies

    * Add config for hoverZoom v3
    * Fix incorrect class name in product/_media

    HAVNTHEME-174
    Jake Beresford



Workarea Haven Theme 1.0.0 (2018-07-24)
--------------------------------------------------------------------------------
