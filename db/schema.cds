using { Root } from './Root';
entity Employee as projection on Root{
    *,
    ID as NodeID,
    empID as ID,
    address as to_Address,
    bank as to_Bank
}
actions{
    action hire(
        emp:$self,
        startDate:Date
    )
}