table 50016 "Class Information"
{
    DrillDownPageID = "Class Information List";
    LookupPageID = "Class Information List";

    fields
    {
        field(1; "Code"; Code[10])
        {
        }
        field(2; Description; Text[30])
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
    }
}

