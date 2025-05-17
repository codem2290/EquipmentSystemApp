using {Equipment.system.app as service} from '../db/DataModel';

service EmployeeService {

    entity MyTasks as projection on service.Tasks;
    entity MyIssues as projection on service.Issues;
    entity Equipments as projection on service.Equipments;

    type ArrayEmpData {
        empid: String;
    }

    action updateTaskStatusCompleted(taskData : array of ArrayEmpData) returns String;

}