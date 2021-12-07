page 50190 "Edit Shipment Month"
{
    PageType = Card;
    SourceTable = "Sales Shipment Header";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; "No.")
                {
                    Editable = false;
                }
                field("Sell-to Customer No."; "Sell-to Customer No.")
                {
                    Editable = false;
                }
                field("Order Date"; "Order Date")
                {
                    Editable = false;
                }
                field("Posting Date"; "Posting Date")
                {
                    Editable = false;
                }
                field("Shipment Date"; "Shipment Date")
                {
                    Editable = false;
                }
                field("Order No."; "Order No.")
                {
                    Editable = false;
                }
                field("Document Date"; "Document Date")
                {
                    Editable = false;
                }
                field("External Document No."; "External Document No.")
                {
                    Editable = false;
                }
                field("Currency Code"; "Currency Code")
                {
                }
                field("Shipment Month"; "Shipment Month")
                {
                }
            }
        }
    }

    actions
    {
    }
}

