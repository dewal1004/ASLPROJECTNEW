table 50024 "Job Category"
{
    DrillDownPageID = "Job Category List";
    LookupPageID = "Job Category List";
    Caption = 'Job Category';
    fields
    {
        field(1; "Code"; Code[10])
        {
        }
        field(2; Description; Text[30])
        {
        }
        field(3; Range; Text[30])
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
