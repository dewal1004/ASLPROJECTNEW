page 50020 "Loan List"
{
    CardPageID = "Loan Card.";
    PageType = List;
    SourceTable = "Loan.";
    UsageCategory = Lists;
    ApplicationArea = All, Basic;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Loan ID"; "Loan ID")
                {
                    ApplicationArea = All;
                }
                field("Posting Date for Loan"; "Posting Date for Loan")
                {
                    ApplicationArea = All;
                }
                field("Staff No."; "Staff No.")
                {
                    ApplicationArea = All;
                }
                field("Staff Name"; "Staff Name")
                {
                    ApplicationArea = All;
                }
                field("Job Title"; "Job Title")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Suspended(Y/N)"; "Suspended(Y/N)")
                {
                    ApplicationArea = All;
                }
                field("Loan ED"; "Loan ED")
                {
                    ApplicationArea = All;
                }
                field("Acct. No."; "Acct. No.")
                {
                    ApplicationArea = All;
                }
                field("Remaining Amount"; "Remaining Amount")
                {
                    ApplicationArea = All;
                }
                field("Loan Type"; "Loan Type")
                {
                    ApplicationArea = All;
                }
                field("Start Period"; "Start Period")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            group(Action7)
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

    trigger OnInit()
    begin
        CurrPage.LookupMode := true;
    end;

    trigger OnOpenPage()
    begin
        SetFilter("Remaining Amount", '<>0');
    end;
}

