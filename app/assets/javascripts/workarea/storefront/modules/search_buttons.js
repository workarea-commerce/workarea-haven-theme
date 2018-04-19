/**
 * @namespace WORKAREA.searchButtons
 */
WORKAREA.registerModule('searchButtons', (function () {
    'use strict';

    var searchOpen = function() {
            return $('#search').hasClass('search--open');
        },

        closeSearch = function($search) {
            $search.removeClass('search--open');
        },

        openSearch = function ($search) {
            $search.addClass('search--open');
        },

        focusOnSearchInput = function ($search) {
            var $searchInput = $search.find('.text-box');
            $searchInput.trigger('focus');
        },

        searchButtonClicked = function() {
            var $search = $('#search');

            if (searchOpen()) {
                closeSearch($search);
            } else {
                openSearch($search);
                focusOnSearchInput($search);
            }
        },

        init = function ($scope) {
            $('[data-search-button]', $scope).on('click', searchButtonClicked);
        };

    return {
        init: init
    };
}()));
