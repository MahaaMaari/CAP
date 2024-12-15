sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'manageemp/test/integration/FirstJourney',
		'manageemp/test/integration/pages/EmpList',
		'manageemp/test/integration/pages/EmpObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmpList, EmpObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('manageemp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmpList: EmpList,
					onTheEmpObjectPage: EmpObjectPage
                }
            },
            opaJourney.run
        );
    }
);