(function () {
    'use strict';

    WORKAREA.config.maximumFilterCount = 7;

    _.merge(WORKAREA.config.scrollToButtons, {
        topOffset: 110
    });

    WORKAREA.config.havenTheme = {
        quantityControl: {
            autoSubmitDelay: 500
        }
    };

    WORKAREA.config.productDetailTabs = {
        animationSpeed: 500,
        topOffset: 110
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

    _.merge(WORKAREA.config.hoverZooms, {
        triggerZoomFromSelector: '.product-media__primary-image-item',
        addZoomWindowToSelector: '.product-details__name'
    });

    if (!_.isEmpty($.validator)) {
        // Add `CVV` method to jQuery Validate
        $.validator.addMethod('cvv', function (value, element) {
            return WORKAREA.checkoutPrimaryPayments.checkCvvCode(element);
        });
    }
})();
