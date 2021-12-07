table 50005 "Loan."
{
    DataCaptionFields = "Loan ID";
    LookupPageID = "Loan List";

    fields
    {
        field(1; "Loan ID"; Code[10])
        {
        }
        field(2; "Staff No."; Code[20])
        {
            NotBlank = true;
            TableRelation = Employee."No.";

            trigger OnValidate()
            begin
                StaffRec.Get("Staff No.");
                "Staff Name" := StaffRec.FullName;
                "Job Title" := StaffRec."Job Title";
                Department := StaffRec."Global Dimension 1 Code";
                "Date of Joining" := StaffRec."Employment Date";
                "Acct. Type" := StaffRec."Acct. type";
                "Acct. No." := StaffRec."Acct. No";
                EmployeeGrp := StaffRec."Employee Group";
                "Emp. Status" := StaffRec.Status;
                "AnnualBasic(1/2)" := (12 * Payrec.GetBasic(StaffRec."Employee Group")) / 2;

                if CustRec.Get("Acct. No.") then begin
                    CustRec.CalcFields(CustRec."Balance (LCY)");
                    if CustRec."Balance (LCY)" < 0 then
                        Message('Staff Loan Balance is %1, \'
                               + 'MD''s approval would be required to complete the operation', -1 * CustRec."Balance (LCY)");
                end;
            end;
        }
        field(3; "Staff Name"; Text[40])
        {
            NotBlank = true;
        }
        field(4; "Loan Type"; Option)
        {
            OptionMembers = Advance,IOU,Loan,Car,Housing,Incidental,Personal,Rent;

            trigger OnValidate()
            begin
                Description := Format("Loan Type");
                "Journal Batch" := Format("Loan Type");
            end;
        }
        field(5; Description; Text[30])
        {
            NotBlank = true;
        }
        field(6; "Acct. Type"; Option)
        {
            OptionMembers = Finance,Staff,Supplier;
        }
        field(7; "Acct. No."; Code[20])
        {
            TableRelation = IF ("Acct. Type" = CONST (Finance)) "G/L Account"."No."
            ELSE
            IF ("Acct. Type" = CONST (Staff)) Customer."No."
            ELSE
            IF ("Acct. Type" = CONST (Supplier)) Vendor."No.";
        }
        field(8; "Counter Acct. Type"; Option)
        {
            OptionMembers = Finance,Staff,Supplier;
        }
        field(9; "Counter Acct. No."; Code[20])
        {
            TableRelation = IF ("Counter Acct. Type" = CONST (Finance)) "G/L Account"."No."
            ELSE
            IF ("Counter Acct. Type" = CONST (Staff)) Customer."No." WHERE ("No." = FILTER ('E' .. 'F'))
            ELSE
            IF ("Counter Acct. Type" = CONST (Supplier)) Vendor."No.";
        }
        field(10; "Loan Amount"; Decimal)
        {
            MinValue = 0;

            trigger OnValidate()
            begin
                if ("Loan Amount" > "AnnualBasic(1/2)") then
                    Message('The Loan is more than 1/2 of employee Annual Basic!');
                if ("Number of Payments" <> 0) then
                    "Monthly Repayment" := Round(LPlusInt / "Number of Payments", 0.01, '>')
                else
                    "Monthly Repayment" := 0;
            end;
        }
        field(11; "Start Period"; Code[10])
        {
            TableRelation = "Payroll-Periods."."Period Code";
        }
        field(12; "Number of Payments"; Integer)
        {
            MinValue = 0;

            trigger OnValidate()
            begin
                if ("Number of Payments" <> 0) then
                    "Monthly Repayment" := Round(LPlusInt / "Number of Payments", 0.01, '>')
                else
                    "Monthly Repayment" := 0;
            end;
        }
        field(13; "Monthly Repayment"; Decimal)
        {

            trigger OnValidate()
            begin
                if ("Monthly Repayment" <> 0) then
                    "Number of Payments" := Round(LPlusInt / "Monthly Repayment", 1, '>')
                else
                    "Number of Payments" := 0;
            end;
        }
        field(14; "Open(Y/N)"; Boolean)
        {
        }
        field(15; "Suspended(Y/N)"; Boolean)
        {
        }
        field(16; "Loan ED"; Code[10])
        {
            TableRelation = "Payroll ED Codes."."E/D Code";

            trigger OnValidate()
            begin
                EDRec.Get("Loan ED");
                if not EDRec."Loan (Y/N)" then Error('The selected ED Code is not a loan code!~');
            end;
        }
        field(17; "Remaining Amount"; Decimal)
        {
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Customer No." = FIELD ("Acct. No."),
                                                                                 "Loan ID" = FIELD ("Loan ID")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Posting Date for Loan"; Date)
        {
        }
        field(19; "Voucher No. for Loan"; Code[10])
        {
        }
        field(20; "Journal Batch"; Code[10])
        {
            TableRelation = "Gen. Journal Batch".Name;
            ValidateTableRelation = false;
        }
        field(21; "Loan Created"; Boolean)
        {
        }
        field(22; "Actual Ledger Bal."; Decimal)
        {
            Editable = false;
            FieldClass = Normal;
        }
        field(23; "Interest Percent"; Decimal)
        {
            DecimalPlaces = 2 : 2;
            MaxValue = 100;
            MinValue = 0;

            trigger OnValidate()
            begin
                if ("Number of Payments" <> 0) then
                    "Monthly Repayment" := Round(LPlusInt / "Number of Payments", 0.01, '>')
                else
                    "Monthly Repayment" := 0;
            end;
        }
        field(50018; Department; Text[30])
        {
        }
        field(50019; "Date of Joining"; Date)
        {
        }
        field(50020; EmployeeGrp; Code[10])
        {
        }
        field(50021; "Emp. Status"; Option)
        {
            OptionMembers = Active,Inactive,Terminated;
        }
        field(50022; "AnnualBasic(1/2)"; Decimal)
        {
        }
        field(50023; "MD. Approved"; Boolean)
        {

            trigger OnValidate()
            begin
                PaySetup.Reset;
                PaySetup.Find('-');
                if (UserId <> PaySetup."MD ID") and
                  (UserId <> PaySetup."Accountant 1") and
                  (UserId <> PaySetup."Accountant 2") and
                  (UserId <> PaySetup."Accountant 3") then
                    Error('Please refer case to System Administrator');
            end;
        }
        field(50024; "Loan ID Filter"; Code[10])
        {
        }
        field(50025; "Job Title"; Text[30])
        {
        }
    }

    keys
    {
        key(Key1; "Loan ID")
        {
            Clustered = true;
        }
        key(Key2; "Staff No.", "Start Period", "Open(Y/N)", "Suspended(Y/N)")
        {
        }
        key(Key3; "Loan Type", "Posting Date for Loan", "Voucher No. for Loan", "Staff No.")
        {
            SumIndexFields = "Loan Amount";
        }
        key(Key4; "Staff No.", "Loan ID")
        {
            SumIndexFields = "Loan Amount";
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        CalcFields("Remaining Amount");
        if "Remaining Amount" <> 0 then Error('Loan has not been fully repaid, cannot be deleted!');
    end;

    trigger OnInsert()
    begin
        if "Loan ID" = '' then begin
            PaySetup.Reset;
            PaySetup.Find('-');
            PaySetup.TestField(PaySetup."Loan Nos.");
            NoSeriesMgt.InitSeries(PaySetup."Loan Nos.", PaySetup."Loan Nos.", 0D, "Loan ID", PaySetup."Loan Nos.");
            "Counter Acct. Type" := "Counter Acct. Type"::Finance;
            "Counter Acct. No." := PaySetup."Staff Loans Control Account";
        end;
    end;

    trigger OnModify()
    begin
        TestField("Loan ID");
        TestField("Staff No.");
        TestField(Description);
        TestField("Acct. No.");
        TestField("Loan Amount");
        TestField("Start Period");
        TestField("Monthly Repayment");
        TestField("Loan ED");
        TestField("Number of Payments");

        userrec.Get(UserId);

        if "Loan Created" and (not userrec."Create Loan") then begin
            if ("Loan Amount" <> xRec."Loan Amount") or
               ("Start Period" <> xRec."Start Period") or
               ("Interest Percent" <> xRec."Interest Percent") then
                Error('You Cannot MODIFY a Created Loan!');
        end;
    end;

    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        StaffRec: Record Employee;
        EDRec: Record "Payroll ED Codes.";
        GlRec: Record "Gen. Journal Line";
        GlRec1: Record "Gen. Journal Line";
        ACSETREC: Record "General Ledger Setup";
        LoanRec: Record "Loan.";
        Genbatch: Record "Gen. Journal Batch";
        PaySetup: Record "ASL Payroll Setup";
        Payrec: Record "Payroll-Employee Group Header.";
        VendRec: Record Vendor;
        CustRec: Record Customer;
        EmGrospay: Decimal;
        EmGrade: Code[10];
        userrec: Record "User Setup";

    //[Scope('Internal')]
    procedure InserGlLine()
    begin
        userrec.Get(UserId);
        if not userrec."Create Loan" then Error('You may not create Loan');
        ApprovedLoan;
        TestField("Loan ID");
        TestField("Staff No.");
        //SETFILTER();
        CalcFields("Remaining Amount");
        if "Remaining Amount" > 0 then
            Error('The loan cannot be posted -\' +
                  'Has been posted previously!');
        if "Loan Created" then Error('Loan Has been Created Before');
        StaffRec.Get("Staff No.");
        TestField("Journal Batch");
        if not Genbatch.Get('GENERAL', "Journal Batch") then begin
            Genbatch.Init;
            Genbatch."Journal Template Name" := 'GENERAL';
            Genbatch.Name := "Journal Batch";
            Genbatch."Shortcut Dimension 1 Code" := StaffRec."Global Dimension 1 Code";
            Genbatch."Shortcut Dimension 2 Code" := StaffRec."Region Code";
            Genbatch.Insert;
        end;

        GlRec.Init;
        GlRec."Loan ID" := "Loan ID";

        /*Transfer Loan Amount*/
        GlRec.Validate("Journal Template Name", 'GENERAL');
        GlRec.Validate("Journal Batch Name", "Journal Batch");
        GlRec1.SetRange(GlRec1."Journal Template Name", GlRec."Journal Template Name");
        GlRec1.SetRange(GlRec1."Journal Batch Name", GlRec."Journal Batch Name");
        if GlRec1.Find('+') then
            GlRec."Line No." := GlRec1."Line No." + 10 else
            GlRec."Line No." := 10;

        TestField("Loan ID");
        TestField("Staff No.");
        TestField("Acct. No.");
        TestField("Loan Amount");
        TestField("Loan ED");
        TestField("Posting Date for Loan");
        TestField("Voucher No. for Loan");

        GlRec.Validate("Account Type", "Acct. Type");
        GlRec.Validate("Account No.", "Acct. No.");
        GlRec.Validate("Posting Date", "Posting Date for Loan");
        GlRec.Validate("Shortcut Dimension 1 Code", StaffRec."Global Dimension 1 Code");
        GlRec.Validate("Document No.", "Voucher No. for Loan");
        GlRec.Validate("External Document No.", "Voucher No. for Loan");
        GlRec.Description := CopyStr("Staff Name" + ' ' + Description, 1, MaxStrLen(GlRec.Description));
        GlRec.Validate(Amount, "Loan Amount");
        GlRec."Shortcut Dimension 2 Code" := StaffRec."Global Dimension 2 Code";

        GlRec.Insert;

        /*Transfer Interest Amount*/
        if "Interest Percent" <> 0 then begin
            GlRec.Validate("Journal Template Name", 'GENERAL');
            GlRec.Validate("Journal Batch Name", "Journal Batch");
            GlRec1.SetRange(GlRec1."Journal Template Name", GlRec."Journal Template Name");
            GlRec1.SetRange(GlRec1."Journal Batch Name", GlRec."Journal Batch Name");
            if GlRec1.Find('+') then
                GlRec."Line No." := GlRec1."Line No." + 10 else
                GlRec."Line No." := 20;

            TestField("Loan ID");
            TestField("Staff No.");
            TestField("Acct. No.");
            TestField("Loan Amount");
            TestField("Loan ED");
            TestField("Posting Date for Loan");
            TestField("Voucher No. for Loan");

            GlRec.Validate("Account Type", "Acct. Type");
            GlRec.Validate("Account No.", "Acct. No.");
            GlRec.Validate("Posting Date", "Posting Date for Loan");
            GlRec.Validate("Shortcut Dimension 1 Code", StaffRec."Global Dimension 1 Code");
            GlRec.Validate("Document No.", "Voucher No. for Loan");
            GlRec.Description := 'Interest for Loan ' + "Loan ID";
            GlRec.Validate(Amount, LPlusInt - "Loan Amount");

            /*Get the Interest Account*/
            PaySetup.Reset;
            PaySetup.Find('-');
            GlRec.Validate("Bal. Account Type", GlRec."Bal. Account Type"::"G/L Account");
            GlRec.Validate("Bal. Account No.", PaySetup."Staff Loans Interest Account");
            GlRec."Shortcut Dimension 2 Code" := StaffRec."Global Dimension 2 Code";
            GlRec."Loan ID" := "Loan ID";
            GlRec.Insert;
        end;

        "Loan Created" := true;
        Modify;

    end;

    //[Scope('Internal')]
    procedure AssistEdit(LRec: Record "Loan."): Boolean
    begin
        with LoanRec do begin
            LoanRec := Rec;
            PaySetup.Get;
            PaySetup.TestField(PaySetup."Loan Nos.");
            if NoSeriesMgt.SelectSeries(PaySetup."Loan Nos.", PaySetup."Loan Nos.", PaySetup."Loan Nos.")
            then begin
                PaySetup.Get;
                PaySetup.TestField(PaySetup."Loan Nos.");
                NoSeriesMgt.SetSeries("Loan ID");
                Rec := LoanRec;
                exit(true);
            end;
        end;
    end;

    //[Scope('Internal')]
    procedure LPlusInt(): Decimal
    begin
        exit("Loan Amount" * ("Interest Percent" + 100) / 100);
    end;

    //[Scope('Internal')]
    procedure ApprovedLoan()
    begin
        if CustRec.Get("Acct. No.") then begin
            CustRec.CalcFields(CustRec."Balance (LCY)");
            if (CustRec."Balance (LCY)" < 0) and not "MD. Approved" then
                Error('Previous Balance for Staff is %1 \+'
                     + 'MD approval is required for the next Loan', -1 * CustRec."Balance (LCY)");
        end;
    end;
}

