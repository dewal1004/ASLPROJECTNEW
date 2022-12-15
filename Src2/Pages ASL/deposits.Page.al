page 50110 deposits
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
                }
                field("Bank Acc. No."; "Bank Acc. No.")
                {
                }
                field("Bank Name"; "Bank Name")
                {
                }
                field("Date of Deposit"; "Date of Deposit")
                {
                }
                field("Deposit Balance"; "Deposit Balance")
                {
                }
                field("Maturity Date"; "Maturity Date")
                {
                }
                field("Interest Rate"; "Interest Rate")
                {
                }
                field("Interest accruing on deposit"; "Interest accruing on deposit")
                {
                }
                field("Amount of deposit"; "Amount of deposit")
                {
                }
            }
        }
    }

    actions
    {
    }
}

