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
                field("Loan ID"; Rec."Loan ID")
                {
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin

                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field("Staff No."; Rec."Staff No.")
                {
                    ApplicationArea = All;
                }
                field("Staff Name"; Rec."Staff Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Job Title"; Rec."Job Title")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(EmployeeGrp; Rec.EmployeeGrp)
                {
                    Caption = 'Employee Grade/Step';
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Emp. Status"; Rec."Emp. Status")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Loan Type"; Rec."Loan Type")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Loan ED"; Rec."Loan ED")
                {
                    ApplicationArea = All;
                }
                field("Journal Batch"; Rec."Journal Batch")
                {
                    ApplicationArea = All;
                }
                field("Loan Created"; Rec."Loan Created")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
            }
            group(Booking)
            {
                Caption = 'Booking';
                field("Acct. Type"; Rec."Acct. Type")
                {
                    ApplicationArea = All;
                }
                field("Acct. No."; Rec."Acct. No.")
                {
                    TableRelation = IF ("Acct. Type" = CONST(Finance)) "G/L Account"
                    ELSE
                    IF ("Acct. Type" = CONST(Staff)) Customer WHERE("No." = FILTER('E' .. 'F'))
                    ELSE
                    IF ("Acct. Type" = CONST(Supplier)) Vendor;
                    ApplicationArea = All;
                }
                field("Posting Date for Loan"; Rec."Posting Date for Loan")
                {
                    ApplicationArea = All;
                }
                field("Voucher No. for Loan"; Rec."Voucher No. for Loan")
                {
                    ApplicationArea = All;
                }
                field("Counter Acct. Type"; Rec."Counter Acct. Type")
                {
                    ApplicationArea = All;
                }
                field("Counter Acct. No."; Rec."Counter Acct. No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
            group(Status)
            {
                Caption = 'Status';
                field("Loan Amount"; Rec."Loan Amount")
                {
                    ApplicationArea = All;
                }
                field("Number of Payments"; Rec."Number of Payments")
                {
                    ApplicationArea = All;
                }
                field("Interest Percent"; Rec."Interest Percent")
                {
                    ApplicationArea = All;
                }
                field(LPlusInt; Rec.LPlusInt)
                {
                    Caption = 'Loan Plus Interest';
                    Editable = false;
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("Monthly Repayment"; Rec."Monthly Repayment")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("Remaining Amount"; Rec."Remaining Amount")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("AnnualBasic(1/2)"; Rec."AnnualBasic(1/2)")
                {
                    Editable = false;
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("Start Period"; Rec."Start Period")
                {
                    ApplicationArea = All;
                }
                field("Open(Y/N)"; Rec."Open(Y/N)")
                {
                    ApplicationArea = All;
                }
                field("Suspended(Y/N)"; Rec."Suspended(Y/N)")
                {
                    ApplicationArea = All;
                }
                field("MD. Approved"; Rec."MD. Approved")
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
                        employee.SetRange("No.", Rec."Staff No.");
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
                    Rec.InserGlLine;
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

