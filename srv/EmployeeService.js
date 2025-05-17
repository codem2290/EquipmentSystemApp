const cds = require('@sap/cds');

class EmployeeService extends cds.ApplicationService {
    init() {
        //Capture Custom Action defined in Employee Service
        this.on('updateTaskStatusCompleted', (req) => {
            debugger;
        });
        return super.init();
    }
}

module.exports = EmployeeService;