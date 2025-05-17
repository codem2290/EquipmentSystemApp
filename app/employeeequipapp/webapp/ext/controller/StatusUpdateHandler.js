sap.ui.define([
    "sap/m/MessageToast"
], function (MessageToast) {
    'use strict';

    return {
        updateStatusComplete: function (oEvent) {
            debugger;
            MessageToast.show("Custom handler invoked.");
            let oModel = this.getModel();
            let sAction = "/updateTaskStatusCompleted";
            let oPayload = {
                model: oModel,
                parameterValues: [{
                    name: 'taskData',
                    value: [{
                        empid: "1234221"
                    }]
                }],
                skipParameterDialog: true
            };

            this.getEditFlow().invokeAction(sAction, oPayload).then(function (response) {
                debugger;
            });

        }
    };
});
