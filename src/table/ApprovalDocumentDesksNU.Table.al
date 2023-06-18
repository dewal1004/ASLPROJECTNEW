table 54003 "Approval Document Desks NU*"
{
    DrillDownPageID = "Foreign Purchase Order List";
    LookupPageID = "Foreign Purchase Order List";
    Caption = 'Approval Document Desks NU*';
    fields
    {
        field(1; "Code"; Code[10])
        {
        }
        field(2; Description; Text[30])
        {
        }
        field(3; "Desk Description"; Text[20])
        {
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description)
        {
        }
    }
}
