const cds = require('@sap/cds');

class EmployeeService extends cds.ApplicationService {
    init() {
        //get Entities 
        const { MyTasks } = this.entities;

        //Capture Custom Action defined in Employee Service
        this.on('updateTaskStatusCompleted', async (req) => {
            try {
                let tx = cds.tx(req);
                if (req.data.taskData) {
                    if (req.data.taskData.length > 0) {
                        let ataskData = req.data.taskData;
                        //let data = await SELECT.from(MyTasks).where({ ID: '115c2422-d974-470b-9747-e887385b270c' });
                        //console.log(data);
                        for (let i = 0; i < ataskData.length; i++) {
                            let data = await tx.run(UPDATE(MyTasks, ataskData[i].taskid).with({
                                status_code: "IN_PROGRESS"
                            }));
                            console.log(data);
                        }
                        return req.info(202, "Status Updated Successfully!");
                    }
                }
            } catch (error) {
                return req.error(400, "Failed to update status!");
            }

        });
        return super.init();
    }
}

module.exports = EmployeeService;