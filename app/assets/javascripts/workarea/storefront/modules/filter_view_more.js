/**
 * @namespace WORKAREA.filterViewMore
 */
WORKAREA.registerModule('filterViewMore', (function () {
    'use strict';

    var isTruncated = function($group){
            return $group.hasClass('result-filters__group--truncated');
        },

        toggleTruncation = function(event) {
            var $button = $(event.currentTarget),
                $section = $button.closest('.result-filters__section'),
                $group = $section.find('.result-filters__group');

            if ( isTruncated($group) ) {
                $group.removeClass("result-filters__group--truncated")
                $button
                    .text(I18n.t('workarea.storefront.filters.view_less'))
                    .addClass('result-filters__view-more-button--expanded');

            } else {
                $group.addClass('result-filters__group--truncated')
                $button
                    .text(I18n.t('workarea.storefront.filters.view_more'))
                    .removeClass('result-filters__view-more-button--expanded')
            }
        },

        appendText = function($group, index) {
            var $filterItems = $($group[index]).children(),
                filtersMax = WORKAREA.config.maximumFilterCount;

            if( $filterItems.length > filtersMax) {
                var $append = $('<p class="result-filters__view-more-button"></p>');
                    $append.text(I18n.t('workarea.storefront.filters.view_more'));

                    $append.insertAfter($group[index])

                    $append.on('click', toggleTruncation)
            }
        },

        init = function ($scope) {
            var $filter = $('[data-filter-view-more]', $scope),
                $group = $filter.find('.result-filters__group');

            $group.each(function(index){
                appendText($group, index)
            });
        };

    return {
        init: init
    };
}()));
