table 60023 "Dept Leave Roster Summary NU*"
{
    DrillDownPageID = "Utilities.";
    LookupPageID = "Utilities.";

    fields
    {
        field(1; "Global Dimension 1 Code"; Code[10])
        {
            CaptionClass = '1,1,1';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));

            trigger OnValidate()
            begin
                if BCRec.Get("Global Dimension 1 Code") then Description := BCRec.Name;
            end;
        }
        field(2; Description; Text[30])
        {
        }
        field(3; "Unit of Measure DELETE"; Code[10])
        {
            Description = 'DELETE THIS';
        }
        field(4; "Total Duration"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("Leave Roster NU*".Duration WHERE("Leave Category" = FIELD("Leave Category Filter"),
                                                                 "Entry Type" = FIELD("Leave Code Filter"),
                                                                 "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                 LeaveDate = FIELD("Date Filter")));
            DecimalPlaces = 0 : 0;
            FieldClass = FlowField;
        }
        field(5; "Region Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Business Unit".Code;
        }
        field(7; "Global Dimension 1 Filter"; Code[10])
        {
            CaptionClass = '1,3,1';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(8; "Employee No. Filter"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = Employee."No.";
        }
        field(9; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(10; "Leave Code Filter"; Option)
        {
            FieldClass = FlowFilter;
            OptionMembers = PLAN,ACTUAL;
            //   TableRelation = Table60015.Field1;
        }
        field(11; "Leave Category Filter"; Code[100])
        {
            FieldClass = FlowFilter;
            TableRelation = "Leave Categories NU*".Code;
        }
    }

    keys
    {
        key(Key1; "Global Dimension 1 Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    var
        LeaveRosRec: Record "Leave Roster NU*";
        BCRec: Record "Dimension Value";
}

