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

                    trigger OnAssistEdit()
                    begin

                        if AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field("Staff No."; "Staff No.")
                {
                }
                field("Staff Name"; "Staff Name")
                {
                    Editable = false;
                }
                field("Job Title"; "Job Title")
                {
                    Editable = false;
                }
                field(Department; Department)
                {
                    Editable = false;
                }
                field(EmployeeGrp; EmployeeGrp)
                {
                    Caption = 'Employee Grade/Step';
                    Editable = false;
                }
                field("Emp. Status"; "Emp. Status")
                {
                    Editable = false;
                }
                field("Loan Type"; "Loan Type")
                {
                }
                field(Description; Description)
                {
                }
                field("Loan ED"; "Loan ED")
                {
                }
                field("Journal Batch"; "Journal Batch")
                {
                }
                field("Loan Created"; "Loan Created")
                {
                    Editable = true;
                }
            }
            group(Booking)
            {
                Caption = 'Booking';
                field("Acct. Type"; "Acct. Type")
                {
                }
                field("Acct. No."; "Acct. No.")
                {
                    TableRelation = IF ("Acct. Type" = CONST (Finance)) "G/L Account"
                    ELSE
                    IF ("Acct. Type" = CONST (Staff)) Customer WHERE ("No." = FILTER ('E' .. 'F'))
                    ELSE
                    IF ("Acct. Type" = CONST (Supplier)) Vendor;
                }
                field("Posting Date for Loan"; "Posting Date for Loan")
                {
                }
                field("Voucher No. for Loan"; "Voucher No. for Loan")
                {
                }
                field("Counter Acct. Type"; "Counter Acct. Type")
                {
                }
                field("Counter Acct. No."; "Counter Acct. No.")
                {
                    Editable = false;
                }
            }
            group(Status)
            {
                Caption = 'Status';
                field("Loan Amount"; "Loan Amount")
                {
                }
                field("Number of Payments"; "Number of Payments")
                {
                }
                field("Interest Percent"; "Interest Percent")
                {
                }
                field(LPlusInt; LPlusInt)
                {
                    Caption = 'Loan Plus Interest';
                    Editable = false;
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
                field("Monthly Repayment"; "Monthly Repayment")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Remaining Amount"; "Remaining Amount")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("AnnualBasic(1/2)"; "AnnualBasic(1/2)")
                {
                    Editable = false;
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
                field("Start Period"; "Start Period")
                {
                }
                field("Open(Y/N)"; "Open(Y/N)")
                {
                }
                field("Suspended(Y/N)"; "Suspended(Y/N)")
                {
                }
                field("MD. Approved"; "MD. Approved")
                {
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
                }
            }
        }
    }

    var
        employee: Record Employee;
}

