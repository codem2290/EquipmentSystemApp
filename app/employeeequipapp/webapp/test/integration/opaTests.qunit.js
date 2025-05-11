sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/equip/demo/employeeequipapp/test/integration/FirstJourney',
		'com/equip/demo/employeeequipapp/test/integration/pages/MyTasksList',
		'com/equip/demo/employeeequipapp/test/integration/pages/MyTasksObjectPage'
    ],
    function(JourneyRunner, opaJourney, MyTasksList, MyTasksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/equip/demo/employeeequipapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMyTasksList: MyTasksList,
					onTheMyTasksObjectPage: MyTasksObjectPage
                }
            },
            opaJourney.run
        );
    }
);