table 50009 "Payroll-Employee Group Header."
{
    // Description
    // Created           : FTN, 12/3/93
    // File name         : KI03 P.Roll Header
    // Comments          : The Header card that is to be used to enter employee
    //                     groups
    // File details      : Primary Key is;
    //                      Code
    //                   : Relations;
    //                      None

    LookupPageID = "Employee Groups Survey.";

    fields
    {
        field(1; "Code"; Code[10])
        {
            NotBlank = true;

            trigger OnValidate()
            begin
                if (1 < CursorPos) and (CursorPos < MaxStrLen("Search Name")) then begin
                    "Search Name" := DelChr(CopyStr(Code, CursorPos), '<>');
                    "Search Name" := PadStr("Search Name" + ' ' + DelChr(CopyStr(Code, 1, CursorPos - 1), '<>'), MaxStrLen("Search Name"));
                end
                else
                    "Search Name" := Code;
                "Search Name" := DelChr("Search Name", '<');
            end;
        }
        field(2; "Search Name"; Code[10])
        {
        }
        field(5; "Gross Pay"; Decimal)
        {
            CalcFormula = Sum("Payroll-Employee Group Lines."."Default Amount" WHERE("Employee Group" = FIELD(Code),
                                                                                      "Payslip Group ID" = FILTER("GROSS PAY")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Tax Charged"; Decimal)
        {
            CalcFormula = Sum("Payroll-Employee Group Lines."."Default Amount" WHERE("Employee Group" = FIELD(Code),
                                                                                      "Payslip Group ID" = FILTER("TAX CHARGED")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Tax Deducted"; Decimal)
        {
            CalcFormula = Sum("Payroll-Employee Group Lines."."Default Amount" WHERE("Employee Group" = FIELD(Code),
                                                                                      "Payslip Group ID" = FILTER("TAX DEDUCTED")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Taxable Pay"; Decimal)
        {
            CalcFormula = Sum("Payroll-Employee Group Lines."."Default Amount" WHERE("Employee Group" = FIELD(Code),
                                                                                      "Payslip Group ID" = FILTER("TAXABLE PAY")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Total Deductions"; Decimal)
        {
            CalcFormula = Sum("Payroll-Employee Group Lines."."Default Amount" WHERE("Employee Group" = FIELD(Code),
                                                                                      "Payslip Group ID" = FILTER("TOTAL DEDUCTIONS")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Net Pay Due"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("Payroll-Employee Group Lines."."Default Amount" WHERE("Employee Group" = FIELD(Code),
                                                                                      "Payslip Group ID" = FILTER("NET PAY DUE")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Posting Group Code"; Code[10])
        {
            TableRelation = "Payroll-Posting Group Header."."Posting Group Code";
        }
        field(12; Grade; Code[2])
        {
        }
        field(13; Step; Code[2])
        {
        }
        field(14; Management; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Posting Group Code")
        {
        }
        key(Key3; Grade, Step)
        {
        }
        key(Key4; Grade)
        {
        }
        key(Key5; Step)
        {
        }
        key(Key6; Management)
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin

        /* Confirm */
        if not Confirm('All entries for this employee group ' +
                        'will be deleted!' +
                        'Proceed with Deletion?    ')
        then
            Error('Nothing was deleted');

        /* Lock 'parent' and 'child' files*/
        /* LOCKTABLE( FALSE); AAA Nov 2002*/
        /* GrpLinesRec.LOCKTABLE( FALSE);*/

        /* First delete the detail lines */
        GrpLinesRec.SetRange("Employee Group", Code);
        GrpLinesRec.DeleteAll;

        /* Delete the 'parent record'*/
        Delete;

        /* Disable the locking effect */
        Commit;

    end;

    trigger OnModify()
    begin
        if (GrpCodeRec.Code <> Code) and
             (GrpCodeRec.Code <> '') then begin
            if Confirm(StrSubstNo('Do you want to change %1?', FieldName(Code)), false) then begin
                GrpCodeRec.SetRange(Code, GrpCodeRec.Code);
                "Search Name" := GrpCodeRec."Search Name";
            end;
        end;
    end;

    var
        GrpCodeRec: Record "Payroll-Employee Group Header.";
        GrpLinesRec: Record "Payroll-Employee Group Lines.";
        CursorPos: Integer;
        Ok: Boolean;
        PostGrpRec: Record "Payroll-Posting Group Header.";
        PGrpCode: Code[10];
        EDRec: Record "Payroll-E/D Codes.";
        GrossEDCode: Code[20];
        GenPCode: Codeunit "General Purpose Codeunit";
        EDType: Option " ","NSITF Employee","NSITF Employer","Gross Salary","Pension Employee","Pension Employer";
        EmpContRec: Record "Employment Contract";
        EmpGrp: Code[10];
        gg: Decimal;
        GrossFilter: Text[30];
        EmpGrpStep: Code[10];
        BasicEDCode: Code[10];

    //[Scope('OnPrem')]
    procedure GetGross(EmpGrpCode: Code[10]): Decimal
    begin
        //GrossEDCode := GenPCode.GetGrossED(EDType::"Gross Salary");

        if not (EmpContRec.Get(EmpGrpCode)) then exit(0);

        EmpGrp := EmpContRec.Category;
        if GrpCodeRec.Get(EmpGrp) then begin
            GrpCodeRec.CalcFields(GrpCodeRec."Gross Pay");
            exit(GrpCodeRec."Gross Pay");
        end
        else
            exit(0);


        /*
        IF EmpContRec.GET(EmpGrpCode) THEN
          BEGIN
            EmpGrp := EmpContRec.Category;
        
            GrpLinesRec.SETRANGE(GrpLinesRec."Employee Group",EmpGrpCode);
            IF GrpLinesRec.FIND('-') THEN
              BEGIN
                GrpLinesRec.SETRANGE(GrpLinesRec."E/D Code",GrossEDCode);
                GrpLinesRec.FIND('-');
        //        GrpLinesRec.CALCFIELDS(GrpLinesRec."Default Amount");
                EXIT(GrpLinesRec."Default Amount");
              END
           END
        ELSE
          EXIT(0);
        */

    end;

    //[Scope('OnPrem')]
    procedure GetGrade(GrpCode: Code[10]): Code[2]
    begin
        if GrpCodeRec.Get(GrpCode) then exit(GrpCodeRec.Grade);
    end;

    //[Scope('OnPrem')]
    procedure GetStep(GrpCode: Code[10]): Code[2]
    begin
        if GrpCodeRec.Get(GrpCode) then exit(GrpCodeRec.Step);
    end;

    //[Scope('OnPrem')]
    procedure GetGrpCode(Grd: Code[2]; Stp: Code[2]): Code[10]
    begin
        GrpCodeRec.SetRange(Grade, Grd);
        GrpCodeRec.SetRange(Step, Stp);
        if GrpCodeRec.Find('-') then exit(GrpCodeRec.Code);
    end;

    //[Scope('OnPrem')]
    procedure GetGroupFromGross(GrossAmount: Decimal; Criteria: Option LT,GT,EQ,LE,GE,NE): Code[10]
    begin
        GrossEDCode := GenPCode.GetGrossED(EDType::"Gross Salary");

        case Criteria of
            Criteria::LT:
                GrossFilter := '<' + Format(GrossAmount);
            Criteria::GT:
                GrossFilter := '>' + Format(GrossAmount);
            Criteria::EQ:
                GrossFilter := '=' + Format(GrossAmount);
            Criteria::LE:
                GrossFilter := '<=' + Format(GrossAmount);
            Criteria::GE:
                GrossFilter := '>=' + Format(GrossAmount);
            Criteria::NE:
                GrossFilter := '<>' + Format(GrossAmount);
        end;

        GrpLinesRec.Reset;
        GrpLinesRec.SetRange(GrpLinesRec."E/D Code", GrossEDCode);
        GrpLinesRec.SetCurrentKey(GrpLinesRec."Default Amount");
        GrpLinesRec.SetFilter(GrpLinesRec."Default Amount", GrossFilter);

        if GrpLinesRec.Find('+') then
            exit(GrpLinesRec."Employee Group")
        else
            exit(GrossEDCode);
    end;

    //[Scope('OnPrem')]
    procedure GetBasic(EmpGrpCode: Code[10]): Decimal
    begin

        EDRec.SetRange(EDRec."Control Type", EDRec."Control Type"::Basic);
        EDRec.Find('-');
        BasicEDCode := EDRec."E/D Code";

        GrpLinesRec.SetRange(GrpLinesRec."Employee Group", EmpGrpCode);
        GrpLinesRec.SetRange(GrpLinesRec."E/D Code", BasicEDCode);
        if GrpLinesRec.Find('-') then
            exit(GrpLinesRec."Default Amount")
        else
            exit(0);
    end;
}

