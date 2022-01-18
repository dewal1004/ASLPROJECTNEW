table 50013 "Monthly Variables Header."
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
    // LookupPageID = "Monthly Var. Header Survey.";  ***

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
        field(23; VariableFilter; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Payroll-E/D Codes."."E/D Code" WHERE ("Monthly Variable" = CONST (true));
        }
        field(24; VariableAmount; Decimal)
        {
            CalcFormula = Sum ("Monthly Variables Lines.".Amount WHERE ("Payroll Period" = FIELD ("Payroll Period"),
                                                                       "Employee No" = FIELD ("Employee No"),
                                                                       "E/D Code" = FIELD (VariableFilter)));
            Editable = false;
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
        /*IF "Closed?" THEN
          ERROR ('Entries for this Employee/Period closed. Nothing can be deleted');
        
        { Confirm }
        IF NOT CONFIRM ('All entries for this employee in this period '+
                        'will be deleted!'+
                        'Proceed with Deletion?    ')
        THEN
          ERROR ('Nothing was deleted');
        
        { Lock 'parent' and 'child' files}
         //AAA LOCKTABLE( FALSE);
         //AAA VarLinesRec.LOCKTABLE( FALSE);
        
        { First delete the detail lines }
         VarLinesRec.SETRANGE("Payroll Period", "Payroll Period");
         VarLinesRec.SETRANGE("Employee No", "Employee No");
         VarLinesRec.DELETEALL;
        
        { Delete the 'parent record'}
         DELETE;
        
        { Disable the locking effect }
        COMMIT ;
        */

    end;

    trigger OnInsert()
    begin
        /* Create the payroll entry lines.
          The entries are copied from the employee group entry lines.
        */

        /* Get the employee group number/code */
        // EmployeeRec.GET( "Employee No");//nitin


        //***Remarked to Prevent payslip Lines from being copied form Employee Group***//
        /*
        { Delimit the Employee group lines appropriately }
         EmpGrpLinesRec.INIT;
        EmpGrpLinesRec."Employee Group" :=  EmployeeRec."Employee Group";
        EmpGrpLinesRec."E/D Code" := '';
         EmpGrpLinesRec.SETRANGE("Employee Group", EmployeeRec."Employee Group");
        IF  EmpGrpLinesRec.COUNT = 0 THEN
        BEGIN
           EmpGrpLinesRec.RESET;
          EXIT
        END;
        
        { Lock the Payroll Lines Entry file }
           VarLinesRec.LOCKTABLE(FALSE);    //SQL does not allow function
        
        { Transfer the E/D lines from Employe Group lines to Payroll Lines }
         EmpGrpLinesRec.FIND( '>');
        BEGIN
          VarLinesRec."Payroll Period" := "Payroll Period";
          VarLinesRec."Employee No" := "Employee No";
        END;
        WHILE (EmpGrpLinesRec."Employee Group" = EmployeeRec."Employee Group") DO
        BEGIN
           VarLinesRec.INIT;
           EDFileRec.GET( EmpGrpLinesRec."E/D Code");
          BEGIN
            VarLinesRec."Payslip Group ID" := EDFileRec."Payslip Group ID";
            VarLinesRec."Pos. In Payslip Grp." := EDFileRec."Pos. In Payslip Grp.";
            VarLinesRec."Payslip appearance" := EDFileRec."Payslip appearance";
            VarLinesRec.Units := EDFileRec.Units;
            VarLinesRec.Rate := EDFileRec.Rate;
            VarLinesRec."Overline Column" := EDFileRec."Overline Column";
            VarLinesRec."Underline Amount" := EDFileRec."Underline Amount";
          END;        { Payslip Grp/Pos }
          BEGIN
            VarLinesRec."E/D Code" := EmpGrpLinesRec."E/D Code";
            VarLinesRec.Units := EmpGrpLinesRec.Units;
            VarLinesRec.Rate := EmpGrpLinesRec.Rate;
            VarLinesRec.Quantity := EmpGrpLinesRec.Quantity;
            VarLinesRec.Flag := EmpGrpLinesRec.Flag;
            VarLinesRec.Amount := EmpGrpLinesRec."Default Amount";
          END;   { Rate,Units,Amount,... }
          IF  BookGrLinesRec.GET( EmployeeRec."Posting Group",
          VarLinesRec."E/D Code") THEN BEGIN
            BEGIN
              VarLinesRec."Debit Account" := BookGrLinesRec."Debit Account No.";
              VarLinesRec."Credit Account" := BookGrLinesRec."Credit Account No.";
              VarLinesRec."Debit Acc. Type" := BookGrLinesRec."Debit Acc. Type";
              VarLinesRec."Credit Acc. Type" := BookGrLinesRec."Credit Acc. Type";
              VarLinesRec."Budget Center Code" := BookGrLinesRec."Budget Center Code";
              VarLinesRec."Cost Center Code" := BookGrLinesRec."Cost Center Code";
            END; { Debit/Credit accounts}
            IF NOT BookGrLinesRec."Transfer Budget Center" THEN
              VarLinesRec."Budget Center Code" := ''
            ELSE
            IF VarLinesRec."Budget Center Code" = '' THEN
              VarLinesRec."Budget Center Code" := EmployeeRec."Budget Center Code";
        
            IF NOT BookGrLinesRec."Transfer Cost Center" THEN
              VarLinesRec."Cost Center Code" := ''
            ELSE
            IF VarLinesRec."Cost Center Code" = '' THEN
              VarLinesRec."Cost Center Code" := EmployeeRec."Cost Center Code";
        
            IF BookGrLinesRec."Debit Acc. Type" = 1 THEN
              IF EmployeeRec."SAM Number" <> '' THEN
                VarLinesRec."Debit Account" := EmployeeRec."SAM Number" ;
        
            IF BookGrLinesRec."Credit Acc. Type" = 1 THEN
              IF EmployeeRec."SAM Number" <> '' THEN
                VarLinesRec."Credit Account" := EmployeeRec."SAM Number" ;
          END;
           VarLinesRec.INSERT;
          IF  EmpGrpLinesRec.NEXT = 0 THEN
          BEGIN
             EmpGrpLinesRec.RESET;
            COMMIT ;
            EXIT
          END;
        END;
        COMMIT;
        */
        //***Remarked to Prevent payslip Lines from being copied form Employee Group***//

    end;

    var
        PayPeriodRec: Record "Payroll-Periods.";
        CompanyRec: Record "Payroll-Banks.";
        DepartRec: Record "Dimension Value";
        EmployeeRec: Record Employee;
        VarLinesRec: Record "Monthly Variables Lines.";
        EmpGrpRec: Record "Payroll-Employee Group Header.";
        EmpGrpLinesRec: Record "Payroll-Employee Group Lines.";
        EDFileRec: Record "Payroll-E/D Codes.";
        BookGrLinesRec: Record "Payroll-Posting Group Line.";
}

