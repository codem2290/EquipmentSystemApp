namespace Equipment.system.app;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Equipments : cuid, managed {
    name          : String(50)  @title: '{i18n>name}';
    type          : Association to EquipmentTypes;
    location      : Association to Locations;
    status        : Association to EquipmentStatus;
    description   : String(200) @title: '{i18n>description}';
    manufacturing : String(100);
    tasks         : Composition of many Tasks
                        on tasks.equipment = $self;
    issues        : Composition of many Issues
                        on issues.equipment = $self;
}


entity Tasks : cuid, managed {
    description : String(200);
    dueDate     : Date;
    priority    : Association to TaskPriority;
    status      : Association to TaskStatus;
    assignedTo  : Association to Employees;
    equipment   : Association to Equipments;
}


entity Issues : cuid, managed {
    description : String(250);
    reportedBy  : Association to Employees;
    equipment   : Association to Equipments;
    issueStatus : Association to IssueStatus;
}


entity Employees : cuid, managed {
    name     : String(50);
    username : String(50);
    email    : String(50);
    role     : Association to Roles;
}


entity EquipmentTypes {
    key code : String(3);
        name : String(50);
}

entity TaskStatus {
    key code : String(2);
        name : String(25);
}

entity Locations {
    key locationId : String(6);
        name       : String(50);
}

entity EquipmentStatus {
    key equipmentCode : String(15);
        name          : String(50);
        colorCode     : Integer;
}

entity IssueStatus {
    key statusCode : String(3);
        name       : String(25);
}

entity TaskPriority {
    key code : String(2);
        name : String(25);
}

entity IssueSeverity {
    key id   : String(2);
        desc : String(25);
}

entity Roles {
    key code : String(2);
        type : String(15);
}

//This is sample Entity
entity SampleEntity {
    key ID   : Int16;
        type : String;
}


entity Demo {
    key ID   : Int16;
        type : String;
}
