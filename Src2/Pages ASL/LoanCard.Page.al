page 50019 "Loan Card."
{
    PageType = Card;
    SourceTable = "Loan.";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Loan ID"; "Loan ID")
                {
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin

                        if AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field("Staff No."; "Staff No.")
                {
                    ApplicationArea = All;
                }
                field("Staff Name"; "Staff Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Job Title"; "Job Title")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Department; Department)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(EmployeeGrp; EmployeeGrp)
                {
                    Caption = 'Employee Grade/Step';
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Emp. Status"; "Emp. Status")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Loan Type"; "Loan Type")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Loan ED"; "Loan ED")
                {
                    ApplicationArea = All;
                }
                field("Journal Batch"; "Journal Batch")
                {
                    ApplicationArea = All;
                }
                field("Loan Created"; "Loan Created")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
            }
            group(Booking)
            {
                Caption = 'Booking';
                field("Acct. Type"; "Acct. Type")
                {
                    ApplicationArea = All;
                }
                field("Acct. No."; "Acct. No.")
                {
                    TableRelation = IF ("Acct. Type" = CONST(Finance)) "G/L Account"
                    ELSE
                    IF ("Acct. Type" = CONST(Staff)) Customer WHERE("No." = FILTER('E' .. 'F'))
                    ELSE
                    IF ("Acct. Type" = CONST(Supplier)) Vendor;
                    ApplicationArea = All;
                }
                field("Posting Date for Loan"; "Posting Date for Loan")
                {
                    ApplicationArea = All;
                }
                field("Voucher No. for Loan"; "Voucher No. for Loan")
                {
                    ApplicationArea = All;
                }
                field("Counter Acct. Type"; "Counter Acct. Type")
                {
                    ApplicationArea = All;
                }
                field("Counter Acct. No."; "Counter Acct. No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
            group(Status)
            {
                Caption = 'Status';
                field("Loan Amount"; "Loan Amount")
                {
                    ApplicationArea = All;
                }
                field("Number of Payments"; "Number of Payments")
                {
                    ApplicationArea = All;
                }
                field("Interest Percent"; "Interest Percent")
                {
                    ApplicationArea = All;
                }
                field(LPlusInt; LPlusInt)
                {
                    Caption = 'Loan Plus Interest';
                    Editable = false;
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("Monthly Repayment"; "Monthly Repayment")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("Remaining Amount"; "Remaining Amount")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("AnnualBasic(1/2)"; "AnnualBasic(1/2)")
                {
                    Editable = false;
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("Start Period"; "Start Period")
                {
                    ApplicationArea = All;
                }
                field("Open(Y/N)"; "Open(Y/N)")
                {
                    ApplicationArea = All;
                }
                field("Suspended(Y/N)"; "Suspended(Y/N)")
                {
                    ApplicationArea = All;
                }
                field("MD. Approved"; "MD. Approved")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Loan")
            {
                Caption = '&Loan';
                action("Gen. Staff Acct.")
                {
                    Caption = 'Gen. Staff Acct.';
                    Description = 'Generate Vendor Account from Employee List';
                    Image = Process;
                    Promoted = true;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        employee.SetRange("No.", "Staff No.");
                        REPORT.Run(REPORT::"Update RM data  Correction", false, false, employee);
                    end;
                }
            }
        }
        area(processing)
        {
            action("&Create Loan Entry")
            {
                Caption = '&Create Loan Entry';
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    InserGlLine;
                    Message('Job Completed!');
                end;
            }
        }
        area(reporting)
        {
            group(Action5)
            {
                action("Outstanding Loan")
                {
                    Caption = 'Outstanding Loan';
                    Image = "Report";
                    RunObject = Report "OUTSTANDING LOANS";
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        employee: Record Employee;
}

