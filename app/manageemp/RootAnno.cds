using { Employee } from '../../db/schema';
annotate Employee with @(
    UI:{
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : firstName
            },
            {
                $Type : 'UI.DataField',
                Value : lastName
            },
            {
                $Type : 'UI.DataField',
                Value : status_code
            },
            {
                $Type : 'UI.DataField',
                Value : startDate,
            },
            {
                $Type : 'UI.DataField',
                Value : endDate,
            },
        ],
        Identification  : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Value : lastName,
            },
        ],
    },
    odata.draft.enabled:true,
);
annotate Employee{
    ID @(
        Common : { Label : 'ID', }
        );
    lastName @(
        Common:{Label : 'Last Name',}
    );
    firstName @(
        Common:{
            Label : 'First Name',
        }
    );
    status @(
        Common:{
            Label : 'Status',
        }
    );
    startDate @(
        Common:{
            Label : 'Start Date',
        }
    );
    endDate @(
        Common:{
            Label : 'End Date',
        }
    );
    to_Address @(
        Common:{
            Label : 'Address',
        }
    );
    to_Bank @(
        Common:{
            Label : 'Bank',
        }
    );
    modifiedAt @odata.etag;
};

