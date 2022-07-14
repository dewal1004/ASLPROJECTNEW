page 50020 "Loan List"
{
    CardPageID = "Loan Card.";
    PageType = List;
    SourceTable = "Loan.";
    UsageCategory = Lists;
    ApplicationArea = All,Basic;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Loan ID"; "Loan ID")
                {
                }
                field("Posting Date for Loan"; "Posting Date for Loan")
                {
                }
                field("Staff No."; "Staff No.")
                {
                }
                field("Staff Name"; "Staff Name")
                {
                }
                field("Job Title"; "Job Title")
                {
                    Editable = false;
                }
                field("Suspended(Y/N)"; "Suspended(Y/N)")
                {
                }
                field("Loan ED"; "Loan ED")
                {
                }
                field("Acct. No."; "Acct. No.")
                {
                }
                field("Remaining Amount"; "Remaining Amount")
                {
                }
                field("Loan Type"; "Loan Type")
                {
                }
                field("Start Period"; "Start Period")
                {
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

