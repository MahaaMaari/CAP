using { Root } from './Root';
entity Employee as projection on Root{
    ID as NodeID,
    empID as ID,
    lastName,
    firstName,
    status,
    startDate,
    endDate,
    address as to_Address,
    bank as to_Bank
}
actions{
    action hire(
        startDate:Date
    )
}