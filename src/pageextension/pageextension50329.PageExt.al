pageextension 50329 "pageextension50329" extends "Posted Transfer Shipment Lines"
{
    layout
    {
        addafter("Document No.")
        {
            field("Quantity Shipped"; "Quantity Shipped")
            {
                ApplicationArea = All;
            }
        }
    }
}

