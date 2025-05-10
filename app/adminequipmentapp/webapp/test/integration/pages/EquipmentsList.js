sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.equip.demo.adminequipmentapp',
            componentId: 'EquipmentsList',
            contextPath: '/Equipments'
        },
        CustomPageDefinitions
    );
});