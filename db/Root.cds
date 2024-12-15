using {cuid,managed,sap.common.CodeList} from '@sap/cds/common';
using { Address } from './Address';
using { Bank } from './Bank';


entity Root: cuid,managed {
    empID:String(10);
    firstName:String(20);
    lastName:String(20);
    status:statusCode;
    startDate:Date;
    endDate:Date;
    address:Composition of one Address on address.empID=$self;
    bank:Composition of many Bank on bank.empID=$self;
}
entity Status : CodeList {
    key code:String(2);
}
type statusCode :Association to Status;
