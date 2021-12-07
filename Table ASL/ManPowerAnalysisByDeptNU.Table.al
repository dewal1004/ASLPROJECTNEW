table 60027 "ManPower Analysis By Dept NU*"
{
    // DrillDownPageID = "Manpower Budget List";  ***
    // LookupPageID = "Manpower Budget List";

    fields
    {
        field(1; "Global Dimension 1 Code"; Code[10])
        {
            CaptionClass = '1,1,1';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(2; "Total Employees"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count (Employee WHERE (Status = CONST (Active),
                                                "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter")));
            FieldClass = FlowField;
        }
        field(3; "Total Budget"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Manpower Budget Table NU*"."Manpower Budget" WHERE ("Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                   "Date Filter" = FIELD ("Date Filter")));
            DecimalPlaces = 0 : 0;
            FieldClass = FlowField;
        }
        field(4; "Region Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Business Unit".Code;
        }
        field(5; "Global Dimension 1 Filter"; Code[10])
        {
            CaptionClass = '1,3,2';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(6; "Employee No. Filter"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = Employee;
        }
        field(7; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
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
}

