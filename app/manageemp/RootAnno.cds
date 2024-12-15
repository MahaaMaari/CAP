using { Employee } from '../../db/schema';
annotate Employee with @(
    UI:{
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label:'ID'
            },
            {
                $Type : 'UI.DataField',
                Value : firstName,
                Label:'First Name'
            },
        ],
    }
);
