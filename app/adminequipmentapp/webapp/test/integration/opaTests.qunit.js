sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/equip/demo/adminequipmentapp/test/integration/FirstJourney',
		'com/equip/demo/adminequipmentapp/test/integration/pages/EquipmentsList',
		'com/equip/demo/adminequipmentapp/test/integration/pages/EquipmentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, EquipmentsList, EquipmentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/equip/demo/adminequipmentapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEquipmentsList: EquipmentsList,
					onTheEquipmentsObjectPage: EquipmentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);