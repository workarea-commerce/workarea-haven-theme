/**
 * @namespace WORKAREA.checkoutPrimaryPayments
 */
WORKAREA.registerModule('checkoutPrimaryPayments', (function () {
    'use strict';

    var fieldExists = function ($field) {
            return !_.isEmpty($field);
        },

        fieldNeedsRule = function ($field) {
            return !$field.rules().creditcard;
        },

        addCreditCardValidation = function ($field) {
            if (fieldExists($field) && fieldNeedsRule($field)) {
                $field.rules('add', { extendedCreditCard: true });
            }
        },

        addCardNumberFormatting = function ($field) {
            $field.payment('formatCardNumber');
        },

        setUpCardNumberInput = function ($form) {
            var $field = $('[name="credit_card[number]"]', $form);

            if (_.isEmpty($field)) { return; }

            addCreditCardValidation($field);
            addCardNumberFormatting($field);
        },

        getCardType = function ($ccInput) {
            var cardNumber = $ccInput.val();
            return cardNumber.length ? $.payment.cardType(cardNumber) : '';
        },

        cardTypeClass = function (cardType) {
            var issuers = {
                'visa': 'visa',
                'mastercard': 'mastercard',
                'discover': 'discover',
                'amex': 'american-express',
                'dinersclub': 'diner-s-club'
            };

            return '.payment-icon--' + issuers[cardType];
        },

        addCvvValidation = function ($field) {
            if (fieldExists($field) && fieldNeedsRule($field, 'cvv')) {
                $field.rules('add', { cvv: true });
            }
        },

        checkCvvCode = function (cvvField) {
            var $form = $(cvvField).closest('form'),
                $ccInput = $('input[name="credit_card[number]"]', $form),
                cardType = getCardType($ccInput);

            return $.payment.validateCardCVC($(cvvField).val(), cardType);
        },

        setUpCvvInput = function ($form) {
            var $field = $('[name="credit_card[cvv]"]', $form);
            addCvvValidation($field);
        },

        paymentTypeChanged = function ($field, newType) {
            return !$field.hasClass('payment-icon--' + newType);
        },

        updateCardIcon = function ($field) {
            var $primaryPayment = $field.closest('.checkout-payment__primary-method'),
                cardType = getCardType($field),
                $paymentIcons = $('.payment-icon', $primaryPayment),
                $activeIcon = $(cardTypeClass(cardType), $primaryPayment);

            $paymentIcons.removeClass('payment-icon--selected');

            if (_.isEmpty(cardType)) { return; }

            if (paymentTypeChanged($field, cardType)) {
                $activeIcon.addClass('payment-icon--selected');
            }
        },

        handlePaymentMethodClick = function (event) {
            $(event.target)
                .find('input[name="payment"]')
                .prop('checked', true)
                .trigger('change');
        },

        activatePaymentMethod = function (event) {
            $(event.target)
                .closest('.checkout-payment__primary-method')
                .addClass('checkout-payment__primary-method--selected')
                    .siblings('.checkout-payment__primary-method')
                    .removeClass('checkout-payment__primary-method--selected');
        },

        setupForm = function (index, section) {
            var $form = $('form', section);

            setUpCardNumberInput($form);
            setUpCvvInput($form);
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.checkoutPrimaryPayments
         */
        init = function ($scope) {
            $('[data-checkout-primary-payment]', $scope)
            .on('change', 'input[name="payment"]', activatePaymentMethod)
            .on('click', '.checkout-payment__primary-method', handlePaymentMethodClick)
            .on('keyup', '[name="credit_card[number]"]', function (event) {
                updateCardIcon($(event.target));
            })
            .each(setupForm);
        };

    return {
        init: init,
        checkCvvCode: checkCvvCode
    };
}()));
