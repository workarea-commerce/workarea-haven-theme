/**
 * @namespace WORKAREA.expandableFilters
 */
WORKAREA.registerModule('expandableFilters', (function () {
    'use strict';

    var isTruncated = function ($group) {
            return $group.hasClass('result-filters__group--truncated');
        },

        toggleTruncated = function (event) {
            var $button = $(event.currentTarget),
                $group = $button.siblings('.result-filters__group');

            if (isTruncated($group)) {
                $group.removeClass('result-filters__group--truncated');
                $button.text(I18n.t('workarea.storefront.filters.view_less'));
            } else {
                $group.addClass('result-filters__group--truncated');
                $button.text(I18n.t('workarea.storefront.filters.view_more'));
            }
        },

        toggleFilterGroupClosed = function($group) {
            $group.toggleClass('result-filters__container--closed');
        },

        setupGroup = function(index, group) {
            var $group = $(group),
                $heading = $('.result-filters__attribute', $group),
                $viewMoreButton = $('.result-filters__view-more-button', $group);

            if (index > 0) { // First filter group is expanded by default
                toggleFilterGroupClosed($group);
            }

            $heading.on('click', _.partial(toggleFilterGroupClosed, $group));
            $viewMoreButton.on('click', toggleTruncated);
        },

        init = function ($scope) {
            $('[data-expandable-filters]', $scope)
                .find('.result-filters__container')
                .each(setupGroup);
        };

    return {
        init: init
    };
}()));
