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
                ApplicationArea = All;
            }
        }
        addafter(Initials)
        {
            field("Employee Group"; "Employee Group")
            {
                Editable = false;
                StyleExpr = StyleText;
                ApplicationArea = All;
            }
            field("Bank Account"; "Bank Account")
            {
                StyleExpr = StyleText;
                ApplicationArea = All;
            }
            field("Employment Date"; "Employment Date")
            {
                StyleExpr = StyleText;
                ApplicationArea = All;
            }
            field("Birth Date"; "Birth Date")
            {
                StyleExpr = StyleText;
                ApplicationArea = All;
            }
        }
        addafter("Job Title")
        {
            field(Status; Status)
            {
                Style = Standard;
                StyleExpr = StyleText;
                ApplicationArea = All;
            }
            field(Blocked; Blocked)
            {
                ApplicationArea = All;
            }
            field("Posting Group"; "Posting Group")
            {
                StyleExpr = StyleText;
                ApplicationArea = All;
            }
            field("Global Dimension 1 Code"; "Global Dimension 1 Code")
            {
                ApplicationArea = All;
            }
        }
        addafter("Post Code")
        {
            field(Suspended; Suspended)
            {
                StyleExpr = StyleText;
                ApplicationArea = All;
            }
            field("<Termination Date>"; xRec."Termination Date")
            {
                Caption = 'Termination Date';
                ApplicationArea = All;
            }
            field(Grade; Grade)
            {
                StyleExpr = StyleText;
                ApplicationArea = All;
            }
            field(Step; Step)
            {
                StyleExpr = StyleText;
                ApplicationArea = All;
            }
        }
        addafter(Comment)
        {
            field(Basic; GetBasic("No."))
            {
                Caption = 'Basic';
                ApplicationArea = All;
            }
            field("Other Allowances"; GetED(EDNO[2]))
            {
                Caption = 'Other Allowances';
                ApplicationArea = All;
            }
            field(Housing; GetED(EDNO[3]))
            {
                Caption = 'Housing';
                ApplicationArea = All;
            }
            field(Transport; GetED(EDNO[4]))
            {
                Caption = 'Transport';
                ApplicationArea = All;
            }
            field("Balance (LCY)"; "Balance (LCY)")
            {
                ApplicationArea = All;
            }
        }
        addfirst(FactBoxes)
        {
            part(Control41; "Employee Picture")
            {
                ApplicationArea = All;
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
                ApplicationArea = All;
            }
            action("Payroll Report - NSITF")
            {
                Caption = 'Payroll Report - NSITF';
                Image = "Report";
                RunObject = Report "Payroll Report - NSITF";
                ApplicationArea = All;
            }
            action("Employee-Bank Acct")
            {
                Caption = 'Employee-Bank Acct';
                Image = "Report";
                RunObject = Report "Employee-Bank Acct";
                ApplicationArea = All;
            }
            action("Outstanding Loans")
            {
                Caption = 'Outstanding Loans';
                Image = "Report";
                RunObject = Report "OUTSTANDING LOANS";
                ApplicationArea = All;
            }
            action("Payroll Report")
            {
                Caption = 'Payroll Report';
                Image = "Report";
                RunObject = Report "Payroll Report";
                ApplicationArea = All;
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

        EDNO[2] := '4000';//Basic+Hous+Transp
        EDNO[3] := '2600';//Housing
        EDNO[4] := '2700';//Transport

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

