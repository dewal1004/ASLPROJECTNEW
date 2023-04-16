page 50100 "PurchReceiptLines"
{
    PageType = Card;
    SourceTable = "Purch. Rcpt. Line";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Document No."; "Document No.")
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                }
                field("Order No."; "Order No.")
                {
                    ApplicationArea = All;
                }
                field("Original Purc. Order No."; "Original Purc. Order No.")
                {
                    ApplicationArea = All;
                }
                field("Quantity Ordered"; "Quantity Ordered")
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

