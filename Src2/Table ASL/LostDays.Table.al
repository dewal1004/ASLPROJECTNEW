table 50035 "Lost Days"
{
    // DrillDownPageID = "Lost day Type"; ****
    // LookupPageID = "Lost day Type";

    fields
    {
        field(1; "No."; Code[10])
        {
        }
        field(2; "Code"; Code[10])
        {
        }
        field(3; SeaPort; Option)
        {
            OptionMembers = Port,Sea;
        }
        field(4; "Location Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = Location WHERE ("Location Type" = CONST (Vessel));
        }
        field(5; Description; Text[30])
        {
        }
        field(6; Category; Option)
        {
            OptionMembers = OPS,ENG,CHOR,STMG;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; SeaPort)
        {
        }
    }

    fieldgroups
    {
    }
}

