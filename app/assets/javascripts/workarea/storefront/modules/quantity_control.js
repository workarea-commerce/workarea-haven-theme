/**
 * @namespace WORKAREA.quantityControl
 */
WORKAREA.registerModule('quantityControl', (function () {
    'use strict';

    var handleQtyEvent = function (event) {
            var $button = $(event.currentTarget),
                data = $button.data('quantityControl'),
                $qtyInput = $button.closest('form').find('.quantity-control__input'),
                currentQty = parseInt($qtyInput.val()),
                changeDirection = data.direction,
                autoSubmit = data.autosubmit || false;

            event.preventDefault();

            updateQty($qtyInput, calculateQty(currentQty, changeDirection));

            if(autoSubmit) {
                _.delay(submitForm, WORKAREA.config.havenTheme.quantityControl.autoSubmitDelay, $qtyInput);
            }
        },

        calculateQty = function(currentQty, changeDirection) {
            if (changeDirection === 'inc') {
                return currentQty + 1;
            } else {
                return currentQty > 0 ? currentQty - 1 : currentQty;
            }
        },

        updateQty = function ($qtyInput, newQty) {
            $qtyInput.val(newQty);
        },

        submitForm = function($qtyInput) {
            var $form = $qtyInput.closest('form');

            if($form.valid()) {
                $form.submit();
            }
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.quantityControl
         */
        init = function ($scope) {
            $('[data-quantity-control]', $scope).on('click', handleQtyEvent);
        };

    return {
        init: init
    };
}()));
