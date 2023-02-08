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
                field("Deposit ID"; "Deposit ID")
                {
                    ApplicationArea = All;
                }
                field("Bank Acc. No."; "Bank Acc. No.")
                {
                    ApplicationArea = All;
                }
                field("Bank Name"; "Bank Name")
                {
                    ApplicationArea = All;
                }
                field("Date of Deposit"; "Date of Deposit")
                {
                    ApplicationArea = All;
                }
                field("Deposit Balance"; "Deposit Balance")
                {
                    ApplicationArea = All;
                }
                field("Maturity Date"; "Maturity Date")
                {
                    ApplicationArea = All;
                }
                field("Interest Rate"; "Interest Rate")
                {
                    ApplicationArea = All;
                }
                field("Interest accruing on deposit"; "Interest accruing on deposit")
                {
                    ApplicationArea = All;
                }
                field("Amount of deposit"; "Amount of deposit")
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

