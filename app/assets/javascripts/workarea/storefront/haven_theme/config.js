(function () {
    'use strict';

    WORKAREA.config.alternativeAccordionOptions = {
        uiAccordionOptions: {
            heightStyle: "content",
            header: "h2",
            icons: false
        }
    };

    WORKAREA.config.maximumFilterCount = 7;

    if (!_.isEmpty($.validator)) {
        // Add `CVV` method to jQuery Validate
        $.validator.addMethod('cvv', function (value, element) {
            return WORKAREA.checkoutPrimaryPayments.checkCvvCode(element);
        });
    }
})();
