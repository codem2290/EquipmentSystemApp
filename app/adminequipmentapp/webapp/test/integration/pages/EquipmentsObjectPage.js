sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.equip.demo.adminequipmentapp',
            componentId: 'EquipmentsObjectPage',
            contextPath: '/Equipments'
        },
        CustomPageDefinitions
    );
});