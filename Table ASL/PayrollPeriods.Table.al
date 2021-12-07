table 50004 "Payroll-Periods."
{
    // Created           : FTN 8/3/93
    // File Name         : KI03 - P.Roll Period (1006)
    // Comments          : Payroll periods are created and stored in this file.
    // File details      : Primary Key;
    //                      Code
    //                   : Relations - None

    LookupPageID = "Payroll Periods.";

    fields
    {
        field(1; "Period Code"; Code[10])
        {
            NotBlank = true;

            trigger OnValidate()
            begin
                /*
                IF (1 < CursorPos) AND (CursorPos < MAXSTRLEN(Name)) THEN
                BEGIN
                  Name := DELCHR (COPYSTR("Period Code", CursorPos),'<>');
                  Name := PADSTR (Name + ' ' + DELCHR (COPYSTR("Period Code", 1, CursorPos-1), '<>'), MAXSTRLEN(Name));
                END
                ELSE
                  Name := "Period Code";
                Name := DELCHR (Name, '<');
                "Search Name" := Name;
                */

            end;
        }
        field(2; "Start Date"; Date)
        {
            NotBlank = true;

            trigger OnValidate()
            begin
                if Name = '' then
                    Name := Format("Start Date", 0, '<MONTH TEXT>, <YEAR4>');
            end;
        }
        field(3; "End Date"; Date)
        {
            NotBlank = true;
        }
        field(4; Name; Text[40])
        {

            trigger OnValidate()
            begin
                if (1 < CursorPos) and (CursorPos < MaxStrLen("Search Name")) then begin
                    "Search Name" := DelChr(CopyStr(Name, CursorPos), '<>');
                    "Search Name" := PadStr("Search Name" + ' ' + DelChr(CopyStr(Name, 1, CursorPos - 1), '<>'), MaxStrLen("Search Name"));
                end
                else
                    "Search Name" := Name;
            end;
        }
        field(5; Closed; Boolean)
        {
            Editable = false;
        }
        field(6; "Search Name"; Code[20])
        {
        }
        field(7; "ED Delimitation"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = "Payroll ED Codes.";
        }
        field(8; "Empl. Delimitation"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = "Loan.";
        }
        field(9; EDAmount; Decimal)
        {
            CalcFormula = Sum("Payroll-Payslip Lines.".Amount WHERE("Payroll Period" = FIELD("Period Code"),
                                                                     "Employee No" = FIELD("ED Delimitation"),
                                                                     "E/D Code" = FIELD("Empl. Delimitation")));
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Period Code")
        {
            Clustered = true;
        }
        key(Key2; "Search Name")
        {
        }
    }

    fieldgroups
    {
    }

    var
        CursorPos: Integer;
}

