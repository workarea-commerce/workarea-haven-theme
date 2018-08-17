/**
 * @namespace WORKAREA.searchButtons
 */
WORKAREA.registerModule('searchButtons', (function () {
    'use strict';

    var searchOpen = function ($search) {
            return $search.hasClass('search--open');
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

        closeSearchIfOpen = function () {
            var $search = $('#search');

            if (searchOpen($search)) {
                closeSearch($search);
            }
        },

        searchButtonClicked = function() {
            var $search = $('#search');

            if (searchOpen($search)) {
                closeSearch($search);
            } else {
                openSearch($search);
                focusOnSearchInput($search);
            }
        },

        init = function ($scope) {
            $('[data-search-button]', $scope).on('click', searchButtonClicked);
        };

    $(document).keyup(function (e) {
        if (e.keyCode == 27) { // escape key maps to keycode `27`
            closeSearchIfOpen();
        }
    });

    return {
        init: init
    };
}()));
