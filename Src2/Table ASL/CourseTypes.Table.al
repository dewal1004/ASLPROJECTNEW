table 50026 "Course Types"
{
    DataCaptionFields = "Course Type Code", Description;
    DrillDownPageID = "Course Type List";
    LookupPageID = "Course Type List";

    fields
    {
        field(1; "Course Type Code"; Code[10])
        {
        }
        field(2; Description; Text[100])
        {
        }
    }

    keys
    {
        key(Key1; "Course Type Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

