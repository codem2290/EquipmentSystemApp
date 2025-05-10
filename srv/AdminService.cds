using {Equipment.system.app as service} from '../db/DataModel';

// Service Definition
service AdminService {
    entity Equipments      as projection on service.Equipments;
    entity Employees       as projection on service.Employees;
    entity Tasks           as projection on service.Tasks;
    entity Issues          as projection on service.Issues;
    entity Locations       as projection on service.Locations;
    entity EquipmentStatus as projection on service.EquipmentStatus;
    entity IssueStatus     as projection on service.IssueStatus;
    entity TaskPriority    as projection on service.TaskPriority;
    entity IssueSeverity   as projection on service.IssueSeverity;
    entity TaskStatus      as projection on service.TaskStatus;
    entity Roles           as projection on service.Roles;
    entity EquipmentTypes  as projection on service.EquipmentTypes;
}
