const cds = require('@sap/cds');

class AdminService extends cds.ApplicationService {
    init() {
        //get Entities 
        const { Equipments, EquipmentTypes } = this.entities;

        this.before('UPDATE', Equipments.drafts, async (req) => {
            try {
                //incase of this.after handler u will be getting direct data from req object 
                if (req.data?.type_code) {
                    let typecode = req.data?.type_code;
                    let oEquipmentData = await SELECT.one.from(EquipmentTypes).where({ code: typecode });

                    if (!oEquipmentData) {
                        return req.error(404, "Unable to fetch Equipment Type Data!");
                    }
                    //this code will work only in case of this.before handler
                    req.data.manufacturing = oEquipmentData.manufacture;


                    //this code we need to add in case of this.after
                    // let response = await UPDATE(Equipments.drafts).with({
                    //     manufacturing: oEquipmentData.manufacture
                    // }).where({
                    //     ID: req.data.ID
                    // });

                }
            } catch (error) {
                return req.error(404, "Unable to fetch Equipment Type Data!");
            }

        });

        return super.init();
    }
}

module.exports = AdminService;