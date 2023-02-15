table 50007 "Payroll-Payslip Header."
{
    // Created           : FTN, 8/3/93
    // File name         : KI03b P.Roll Header
    // Comments          : Just to test the Header card that is intended to be used
    //                     as the main user interface for entering periodic employee
    //                     payroll details.
    // File details      : Primary Key is;
    //                      Payroll Period, Employee No
    //                   : Relations;
    //                      To Employee files
    // Display fields are: Period start, Period end and Period name, Employee name

    DataCaptionFields = "Payroll Period", "Employee No", "Employee Name";
    LookupPageID = "Payslip Header Survey.";

    fields
    {
        field(1; "Payroll Period"; Code[20])
        {
            NotBlank = true;
            TableRelation = "Payroll-Periods.";

            trigger OnValidate()
            begin
                PayPeriodRec.Get("Payroll Period");
                begin
                    "Period Start" := PayPeriodRec."Start Date";
                    "Period End" := PayPeriodRec."End Date";
                    "Period Name" := PayPeriodRec.Name;
                end;
            end;
        }
        field(2; "Period Start"; Date)
        {
            Editable = false;
        }
        field(3; "Period End"; Date)
        {
            Editable = false;
        }
        field(4; "Period Name"; Text[40])
        {
            Editable = false;
        }
        field(5; Company; Code[20])
        {
            Editable = false;
        }
        field(7; Section; Code[20])
        {
            Editable = false;
        }
        field(8; "Employee No"; Code[20])
        {
            TableRelation = Employee;

            trigger OnValidate()
            begin
                EmployeeRec.Get("Employee No");
                begin
                    "Employee Name" := EmployeeRec.FullName;
                    "Global Dimension 1 Code" := EmployeeRec."Global Dimension 1 Code";
                    "Global Dimension 2 Code" := EmployeeRec."Global Dimension 2 Code";
                    ///////////////////  Company := EmployeeRec.Company;
                    //////////////////  Section := EmployeeRec.Section;
                    "Customer Number" := EmployeeRec."SAM Number";
                    Designation := EmployeeRec.Designation;
                end;
            end;
        }
        field(9; "Employee Name"; Text[40])
        {
            Editable = false;
        }
        field(11; "Closed?"; Boolean)
        {
            Editable = false;
        }
        field(12; "Gross Pay"; Decimal)
        {
            Editable = false;
        }
        field(13; "Tax Charged"; Decimal)
        {
            Editable = false;
        }
        field(14; "Tax Deducted"; Decimal)
        {
            Editable = false;
        }
        field(15; "Taxable Pay"; Decimal)
        {
            Editable = false;
        }
        field(16; "Total Deductions"; Decimal)
        {
            Editable = false;
        }
        field(17; "Net Pay Due"; Decimal)
        {
            Editable = false;
        }
        field(18; "Total Relief"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(19; "Global Dimension 1 Code"; Code[10])
        {
            CaptionClass = '1,1,1';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(20; "Global Dimension 2 Code"; Code[10])
        {
            CaptionClass = '1,1,2';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(21; "Customer Number"; Code[20])
        {
            TableRelation = Customer;
        }
        field(22; Designation; Text[30])
        {
        }
        field(23; EDFILTER; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Payroll-E/D Codes."."E/D Code";
        }
        field(24; Edvalue; Decimal)
        {
            CalcFormula = Sum ("Payroll-Payslip Lines.".Amount WHERE ("Payroll Period" = FIELD ("Payroll Period"),
                                                                     "Employee No" = FIELD ("Employee No"),
                                                                     "E/D Code" = FIELD (EDFILTER)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Debit Amount"; Decimal)
        {
            CalcFormula = Sum ("Payroll-Payslip Lines.".Amount WHERE ("Payroll Period" = FIELD ("Payroll Period"),
                                                                     "Employee No" = FIELD ("Employee No"),
                                                                     "Debit Account" = FILTER (<> '')));
            FieldClass = FlowField;
        }
        field(26; "Credit Amount"; Decimal)
        {
            CalcFormula = Sum ("Payroll-Payslip Lines.".Amount WHERE ("Payroll Period" = FIELD ("Payroll Period"),
                                                                     "Employee No" = FIELD ("Employee No"),
                                                                     "Credit Account" = FILTER (<> '')));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Payroll Period", "Employee No")
        {
            Clustered = true;
        }
        key(Key2; "Employee No", "Payroll Period")
        {
        }
        key(Key3; Company, "Employee No", "Payroll Period")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        //AAA
        if "Closed?" then
            Error('Entries for this Employee/Period closed. Nothing can be deleted');

        /* Confirm */
        /*IF NOT CONFIRM ('All entries for this employee in this period '+
                        'will be deleted!'+
                        'Proceed with Deletion?    ')
        THEN
          ERROR ('Nothing was deleted');
        */
        /* Lock 'parent' and 'child' files*/
        LockTable();
        PayLinesRec.LockTable();

        /* First delete the detail lines */
        PayLinesRec.SetRange("Payroll Period", "Payroll Period");
        PayLinesRec.SetRange("Employee No", "Employee No");
        PayLinesRec.DeleteAll;

        /* Delete the 'parent record'*/
        Delete;

        /* Disable the locking effect */
        Commit;

    end;

    trigger OnInsert()
    begin
        /* Create the payroll entry lines. The entries are copied from the employee group entry lines.*/

        /* Get the employee group number/code */
        EmployeeRec.Get("Employee No");

        /* Delimit the Employee group lines appropriately */
        EmpGrpLinesRec.Init;
        EmpGrpLinesRec."Employee Group" := EmployeeRec."Employee Group";
        EmpGrpLinesRec."E/D Code" := '';
        EmpGrpLinesRec.SetRange("Employee Group", EmployeeRec."Employee Group");
        if EmpGrpLinesRec.Count = 0 then begin
            EmpGrpLinesRec.Reset;
            exit
        end;

        /* Lock the Payroll Lines Entry file */
        //AAA PayLinesRec.LOCKTABLE();

        /* Transfer the E/D lines from Employe Group lines to Payroll Lines */
        EmpGrpLinesRec.Find('>');
        begin
            PayLinesRec."Payroll Period" := "Payroll Period";
            PayLinesRec."Employee No" := "Employee No";
        end;
        while (EmpGrpLinesRec."Employee Group" = EmployeeRec."Employee Group") do begin
            PayLinesRec.Init;
            EDFileRec.Get(EmpGrpLinesRec."E/D Code");
            begin
                PayLinesRec."Payslip Group ID" := EDFileRec."Payslip Group ID";
                PayLinesRec."Pos. In Payslip Grp." := EDFileRec."Pos. In Payslip Grp.";
                PayLinesRec."Payslip appearance" := EDFileRec."Payslip appearance";
                PayLinesRec.Units := EDFileRec.Units;
                PayLinesRec.Rate := EDFileRec.Rate;
                PayLinesRec."Overline Column" := EDFileRec."Overline Column";
                PayLinesRec."Underline Amount" := EDFileRec."Underline Amount";
            end;        /* Payslip Grp/Pos */
            begin
                PayLinesRec."E/D Code" := EmpGrpLinesRec."E/D Code";
                PayLinesRec.Units := EmpGrpLinesRec.Units;
                PayLinesRec.Rate := EmpGrpLinesRec.Rate;
                PayLinesRec.Quantity := EmpGrpLinesRec.Quantity;
                PayLinesRec.Flag := EmpGrpLinesRec.Flag;
                PayLinesRec.Amount := EmpGrpLinesRec."Default Amount";
            end;   /* Rate,Units,Amount,... */
            if BookGrLinesRec.Get(EmployeeRec."Posting Group",
            PayLinesRec."E/D Code") then begin
                begin
                    PayLinesRec."Debit Account" := BookGrLinesRec."Debit Account No.";
                    PayLinesRec."Credit Account" := BookGrLinesRec."Credit Account No.";
                    PayLinesRec."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
                    PayLinesRec."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
                    PayLinesRec."Global Dimension 1 Code" := BookGrLinesRec."Global Dimension 1 Code";
                    PayLinesRec."Global Dimension 2 Code" := BookGrLinesRec."Global Dimension 2 Code";
                end; /* Debit/Credit accounts*/
                if not BookGrLinesRec."Transfer Department" then
                    PayLinesRec."Global Dimension 1 Code" := ''
                else
                    if PayLinesRec."Global Dimension 1 Code" = '' then
                        PayLinesRec."Global Dimension 1 Code" := EmployeeRec."Global Dimension 1 Code";

                if not BookGrLinesRec."Transfer Business Units" then
                    PayLinesRec."Global Dimension 2 Code" := ''
                else
                    if PayLinesRec."Global Dimension 2 Code" = '' then
                        PayLinesRec."Global Dimension 2 Code" := EmployeeRec."Global Dimension 2 Code";

                if BookGrLinesRec."Debit Acc. Type" = 1 then
                    if EmployeeRec."SAM Number" <> '' then
                        PayLinesRec."Debit Account" := EmployeeRec."SAM Number";

                if BookGrLinesRec."Credit Acc. Type" = 1 then
                    if EmployeeRec."SAM Number" <> '' then
                        PayLinesRec."Credit Account" := EmployeeRec."SAM Number";
            end;
            PayLinesRec.Insert;
            if EmpGrpLinesRec.Next = 0 then begin
                EmpGrpLinesRec.Reset;
                Commit;
                exit
            end;
        end;
        Commit;

    end;

    var
        PayPeriodRec: Record "Payroll-Periods.";
        CompanyRec: Record "Payroll-Banks.";
        DepartRec: Record "Dimension Value";
        EmployeeRec: Record Employee;
        PayLinesRec: Record "Payroll-Payslip Lines.";
        EmpGrpRec: Record "Payroll-Employee Group Header.";
        EmpGrpLinesRec: Record "Payroll-Employee Group Lines.";
        EDFileRec: Record "Payroll-E/D Codes.";
        BookGrLinesRec: Record "Payroll-Posting Group Line.";
}

