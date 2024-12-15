using { cuid,managed,Country } from '@sap/cds/common';
using { Root } from './Root';

entity Address : cuid,managed {
    line1:String(40);
    line2:String(40);
    state:String(40);
    country:Country;
    pincode:String(10);
    empID:Association to one Root;
}