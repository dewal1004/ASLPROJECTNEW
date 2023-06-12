page 50110 "deposits"
{
    PageType = Card;
    SourceTable = DEPOSIT;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Deposit ID"; Rec."Deposit ID")
                {
                    ApplicationArea = All;
                }
                field("Bank Acc. No."; Rec."Bank Acc. No.")
                {
                    ApplicationArea = All;
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                }
                field("Date of Deposit"; Rec."Date of Deposit")
                {
                    ApplicationArea = All;
                }
                field("Deposit Balance"; Rec."Deposit Balance")
                {
                    ApplicationArea = All;
                }
                field("Maturity Date"; Rec."Maturity Date")
                {
                    ApplicationArea = All;
                }
                field("Interest Rate"; Rec."Interest Rate")
                {
                    ApplicationArea = All;
                }
                field("Interest accruing on deposit"; Rec."Interest accruing on deposit")
                {
                    ApplicationArea = All;
                }
                field("Amount of deposit"; Rec."Amount of deposit")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

