using {Equipment.system.app as service} from '../db/DataModel';

// Service Definition
service AdminService {
    @odata.draft.enabled
    entity Equipments @(restrict: [{
        grant: ['*'],
        to   : ['adminUser']
    }])                    as projection on service.Equipments;

    entity Employees @(restrict: [{
        grant: ['*'],
        to   : ['adminUser']
    }])                    as projection on service.Employees;

    entity Tasks @(restrict: [{
        grant: ['*'],
        to   : ['adminUser']
    }])                    as projection on service.Tasks;

    entity Issues @(restrict: [{
        grant: ['*'],
        to   : ['adminUser']
    }])                    as projection on service.Issues;

    entity Locations       as projection on service.Locations;

    @cds.odata.valuelist
    entity EquipmentStatus as projection on service.EquipmentStatus;

    entity IssueStatus     as projection on service.IssueStatus;
    entity TaskPriority    as projection on service.TaskPriority;
    entity IssueSeverity   as projection on service.IssueSeverity;
    entity TaskStatus      as projection on service.TaskStatus;
    entity Roles           as projection on service.Roles;
    entity EquipmentTypes  as projection on service.EquipmentTypes;
    entity Attachments @(restrict: [{
        grant: ['*'],
        to   : ['adminUser']
    }])                     as projection on service.Attachments;

    //Call Procedure using Function

    function getEquipmentsDataFunc() returns String;

    entity Sellers as projection on service.Sellers;
}

//annotate AdminService.Equipments with @odata.draft.enabled;


//1.Admin - List Report - List Page and Object Page - CRUQ - draft
//2. Employee - List Report and It's service - CRUQ -  draft
