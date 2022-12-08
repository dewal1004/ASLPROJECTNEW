table 54001 "Document Approval Chain NU*"
{
    DrillDownPageID = "Purchase Order Foreign";
    LookupPageID = "Purchase Order Foreign";

     fields
    {
        field(1; "Code"; Code[10])
        {
        }
        field(2; Group; Code[10])
        {
            TableRelation = "Document Approval Groups NU*".Code;
        }
        field(3; From; Code[10])
        {
            TableRelation = "Approval Document Desks NU*".Code;
        }
        field(4; "To"; Code[10])
        {
            TableRelation = "Approval Document Desks NU*".Code;
        }
        field(5; "Min. Acceptability Criteria"; Text[30])
        {
        }
        field(6; "Max. Acceptability Criteria"; Text[30])
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

