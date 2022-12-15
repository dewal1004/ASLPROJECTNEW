page 50014 "Posting Group Lines."
{
    PageType = ListPart;
    SourceTable = "Payroll-Posting Group Line.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("E/D Code"; "E/D Code")
                {
                }
                field("Debit Account No."; "Debit Account No.")
                {
                }
                field("Credit Account No."; "Credit Account No.")
                {
                }
                field("Transfer Department"; "Transfer Department")
                {
                }
                field("Transfer Business Units"; "Transfer Business Units")
                {
                }
            }
        }
    }

    actions
    {
    }
}

