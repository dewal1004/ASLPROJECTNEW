pageextension 50361 pageextension50361 extends "Item Invoicing FactBox"
{
    layout
    {
        addafter("Unit Price")
        {
            field(Inventory; Inventory)
            {
            }
            field("CRM / STR"; "CRM / STR")
            {
            }
            group("Material Requisition")
            {
                field("MR Pending  Qty"; "MR Pending  Qty")
                {
                }
                field("MR Approved Qty"; "MR Approved Qty")
                {
                }
            }
        }
    }
}

