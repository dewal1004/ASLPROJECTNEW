table 54002 "Approval Tracking NU*"
{
    DrillDownPageID = "Purchase Order Subform Local";
    LookupPageID = "Purchase Order Subform Local";

    fields
    {
        field(1; "No."; Integer)
        {
        }
        field(2; DocNo; Code[20])
        {
        }
        field(3; Group; Code[10])
        {
            TableRelation = "Document Approval Groups NU*".Code;
        }
        field(4; "User Desk"; Code[10])
        {
            TableRelation = "Approval Document Desks NU*".Code;
        }
        field(5; Date; Date)
        {
        }
        field(6; Time; Time)
        {
        }
        field(7; UserID; Code[10])
        {
          //  TableRelation = Table2000000002.Field1;
        }
        field(8; "Action"; Option)
        {
            OptionMembers = " ",Approve,Reject;
        }
        field(9; Comment; Text[60])
        {
        }
        field(10; "Final Approval"; Boolean)
        {
        }
        field(11; "New Desk"; Code[10])
        {
           // TableRelation = Table2000000002.Field1;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; DocNo, Group, Date, Time)
        {
        }
    }

    fieldgroups
    {
    }
}

