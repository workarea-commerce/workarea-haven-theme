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
