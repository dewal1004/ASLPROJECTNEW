page 50014 "Posting Group Lines."
{
    PageType = ListPart;
    SourceTable = "Payroll-Posting Group Line.";
    Caption = 'Posting Group Lines.';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("E/D Code"; Rec."E/D Code")
                {
                    ApplicationArea = All;
                }
                field("Debit Account No."; Rec."Debit Account No.")
                {
                    ApplicationArea = All;
                }
                field("Credit Account No."; Rec."Credit Account No.")
                {
                    ApplicationArea = All;
                }
                field("Transfer Department"; Rec."Transfer Department")
                {
                    ApplicationArea = All;
                }
                field("Transfer Business Units"; Rec."Transfer Business Units")
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
