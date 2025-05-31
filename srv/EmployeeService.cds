using {Equipment.system.app as service} from '../db/DataModel';

service EmployeeService {

    entity MyTasks @(restrict: [{
        grant: ['READ'],
        to   : ['employeeUser']
    }]) as projection on service.Tasks;

    entity MyIssues @(restrict: [{
        grant: ['*'],
        to   : ['employeeUser']
    }]) as projection on service.Issues;

    entity Equipments @(restrict: [{
        grant: ['READ'],
        to   : ['employeeUser']
    }]) as projection on service.Equipments;

    type ArrayEmpData {
        taskid : String;
    }

    action updateTaskStatusCompleted(taskData : array of ArrayEmpData) returns String;

}
