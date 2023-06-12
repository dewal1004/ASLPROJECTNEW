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
                field("Loan ID"; Rec."Loan ID")
                {
                    ApplicationArea = All;
                }
                field("Posting Date for Loan"; Rec."Posting Date for Loan")
                {
                    ApplicationArea = All;
                }
                field("Staff No."; Rec."Staff No.")
                {
                    ApplicationArea = All;
                }
                field("Staff Name"; Rec."Staff Name")
                {
                    ApplicationArea = All;
                }
                field("Job Title"; Rec."Job Title")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Suspended(Y/N)"; Rec."Suspended(Y/N)")
                {
                    ApplicationArea = All;
                }
                field("Loan ED"; Rec."Loan ED")
                {
                    ApplicationArea = All;
                }
                field("Acct. No."; Rec."Acct. No.")
                {
                    ApplicationArea = All;
                }
                field("Remaining Amount"; Rec."Remaining Amount")
                {
                    ApplicationArea = All;
                }
                field("Loan Type"; Rec."Loan Type")
                {
                    ApplicationArea = All;
                }
                field("Start Period"; Rec."Start Period")
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
        Rec.SetFilter("Remaining Amount", '<>0');
    end;
}

