require "test_helper"

module Workarea
  module Storefront
    class SearchAutocompleteAnalyticsSystemTest < Workarea::SystemTest
      include Storefront::SystemTest
      def test_announcing_product_click_event_search_type_ahead
        products = [
         create_product(
           id: 'PROD1',
           name: 'Test Product 1',
           variants: [{ sku: 'SKU1', regular: 10.to_m }],
           filters: { 'Size' => 'Medium', 'Color' => 'Blue' }
           ),
         create_product(
           id: 'PROD2',
           name: 'Test Product 2',
           variants: [{ sku: 'SKU2', regular: 12.to_m }],
           filters: {
             'Size' => ['Medium', 'Small'],
             'Color' => ['Blue', 'Green']
           }
           )
       ]

       products.each { |p| Search::Storefront::Product.new(p).save }
       visit storefront.root_path
       disable_analytics_dom_events

       page.evaluate_script('$("#storefront_search").categorizedAutocomplete("search", "test");')

       find('[data-search-button].page-header__button--mobile-hidden').click

       find('li', text: 'Test Product 1').click

       events = find_analytics_events(for_event: 'productClick')
       assert_equal(1, events.count)
       payload = events.first['arguments'].first

       assert_equal('PROD1', payload['id'])
       assert_equal('Test Product 1', payload['name'])
       assert_equal(false, payload['sale'])
       assert_equal(10, payload['price'])
     end
   end
 end
end
