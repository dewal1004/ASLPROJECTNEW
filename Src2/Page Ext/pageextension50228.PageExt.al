pageextension 50228 "pageextension50228" extends "Posted Purchase Receipts"
{
    layout
    {
        addafter("Shipment Method Code")
        {
            field("Order No."; "Order No.")
            {
                ApplicationArea = All;
            }
        }
    }
}

