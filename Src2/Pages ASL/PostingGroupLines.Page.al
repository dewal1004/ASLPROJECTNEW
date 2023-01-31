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
                    ApplicationArea = All;
                }
                field("Debit Account No."; "Debit Account No.")
                {
                    ApplicationArea = All;
                }
                field("Credit Account No."; "Credit Account No.")
                {
                    ApplicationArea = All;
                }
                field("Transfer Department"; "Transfer Department")
                {
                    ApplicationArea = All;
                }
                field("Transfer Business Units"; "Transfer Business Units")
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

