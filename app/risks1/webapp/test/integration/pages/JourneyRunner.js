sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"risksns/risks1/test/integration/pages/RisksList",
	"risksns/risks1/test/integration/pages/RisksObjectPage"
], function (JourneyRunner, RisksList, RisksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('risksns/risks1') + '/test/flp.html#app-preview',
        pages: {
			onTheRisksList: RisksList,
			onTheRisksObjectPage: RisksObjectPage
        },
        async: true
    });

    return runner;
});

