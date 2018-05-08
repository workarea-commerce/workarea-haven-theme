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

    WORKAREA.config.havenTheme = {
        quantityControl: {
            autoSubmitDelay: 500
        }
    };

    _.merge(WORKAREA.config.dialog, {
        options: {
            initModules: true,

            uiDialogOptions: {
                width: 'auto',
                modal: true
            }
        },
    });

    WORKAREA.config.productDetailTabs = {
        animationSpeed: 500,
        topOffset: 110
    };
})();
