pageextension 50291 pageextension50291 extends "Employee List"
{
    // GetBasic
    //  "No."
    // UNL-ASL3.60.01.007 (Santus) May 31, 2005
    layout
    {
        modify("No.")
        {
            StyleExpr = StyleText;
        }
        modify(FullName)
        {
            StyleExpr = StyleText;
        }
        modify("First Name")
        {
            StyleExpr = StyleText;
        }
        modify("Middle Name")
        {
            StyleExpr = StyleText;
        }
        modify("Last Name")
        {
            StyleExpr = StyleText;
        }
        modify(Initials)
        {
            StyleExpr = StyleText;
        }
        modify("Job Title")
        {
            StyleExpr = StyleText;
        }
        modify("Country/Region Code")
        {
            StyleExpr = StyleText;
        }
        modify("Phone No.")
        {
            StyleExpr = StyleText;
        }
        modify("Mobile Phone No.")
        {
            StyleExpr = StyleText;
        }
        modify("E-Mail")
        {
            StyleExpr = StyleText;
        }
        modify("Statistics Group Code")
        {
            StyleExpr = StyleText;
        }
        modify("Resource No.")
        {
            StyleExpr = StyleText;
        }
        modify("Search Name")
        {
            StyleExpr = StyleText;
        }

        //Unsupported feature: Property Modification (Name) on "Comment(Control 16)".


        //Unsupported feature: Property Modification (SourceExpr) on "Comment(Control 16)".


        //Unsupported feature: Property Modification (ImplicitType) on "Comment(Control 16)".

        addafter("Last Name")
        {
            field("NSITF Number"; "NSITF Number")
            {
            }
        }
        addafter(Initials)
        {
            field("Employee Group"; "Employee Group")
            {
                Editable = false;
                StyleExpr = StyleText;
            }
            field("Bank Account"; "Bank Account")
            {
                StyleExpr = StyleText;
            }
            field("Employment Date"; "Employment Date")
            {
                StyleExpr = StyleText;
            }
            field("Birth Date"; "Birth Date")
            {
                StyleExpr = StyleText;
            }
        }
        addafter("Job Title")
        {
            field(Status; Status)
            {
                Style = Standard;
                StyleExpr = StyleText;
            }
            field(Blocked; Blocked)
            {
            }
            field("Posting Group"; "Posting Group")
            {
                StyleExpr = StyleText;
            }
            field("Global Dimension 1 Code"; "Global Dimension 1 Code")
            {
            }
        }
        addafter("Post Code")
        {
            field(Suspended; Suspended)
            {
                StyleExpr = StyleText;
            }
            field("<Termination Date>"; xRec."Termination Date")
            {
                Caption = 'Termination Date';
            }
            field(Grade; Grade)
            {
                StyleExpr = StyleText;
            }
            field(Step; Step)
            {
                StyleExpr = StyleText;
            }
        }
        addafter(Comment)
        {
            field(Basic; GetBasic("No."))
            {
                Caption = 'Basic';
            }
            field("Other Allowances"; GetED(EDNO[2]))
            {
                Caption = 'Other Allowances';
            }
            field(Housing; GetED(EDNO[3]))
            {
                Caption = 'Housing';
            }
            field(Transport; GetED(EDNO[4]))
            {
                Caption = 'Transport';
            }
            field("Balance (LCY)"; "Balance (LCY)")
            {
            }
        }
        addfirst(FactBoxes)
        {
            part(Control41; "Employee Picture")
            {
            }
        }
        moveafter("Resource No."; Comment)
    }
    actions
    {
        addfirst(reporting)
        {
            group(Action34)
            {
            }
            action("Monthly Payslip")
            {
                Caption = ' Monthly Payslip';
                Image = "Report";
                RunObject = Report "Monthly Payslip";
            }
            action("Payroll Report - NSITF")
            {
                Caption = 'Payroll Report - NSITF';
                Image = "Report";
                RunObject = Report "Payroll Report - NSITF";
            }
            action("Employee-Bank Acct")
            {
                Caption = 'Employee-Bank Acct';
                Image = "Report";
                RunObject = Report "Employee-Bank Acct";
            }
            action("Outstanding Loans")
            {
                Caption = 'Outstanding Loans';
                Image = "Report";
                RunObject = Report "OUTSTANDING LOANS";
            }
            action("Payroll Report")
            {
                Caption = 'Payroll Report';
                Image = "Report";
                RunObject = Report "Payroll Report";
            }
        }
    }

    var
        EDNO: array[20] of Code[20];
        StyleText: Text[20];


    //Unsupported feature: Code Insertion on "OnAfterGetRecord".

    trigger OnAfterGetRecord()
    begin

        SETRANGE("No.");
        StyleText := '';
        if Status = Status::Inactive then begin
            StyleText := 'Unfavorable';
        end else begin
            StyleText := 'standard'
        end;

        if Rec.Blocked = true then
            StyleText := 'Unfavorable'

    end;


    //Unsupported feature: Code Insertion on "OnInit".

    trigger OnOpenPage()
    //Parameters and return type have not been exported.
    begin
    
    EDNO[2]:='4000';//Basic+Hous+Transp
    EDNO[3]:='2600';//Housing
    EDNO[4]:='2700';//Transport
    
    end;

    local procedure AssistEdit(OldEmployee: Record Employee): Boolean
    begin

        /*(//Univision Start 6/11/01
        WITH Employee DO BEGIN
          Employee := Rec;
          HumanResSetup.GET;
          HumanResSetup.TESTFIELD("Employee Nos.");
          IF NoSeriesMgt.SelectSeries(HumanResSetup."Employee Nos.",OldEmployee."No. Series","No. Series") THEN BEGIN
            HumanResSetup.GET;
            HumanResSetup.TESTFIELD("Employee Nos.");
            NoSeriesMgt.SetSeries("No.");
            Rec := Employee;
            EXIT(TRUE);
          END;
        END;
        //Univision Finish 6/11/01
        )
        */

    end; 
}

