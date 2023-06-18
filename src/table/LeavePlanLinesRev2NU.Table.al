table 60019 "Leave Plan Lines Rev 2 NU*"
{
    Caption = 'Leave Plan Lines Rev 2 NU*';
    //
    //
    // OnModify()
    // IF xRec.Exploded THEN ERROR('You cannot MODIFY a Registered Leave Record');
    //
    // OnDelete()
    // LOCKTABLE;
    // PayRec.SETRANGE("Leave Plan No","Serial No");
    // PayRec.DELETEALL(TRUE);
    // LRosteRec.SETRANGE(LRosteRec.LeavePlanNo,"Serial No");
    // LRosteRec.DELETEALL(TRUE);

    // DrillDownPageID = 60099;
    // LookupPageID = 60099;

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            TableRelation = Employee."No.";

            trigger OnValidate()
            begin
                if EmpRec.Get("Employee No.") then begin
                    "Region Code" := EmpRec."Region Code";
                    "Global Dimension 1 Code" := EmpRec."Global Dimension 1 Code";
                    "Global Dimension 2 Code" := EmpRec."Global Dimension 2 Code";
                    EmpGrpCode := EmpRec."Employee Group";
                end;

                /*
                IF EmpGrpRec.GET(EmpGrpCode) THEN
                  BEGIN
                    EmpGrpRec.CALCFIELDS(EmpGrpRec."Gross Pay");
                    "Amount Due" := (EmpGrpRec."Gross Pay"*12)/10;
                  END;
                */
            end;
        }
        field(2; "Leave Period"; Integer)
        {
        }
        field(3; "Annual Duration"; Decimal)
        {
            DecimalPlaces = 0 : 0;

            trigger OnValidate()
            begin
                if xRec.Registered then Error('You cannot MODIFY a Registered Leave Record');
            end;
        }
        field(4; "Amount Due"; Decimal)
        {
            Editable = false;
        }
        field(5; "Amount Paid"; Decimal)
        {
            CalcFormula = Sum("Leave Payment Rev 2 NU*"."Amount Paid" WHERE("Leave Period" = FIELD("Leave Period"),
                                                                             "Employee No." = FIELD("Employee No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Region Code"; Code[10])
        {
            Editable = false;
        }
        field(15; "Global Dimension 1 Code"; Code[10])
        {
            Editable = false;
        }
        field(16; "Global Dimension 2 Code"; Code[10])
        {
            Editable = false;
        }
        field(17; Registered; Boolean)
        {
            Editable = false;
        }
        field(21; "Entry Type Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            // TableRelation = Table60021.Field3;
        }
        field(22; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(23; "Total Leaves Due"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("Leave Plan Lines Rev 2 NU*"."Annual Duration" WHERE("Employee No." = FIELD("Employee No."),
                                                                                    "Leave Period" = FIELD("Period Filter"),
                                                                                    "Entry Type" = CONST(PLAN)));
            DecimalPlaces = 0 : 0;
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Total Compassionate"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("Leave Roster NU*" WHERE("Employee No" = FIELD("Employee No."),
                                                          LeaveDate = FIELD("Date Filter"),
                                                          "Leave Category" = CONST('COMP'),
                                                          "Leave Period" = FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Total Exam"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("Leave Roster NU*" WHERE("Employee No" = FIELD("Employee No."),
                                                          LeaveDate = FIELD("Date Filter"),
                                                          "Leave Category" = CONST('EXAM'),
                                                          "Leave Period" = FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Total Others"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("Leave Roster NU*" WHERE("Employee No" = FIELD("Employee No."),
                                                          LeaveDate = FIELD("Date Filter"),
                                                          "Leave Category" = CONST('OTHERS'),
                                                          "Leave Period" = FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; "Total Consuming"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("Leave Roster NU*" WHERE("Employee No" = FIELD("Employee No."),
                                                          LeaveDate = FIELD("Date Filter"),
                                                          Consuming = CONST(true),
                                                          "Leave Period" = FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Total Annual"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("Leave Roster NU*" WHERE("Employee No" = FIELD("Employee No."),
                                                          LeaveDate = FIELD("Date Filter"),
                                                          "Leave Category" = CONST('ANNUAL'),
                                                          "Leave Period" = FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(29; "Total Commuted To Cash"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("Leave Roster NU*" WHERE("Employee No" = FIELD("Employee No."),
                                                          LeaveDate = FIELD("Date Filter"),
                                                          "Leave Category" = CONST('CASH'),
                                                          "Leave Period" = FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Start Date1"; Date)
        {
            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                if "Start Date1" = 0D then begin
                    "No. Days1" := 0;
                    exit;
                end;

                if ("End Date1" < "Start Date1") and ("End Date1" <> 0D) then
                    Error(FieldCaption("Start Date1") + 'Must be on or after ' + FieldCaption("End Date1"));

                if "End Date1" <> 0D then
                    "No. Days1" := GenPCode.GetNoOfDays("Start Date1", "End Date1")
                else
                    if "No. Days1" <> 0 then
                        "End Date1" := GenPCode.GetEndDate("Start Date1", "No. Days1");

                CheckTotalDuration(1);
            end;
        }
        field(33; "End Date1"; Date)
        {
            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                if "End Date1" = 0D then begin
                    "No. Days1" := 0;
                    exit;
                end;

                if ("End Date1" < "Start Date1") and ("Start Date1" <> 0D) then Error(Format("Start Date1") + ' == ' + Format("End Date1"));
                //   ERROR(FIELDCAPTION("End Date1")+'Must be on or before '+FIELDCAPTION("Start Date1"));

                if "Start Date1" <> 0D then
                    "No. Days1" := GenPCode.GetNoOfDays("Start Date1", "End Date1")
                else
                    if "No. Days1" <> 0 then
                        "Start Date1" := GenPCode.GetStartDate("End Date1", "No. Days1");

                CheckTotalDuration(1);
            end;
        }
        field(34; "No. Days1"; Integer)
        {
            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                if "No. Days1" = 0 then exit;

                if ("Start Date1" = 0D) and ("End Date1" = 0D) then exit;

                if "Start Date1" <> 0D then
                    "End Date1" := GenPCode.GetEndDate("Start Date1", "No. Days1")
                else
                    "Start Date1" := GenPCode.GetStartDate("End Date1", "No. Days1");

                if EmpRec.Get("Employee No.") then EmpGrpCode := EmpRec."Employee Group";

                CheckTotalDuration(1);
                /*

                                IF ("Leave Category" = 'CASH') AND NOT(Registered) AND ("No. Days" > 0)THEN
                                BEGIN
                                  PayRec.FIND('+');
                                  PayRec."Entry no" := PayRec."Entry no" + 10;
                                  PayRec.INIT;
                                  PayRec."Leave Plan No" := "Serial No";
                                  PayRec."Payment Date" := TODAY;
                                  PayRec."Total Days Paid For" := "No. Days";
                                  PayRec.INSERT;
                                END;
                  */
            end;
        }
        field(35; "Start Date2"; Date)
        {
            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                if "Start Date2" = 0D then begin
                    "No. Days2" := 0;
                    exit;
                end;

                if ("End Date2" < "Start Date2") and ("End Date2" <> 0D) then
                    Error(FieldCaption("Start Date2") + 'Must be on or after ' + FieldCaption("End Date2"));

                if "End Date2" <> 0D then
                    "No. Days2" := GenPCode.GetNoOfDays("Start Date2", "End Date2")
                else
                    if "No. Days2" <> 0 then
                        "End Date2" := GenPCode.GetEndDate("Start Date2", "No. Days2");

                CheckTotalDuration(1);
            end;
        }
        field(36; "End Date2"; Date)
        {
            trigger OnValidate()
            begin

                if "End Date2" = 0D then begin
                    "No. Days2" := 0;
                    exit;
                end;

                if ("End Date2" < "Start Date2") and ("Start Date2" <> 0D) then
                    Error(FieldCaption("End Date2") + 'Must be on or before ' + FieldCaption("Start Date2"));

                if "Start Date2" <> 0D then
                    "No. Days2" := GenPCode.GetNoOfDays("Start Date2", "End Date2")
                else
                    if "No. Days2" <> 0 then
                        "Start Date2" := GenPCode.GetStartDate("End Date2", "No. Days2");

                CheckTotalDuration(1);
            end;
        }
        field(37; "No. Days2"; Integer)
        {
            trigger OnValidate()
            begin
                //error('There');

                if "No. Days2" = 0 then exit;

                if ("Start Date2" = 0D) and ("End Date2" = 0D) then exit;

                if "Start Date2" <> 0D then
                    "End Date2" := GenPCode.GetEndDate("Start Date2", "No. Days2")
                else
                    "Start Date2" := GenPCode.GetStartDate("End Date2", "No. Days2");

                if EmpRec.Get("Employee No.") then EmpGrpCode := EmpRec."Employee Group";

                CheckTotalDuration(1);

                /*

                                IF ("Leave Category" = 'CASH') AND NOT(Registered) AND ("No. Days" > 0)THEN
                                BEGIN
                                  PayRec.FIND('+');
                                  PayRec."Entry no" := PayRec."Entry no" + 10;
                                  PayRec.INIT;
                                  PayRec."Leave Plan No" := "Serial No";
                                  PayRec."Payment Date" := TODAY;
                                  PayRec."Total Days Paid For" := "No. Days";
                                  PayRec.INSERT;
                                END;
                  */
            end;
        }
        field(38; "Start Date3"; Date)
        {
            trigger OnValidate()
            begin

                if "Start Date3" = 0D then begin
                    "No. Days3" := 0;
                    exit;
                end;

                if ("End Date3" < "Start Date3") and ("End Date3" <> 0D) then
                    Error(FieldCaption("Start Date3") + 'Must be on or after ' + FieldCaption("End Date3"));

                if "End Date3" <> 0D then
                    "No. Days3" := GenPCode.GetNoOfDays("Start Date3", "End Date3")
                else
                    if "No. Days3" <> 0 then
                        "End Date3" := GenPCode.GetEndDate("Start Date3", "No. Days3");

                CheckTotalDuration(1);
            end;
        }
        field(39; "End Date3"; Date)
        {
            trigger OnValidate()
            begin

                if "End Date3" = 0D then begin
                    "No. Days3" := 0;
                    exit;
                end;

                if ("End Date3" < "Start Date3") and ("Start Date3" <> 0D) then
                    Error(FieldCaption("End Date3") + 'Must be on or before ' + FieldCaption("Start Date3"));

                if "Start Date3" <> 0D then
                    "No. Days3" := GenPCode.GetNoOfDays("Start Date3", "End Date3")
                else
                    if "No. Days3" <> 0 then
                        "Start Date3" := GenPCode.GetStartDate("End Date3", "No. Days3");

                CheckTotalDuration(1);
            end;
        }
        field(40; "No. Days3"; Integer)
        {
            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                //GetAmountDue;

                if "No. Days3" = 0 then exit;

                if ("Start Date3" = 0D) and ("End Date3" = 0D) then exit;

                if "Start Date3" <> 0D then
                    "End Date3" := GenPCode.GetEndDate("Start Date3", "No. Days3")
                else
                    "Start Date3" := GenPCode.GetStartDate("End Date3", "No. Days3");

                if EmpRec.Get("Employee No.") then EmpGrpCode := EmpRec."Employee Group";

                CheckTotalDuration(1);

                /*
                IF ("Leave Category" = 'CASH') AND NOT(Registered) AND ("No. Days" > 0)THEN
                BEGIN
                  PayRec.FIND('+');
                  PayRec."Entry no" := PayRec."Entry no" + 10;
                  PayRec.INIT;
                  PayRec."Leave Plan No" := "Serial No";
                  PayRec."Payment Date" := TODAY;
                  PayRec."Total Days Paid For" := "No. Days";
                  PayRec.INSERT;
                END;
                */
            end;
        }
        field(41; "Start Date4"; Date)
        {
            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                if "Start Date4" = 0D then begin
                    "No. Days4" := 0;
                    exit;
                end;

                if ("End Date4" < "Start Date4") and ("End Date4" <> 0D) then
                    Error(FieldCaption("Start Date4") + 'Must be on or after ' + FieldCaption("End Date4"));

                if "End Date4" <> 0D then
                    "No. Days4" := GenPCode.GetNoOfDays("Start Date4", "End Date4")
                else
                    if "No. Days4" <> 0 then
                        "End Date4" := GenPCode.GetEndDate("Start Date4", "No. Days4");

                CheckTotalDuration(1);
            end;
        }
        field(42; "End Date4"; Date)
        {
            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                if "End Date4" = 0D then begin
                    "No. Days4" := 0;
                    exit;
                end;

                if ("End Date4" < "Start Date4") and ("Start Date4" <> 0D) then
                    Error(FieldCaption("End Date4") + 'Must be on or before ' + FieldCaption("Start Date4"));

                if "Start Date4" <> 0D then
                    "No. Days4" := GenPCode.GetNoOfDays("Start Date4", "End Date4")
                else
                    if "No. Days4" <> 0 then
                        "Start Date4" := GenPCode.GetStartDate("End Date4", "No. Days4");

                CheckTotalDuration(1);
            end;
        }
        field(43; "No. Days4"; Integer)
        {
            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                //GetAmountDue;

                if "No. Days4" = 0 then exit;

                if ("Start Date4" = 0D) and ("End Date4" = 0D) then exit;

                if "Start Date4" <> 0D then
                    "End Date4" := GenPCode.GetEndDate("Start Date4", "No. Days4")
                else
                    "Start Date4" := GenPCode.GetStartDate("End Date4", "No. Days4");

                if EmpRec.Get("Employee No.") then EmpGrpCode := EmpRec."Employee Group";

                CheckTotalDuration(1);

                /*
                IF ("Leave Category" = 'CASH') AND NOT(Registered) AND ("No. Days" > 0)THEN
                BEGIN
                  PayRec.FIND('+');
                  PayRec."Entry no" := PayRec."Entry no" + 10;
                  PayRec.INIT;
                  PayRec."Leave Plan No" := "Serial No";
                  PayRec."Payment Date" := TODAY;
                  PayRec."Total Days Paid For" := "No. Days";
                  PayRec.INSERT;
                END;
                */
            end;
        }
        field(44; Registered1; Boolean)
        {
        }
        field(45; Registered2; Boolean)
        {
        }
        field(46; Registered3; Boolean)
        {
        }
        field(47; Registered4; Boolean)
        {
        }
        field(48; "Entry Type"; Option)
        {
            OptionMembers = PLAN,ACTUAL;

            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');
            end;
        }
        field(49; "Leave Category"; Code[30])
        {
            TableRelation = "Leave Categories NU*".Code;

            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');
                //LeavPRec.RESET;
                LeavPRec.SetRange(LeavPRec."Employee No.", "Employee No.");
                LeavPRec.SetRange(LeavPRec."Leave Period", "Leave Period");
                LeavPRec.SetRange(LeavPRec."Entry Type", LeavPRec."Entry Type"::PLAN);
                if LeavPRec.Find('-') then begin
                    LCategory.Get("Leave Category");
                    if LCategory."Payment Allowed" then
                        "Amount Due" := LeavPRec."Amount Due"
                    else
                        "Amount Due" := 0;
                end

                else
                    "Amount Due" := 0;
            end;
        }
        field(50; LeaveDate; Date)
        {
        }
        field(51; "Actual Start Date"; Date)
        {
            trigger OnValidate()
            begin
                if xRec.Registered then Error('You cannot MODIFY a Registered Leave Record');

                if "Actual Start Date" = 0D then begin
                    "Actual Duration" := 0;
                    exit;
                end;

                if ("Actual End Date" < "Actual Start Date") and ("Actual End Date" <> 0D) then
                    Error(FieldCaption("Actual Start Date") + 'Must be on or after ' + FieldCaption("Actual End Date"));

                if "Actual End Date" <> 0D then
                    "Actual Duration" := GenPCode.GetNoOfDays("Actual Start Date", "Actual End Date")
                else
                    if "Actual Duration" <> 0 then
                        "Actual End Date" := GenPCode.GetEndDate("Actual Start Date", "Actual Duration");

                CheckTotalDuration(9);
            end;
        }
        field(52; "Actual End Date"; Date)
        {
            trigger OnValidate()
            begin
                if xRec.Registered then Error('You cannot MODIFY a Registered Leave Record');

                if "Actual End Date" = 0D then begin
                    "Actual Duration" := 0;
                    exit;
                end;

                if ("Actual End Date" < "Actual Start Date") and ("Actual Start Date" <> 0D) then
                    Error(FieldCaption("Actual End Date") + 'Must be on or before ' + FieldCaption("Actual Start Date"));

                if "Actual Start Date" <> 0D then
                    "Actual Duration" := GenPCode.GetNoOfDays("Actual Start Date", "Actual End Date")
                else
                    if "Actual Duration" <> 0 then
                        "Actual Start Date" := GenPCode.GetStartDate("Actual End Date", "Actual Duration");

                CheckTotalDuration(9);
            end;
        }
        field(53; "Actual Duration"; Integer)
        {
            trigger OnValidate()
            begin
                if xRec.Registered then Error('You cannot MODIFY a Registered Leave Record');

                if "Actual Duration" = 0 then exit;

                if ("Actual Start Date" = 0D) and ("Actual End Date" = 0D) then exit;

                if "Actual Start Date" <> 0D then
                    "Actual End Date" := GenPCode.GetEndDate("Actual Start Date", "Actual Duration")
                else
                    "Actual Start Date" := GenPCode.GetStartDate("Actual End Date", "Actual Duration");

                if EmpRec.Get("Employee No.") then EmpGrpCode := EmpRec."Employee Group";

                CheckTotalDuration(9);

                /*
                IF ("Leave Category" = 'CASH') AND NOT(Registered) AND ("No. Days" > 0)THEN
                BEGIN
                  PayRec.FIND('+');
                  PayRec."Entry no" := PayRec."Entry no" + 10;
                  PayRec.INIT;
                  PayRec."Leave Plan No" := "Serial No";
                  PayRec."Payment Date" := TODAY;
                  PayRec."Total Days Paid For" := "No. Days";
                  PayRec.INSERT;
                END;
                */
            end;
        }
        field(54; "Period Filter"; Integer)
        {
            FieldClass = FlowFilter;
        }
        field(55; "Serial No"; Code[10])
        {
            Editable = false;
        }
        field(56; "No Series"; Code[10])
        {
            TableRelation = "No. Series".Code;
        }
    }

    keys
    {
        key(Key1; "Serial No", "Employee No.")
        {
            Clustered = true;
            SumIndexFields = "Annual Duration", "Amount Due";
        }
        key(Key2; "Employee No.", "Leave Period", "Entry Type")
        {
            SumIndexFields = "Annual Duration", "Amount Due";
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        PayRec.SetRange(PayRec."Leave Plan No.", "Serial No");
        PayRec.DeleteAll(true);
        LRosteRec.SetRange(LRosteRec.LeavePlanNo, "Serial No");
        LRosteRec.DeleteAll(true);
    end;

    trigger OnInsert()
    begin
        if "Serial No" = '' then begin
            HumanResSetup.Get();
            HumanResSetup.TestField("Leave Plan No");
            NoSeriesMgt.InitSeries(HumanResSetup."Leave Plan No", xRec."No Series", 0D, "Serial No", "No Series");
        end;
    end;

    trigger OnModify()
    begin
        if xRec.Registered then Error('You cannot MODIFY a Registered Leave Record');
    end;

    var
        LeavPRec: Record "Leave Plan Lines Rev 2 NU*";
        HumanResSetup: Record "Human Resources Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        PayRec: Record "Leave Payment Rev 2 NU*";
        GenPCode: Codeunit "General Purpose Codeunit";
        LRosteRec: Record "Leave Roster NU*";
        EmpRec: Record Employee;
        RemLeaves: Integer;
        LCategory: Record "Leave Categories NU*";
        CatName: Text[30];
        EmpGrpRec: Record "Payroll-Employee Group Header.";
        BasicAmount: Decimal;
        EmpGrpCode: Code[20];
        TakenTotal: Integer;
        RemDur: Integer;
        OldRemDur: Integer;
        OldTotal: Integer;

    //[Scope('OnPrem')]
    procedure RegisterLeave(LeaveType: Option PLAN,ACTUAL)
    begin

        if Registered then Error('This leave is already REGISTERED');
        if (LeaveType = LeaveType::ACTUAL) and (EmpRec.Get("Employee No.")) then begin
            CalcFields("Total Leaves Due", "Total Consuming", "Total Annual");
            RemLeaves := "Total Leaves Due" - "Total Consuming";

            if (RemLeaves < "Actual Duration") and (IsConsuming("Leave Category")) then
                Error('%1 has %2 Consuming Leaves Remaining', EmpRec.FullName(), RemLeaves);
        end;

        if LCategory.Get("Leave Category") then
            CatName := UpperCase(LCategory.Description)
        else
            CatName := '';

        ExplodeRec();
    end;

    //[Scope('OnPrem')]
    procedure ExplodeRec()
    begin

        if EmpRec.Get("Employee No.") then
            if Confirm('Are you sure you want to Register \\' +
                           '%1 day(s) %2 Leave for %3 \\' +
                           'Between %4 and %5', true, "Actual Duration",
                           CatName, EmpRec.FullName(), "Actual Start Date", "Actual End Date")
                       then
                // GenPCode.ExplodeActualLeave(Rec);
                Validate(Registered, true);
    end;

    //[Scope('OnPrem')]
    procedure IsConsuming(LCat: Code[10]): Boolean
    begin
        if LCategory.Get(LCat) then
            exit(LCategory.Consuming)
        else
            exit(false);
    end;

    //[Scope('OnPrem')]
    procedure RemainingLeave(): Integer
    begin
        CalcFields("Total Consuming");
        exit("Total Leaves Due" - "Total Consuming");
    end;

    //[Scope('OnPrem')]
    procedure GetAmountDue()
    begin

        if EmpRec.Get("Employee No.") then
            if ("Entry Type" = "Entry Type"::PLAN) then begin
                BasicAmount := EmpGrpRec.GetBasic(EmpRec."Employee Group");
                "Amount Due" := (BasicAmount * 12 * 0.1);
            end
            else
                if LCategory.Get("Leave Category") then
                    if LCategory."Payment Allowed" then begin
                        BasicAmount := EmpGrpRec.GetBasic(EmpRec."Employee Group");
                        "Amount Due" := (BasicAmount * 12 * 0.1);
                    end
                    else
                        "Amount Due" := 0;
    end;

    //[Scope('OnPrem')]
    procedure CheckTotalDuration(Cnt: Integer)
    begin
        case Cnt of
            1:
                begin
                    OldTotal := xRec."No. Days1" + xRec."No. Days2" + xRec."No. Days3" + xRec."No. Days4";
                    TakenTotal := "No. Days1" + "No. Days2" + "No. Days3" + "No. Days4";
                    RemDur := "Annual Duration" - TakenTotal;
                    OldRemDur := "Annual Duration" - OldTotal;
                    if (RemDur < 0) then Error('%1 Have %2 Leave Days Left!!', "Employee No.", OldRemDur);
                end;
            9:
                begin
                    OldTotal := "Total Consuming";
                    TakenTotal := OldTotal + "Actual Duration";

                    RemDur := "Total Leaves Due" - TakenTotal;
                    OldRemDur := "Total Leaves Due" - OldTotal;
                    if ((RemDur < 0) and IsConsuming("Leave Category")) then Error('%1 Have %2 Leave Days Left!!', "Employee No.", OldRemDur);
                end;
        end;
    end;

    //[Scope('OnPrem')]
    procedure RegPlan()
    begin
        if Registered then
            Error('This Record is Already registered!')
        else begin
            "Total Leaves Due" := "Annual Duration";
            Registered := true;
            Modify();
        end;
    end;
}
