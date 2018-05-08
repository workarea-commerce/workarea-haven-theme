/**
 * @namespace WORKAREA.productDetailTabs
 */
WORKAREA.registerModule('productDetailTabs', (function () {
    'use strict';

    var scrollToElement = function ($element) {
            $('html, body').animate({
                scrollTop: $element.offset().top - WORKAREA.config.productDetailTabs.topOffset
            }, WORKAREA.config.productDetailTabs.animationSpeed);
        },

        closeOverlay = function ($overlay) {
            $overlay.removeClass('product-detail-container__section--open-overlay');
        },

        openOverlay = function ($eventTarget) {
            $eventTarget.addClass('product-detail-container__section--open-overlay');
        },

        isMobile = function() {
            return WORKAREA.breakPoints.currentlyLessThan('medium');
        },

        handleCloseOverlayClick = function(event) {
            var $button = $(event.target),
            $overlay = $button.closest('.product-detail-container__section--open-overlay');

            closeOverlay($overlay);
        },

        handleClick = function(event) {
            var $targetElement = $(event.target.hash);

            if (_.isEmpty($targetElement)) { return; }

            event.preventDefault();

            if (isMobile()) {
                openOverlay($targetElement);
            } else {
                scrollToElement($targetElement);
            }
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.productDetailTabs
         */
        init = function ($scope) {
            $('[data-product-detail-tabs]', $scope).on('click', handleClick);
            $('[data-product-detail-tabs-close-overlay]', $scope).on('click', handleCloseOverlayClick);
        };

    return {
        init: init
    };
}()));
