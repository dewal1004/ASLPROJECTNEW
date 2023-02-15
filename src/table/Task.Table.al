table 50048 "Task"
{
    DrillDownPageID = Task;
    LookupPageID = Task;

    fields
    {
        field(1; "Code"; Code[10])
        {
        }
        field(2; "Search Code"; Code[10])
        {
        }
        field(3; Description; Text[30])
        {
        }
        field(50300; "No."; Code[10])
        {
        }
        field(50302; "Voyage Sea Days"; Decimal)
        {
            CalcFormula = Max ("Job Ledger Entry"."Catch Sea Days" WHERE ("Phase Code" = FIELD (Code),
                                                                         "Posting Date" = FIELD ("date filter")));
            Editable = false;
            FieldClass = FlowField;

            trigger OnValidate()
            begin
                //VSDVal:=Location."Voyage Sea Days";
            end;
        }
        field(50305; VSDVal; Decimal)
        {
            Editable = false;
        }
        field(50328; "date filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(50329; "Area Code"; Code[10])
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

