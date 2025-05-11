using {Equipment.system.app as service} from '../db/DataModel';

// Service Definition
service AdminService {
    @odata.draft.enabled
    entity Equipments      as projection on service.Equipments;
    entity Employees       as projection on service.Employees;
    entity Tasks           as projection on service.Tasks;
    entity Issues          as projection on service.Issues;
    entity Locations       as projection on service.Locations;
    @cds.odata.valuelist
    entity EquipmentStatus as projection on service.EquipmentStatus;
    entity IssueStatus     as projection on service.IssueStatus;
    entity TaskPriority    as projection on service.TaskPriority;
    entity IssueSeverity   as projection on service.IssueSeverity;
    entity TaskStatus      as projection on service.TaskStatus;
    entity Roles           as projection on service.Roles;
    entity EquipmentTypes  as projection on service.EquipmentTypes;
}

//annotate AdminService.Equipments with @odata.draft.enabled;



//1.Admin - List Report - List Page and Object Page - CRUQ - draft
//2. Employee - List Report and It's service - CRUQ -  draft 