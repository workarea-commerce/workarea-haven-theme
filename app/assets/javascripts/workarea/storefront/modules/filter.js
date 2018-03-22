/**
 * @namespace WORKAREA.filter
 */
WORKAREA.registerModule('filter', (function () {
    'use strict';
        var test = function() {},

        init = function ($scope) {
            var $group = $('[data-filter]', $scope),
                $groupSection = $group.find('.result-filters__group');


                $groupSection.each(function(index){
                    var $groupItems = $(this).children(),
                        groupItemsMax = WORKAREA.config.maximumFilterCount;

                    if( $groupItems.length > groupItemsMax ){
                        var $remainder = $groupItems.length - groupItemsMax;

                        console.log($groupItems)
                        console.log($remainder)
                    }
                });
        };

    return {
        init: init
    };
}()));
