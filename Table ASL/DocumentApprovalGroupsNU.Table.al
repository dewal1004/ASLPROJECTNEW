table 54000 "Document Approval Groups NU*"
{
    DrillDownPageID = "MR Reconciliation";
    LookupPageID = "MR Reconciliation";

    fields
    {
        field(1; "Code"; Code[10])
        {
        }
        field(2; Description; Text[30])
        {
            Description = 'group';
        }
        field(3; "Initial Stages"; Code[100])
        {
            TableRelation = "Approval Document Desks NU*".Code;
            ValidateTableRelation = false;
        }
        field(4; "Final Approval Stage"; Code[10])
        {
            TableRelation = "Approval Document Desks NU*".Code;
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

