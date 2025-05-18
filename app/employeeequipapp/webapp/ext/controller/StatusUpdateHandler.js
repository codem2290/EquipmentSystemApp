sap.ui.define([
    "sap/m/MessageToast"
], function (MessageToast) {
    'use strict';

    return {
        updateStatusComplete: function (oEvent) {
            debugger;
            let oParent = sap.ui.getCore().byId('com.equip.demo.employeeequipapp::MyTasksList--fe::table::MyTasks::LineItem');
            if (oParent.getSelectedContexts().length > 0) {
                let oModel = this.getModel();
                let sAction = "/updateTaskStatusCompleted";
                let aSelectedTask = oParent.getSelectedContexts().map(function (item) {
                    return {
                        taskid: item.getObject().ID
                    }
                });

                let oPayload = {
                    model: oModel,
                    parameterValues: [{
                        name: 'taskData',
                        value: aSelectedTask
                    }],
                    skipParameterDialog: true
                };

                this.getEditFlow().invokeAction(sAction, oPayload).then(function (response) {
                    this._controller.getExtensionAPI().refresh()
                }.bind(this));
            }


        }
    };
});
