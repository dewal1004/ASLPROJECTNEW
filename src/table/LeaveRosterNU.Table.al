table 60009 "Leave Roster NU*"
{
    Caption = 'Leave Roster NU*';
    //DrillDownPageID = 60009;
    //LookupPageID = 60009;

    fields
    {
        field(1; "Employee No"; Code[10])
        {
            TableRelation = Employee."No.";
        }
        field(2; "Entry Type"; Option)
        {
            OptionMembers = PLAN,ACTUAL,TAKEN;  //*** Revisit
        }
        field(3; "Leave Category"; Code[30])
        {
            TableRelation = "Leave Categories NU*".Code;
        }
        field(4; "Entry no"; Integer)
        {
        }
        field(5; LeaveDate; Date)
        {
        }
        field(6; LeavePlanNo; Code[10])
        {
        }
        field(7; Duration; Decimal)
        {
            DecimalPlaces = 0 : 0;
        }
        field(8; "Region Code"; Code[10])
        {
        }
        field(9; "Global Dimension 1 Code"; Code[10])
        {
        }
        field(10; "Global Dimension 2 Code"; Code[10])
        {
        }
        field(11; "Entry Type Filter"; Code[30])
        {
            Description = 'DELETE';
            FieldClass = FlowFilter;
        }
        field(12; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(13; "Total Leaves Due"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("Leave Roster NU*" WHERE("Employee No" = FIELD("Employee Filter"),
                                                          "Entry Type" = CONST(PLAN),
                                                          LeaveDate = FIELD("Date Filter"),
                                                          "Region Code" = FIELD("Region Filter"),
                                                          "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter")));
            FieldClass = FlowField;
            Editable = false;
        }
        field(16; "Total Leaves Taken"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("Leave Roster NU*" WHERE("Employee No" = FIELD("Employee Filter"),
                                                          "Entry Type" = CONST(ACTUAL),
                                                          Consuming = FIELD("Consuming Filter"),
                                                          "Leave Category" = FIELD("Category Filter"),
                                                          LeaveDate = FIELD("Date Filter"),
                                                          "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                          "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter")));
            FieldClass = FlowField;
            Editable = false;
        }
        field(17; "Employee Filter"; Code[30])
        {
            FieldClass = FlowFilter;
            TableRelation = Employee."No.";
        }
        field(18; "Category Filter"; Code[30])
        {
            FieldClass = FlowFilter;
            TableRelation = "Leave Categories NU*";
        }
        field(19; "Region Filter"; Code[30])
        {
            FieldClass = FlowFilter;
            TableRelation = "Business Unit";
        }
        field(20; "Global Dimension 1 Filter"; Code[20])
        {
            CaptionClass = '1,3,1';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(21; "Global Dimension 2 Filter"; Code[20])
        {
            CaptionClass = '1,3,2';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(22; Consuming; Boolean)
        {
            Editable = false;
        }
        field(23; "Consuming Filter"; Boolean)
        {
            FieldClass = FlowFilter;
            TableRelation = "Leave Categories NU*";
        }
        field(24; "Entry filter"; Option)
        {
            FieldClass = FlowFilter;
            OptionMembers = " ",PLAN,ACTUAL;
        }
        field(25; "Leave Period"; Integer)
        {
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Entry no", Duration)
        {
            Clustered = true;
        }
        key(Key2; "Employee No", "Entry Type", "Leave Category", LeaveDate)
        {
            SumIndexFields = Duration;
        }
        key(Key3; "Entry Type", "Employee No", "Leave Category", LeaveDate)
        {
            SumIndexFields = Duration;
        }
        key(Key4; "Entry Type", "Region Code")
        {
            SumIndexFields = Duration;
        }
        key(Key5; "Employee No", "Entry Type", "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code")
        {
            SumIndexFields = Duration;
        }
        key(Key6; "Entry Type", LeaveDate)
        {
            SumIndexFields = Duration;
        }
        key(Key7; LeaveDate)
        {
        }
        key(Key8; "Employee No", LeaveDate)
        {
            SumIndexFields = Duration;
        }
        key(Key9; "Employee No", "Entry Type", "Leave Category", "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code", LeaveDate, Consuming)
        {
            SumIndexFields = Duration;
        }
        key(Key10; "Employee No", Consuming, "Leave Category")
        {
            SumIndexFields = Duration;
        }
        key(Key11; "Leave Period", "Employee No", "Leave Category")
        {
            SumIndexFields = Duration;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Duration)
        {
        }
    }

    trigger OnInsert()
    begin
        CurrFieldNo := 1;

        if LeaveRosRec.Find('+') then
            "Entry no" := LeaveRosRec."Entry no" + 1
        else
            "Entry no" := 1;
    end;

    var
        LeaveRosRec: Record "Leave Roster NU*";
}
