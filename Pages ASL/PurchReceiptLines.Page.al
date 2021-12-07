page 50100 PurchReceiptLines
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
                }
                field(Type; Type)
                {
                }
                field("No."; "No.")
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Order No."; "Order No.")
                {
                }
                field("Original Purc. Order No."; "Original Purc. Order No.")
                {
                }
                field("Quantity Ordered"; "Quantity Ordered")
                {
                }
            }
        }
    }

    actions
    {
    }
}

