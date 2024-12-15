using { cuid,managed } from '@sap/cds/common';
using { Root } from './Root';

entity Bank : cuid,managed {
    bankName:String(30);
    bankAcc:Int16;
    empID:Association to one Root;
}