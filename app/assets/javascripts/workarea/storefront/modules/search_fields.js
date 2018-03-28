/**
 * @namespace WORKAREA.searchFields
 */
WORKAREA.registerModule('searchFields', (function () {
    'use strict';

    var getSource = function (request, response) {
            var endpoint = WORKAREA.routes.storefront.searchesPath();

            $.getJSON(endpoint, { q: request.term }, function (data) {
                response(data.results);
            });
        },

        openSelected = function (event, ui) {
            if (ui.item.type === "Products") {
                WORKAREA.analytics.fireCallback(
                    'productClick',
                    ui.item.analytics
                );
            }

            if (WORKAREA.analytics.domEventsDisabled()) { return; }
            window.location = ui.item.url;
        },

        getConfig = function () {
            return _.assign({}, WORKAREA.config.searchFieldsAutocomplete, {
                source: getSource,
                select: openSelected,
                appendTo: '.search__results'
            });
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.searchFields
         */
        init = function ($scope) {
            $('[data-search-field]', $scope)
            .categorizedAutocomplete(getConfig());
        };

    return {
        init: init
    };
}()));
