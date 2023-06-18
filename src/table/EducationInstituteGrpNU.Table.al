table 60028 "Education Institute Grp NU*"
{
    Caption = 'Education Institute Grp NU*';
    // DrillDownPageID = 60041;
    // LookupPageID = 60041; ***

    fields
    {
        field(1; "Group Code"; Code[4])
        {
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
        }
    }

    keys
    {
        key(Key1; "Group Code")
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
