using { Employee } from '../db/schema';

service MyService @(path:'/Employee') {
    entity Emp as projection on Employee;
}