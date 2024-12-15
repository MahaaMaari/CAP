using { Employee } from '../../db/schema';
using { Address } from '../../db/Address';
using { Bank } from '../../db/Bank';


annotate Employee with @(
    UI:{
        Facets  : [
            {
                $Type : 'UI.ReferenceFacet',
                Target : '@UI.FieldGroup#Address',
            },
        ],
        FieldGroup #Address : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type : 'UI.DataField',
                    Value : to_Address.line1,
                },
                {
                    $Type : 'UI.DataField',
                    Value : to_Address.line2,
                },
                {
                    $Type : 'UI.DataField',
                    Value : to_Address.state,
                },
                {
                    $Type : 'UI.DataField',
                    Value : to_Address.country.name,
                },
                {
                    $Type : 'UI.DataField',
                    Value : to_Address.pincode,
                },
            ],
        },
        FieldGroup #Bank : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type : 'UI.DataField',
                    Value : to_Bank.bankName,
                },
                {
                    $Type : 'UI.DataField',
                    Value : to_Bank.bankAcc,
                },
            ],
        },
    }
) ;
annotate Address with {
  line1 @(
    Common:{
        Label : 'Line 1',
    }
  );
  line2 @(
    Common:{
        Label : 'Line 2',
    }
  );
  state @(
    Common:{
        Label : 'State',
    }
  );
  country @(
    Common:{
        Label : 'Country',
    }
  );
  pincode @(
    Common:{
        Label : 'PinCode',
    }
  );
}
annotate Bank with {
  bankName @(
    Common:{
        Label : 'Bank Name',
    }
  );
  bankAcc @(
    Common:{
        Label : 'Account Number',
    }
  );
};
