using {Equipment.system.app as service} from '../db/DataModel';
using {CustomerS4API as ExternalAPI} from './external/CustomerS4API';

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

    action updateTaskStatusCompleted @(restrict: [{ to: 'Admin' }]) (taskData : array of ArrayEmpData) returns String;

    //Get External S4 Hana Entity Details
    entity CustomerSet as projection on ExternalAPI.CustomerSet;

}
