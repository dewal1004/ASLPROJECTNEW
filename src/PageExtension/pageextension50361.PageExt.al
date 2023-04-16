pageextension 50361 "pageextension50361" extends "Item Invoicing FactBox"
{
    layout
    {
        addafter("Unit Price")
        {
            field(Inventory; Inventory)
            {
                ApplicationArea = All;
            }
            field("CRM / STR"; "CRM / STR")
            {
                ApplicationArea = All;
            }
            group("Material Requisition")
            {
                field("MR Pending  Qty"; "MR Pending  Qty")
                {
                    ApplicationArea = All;
                }
                field("MR Approved Qty"; "MR Approved Qty")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

