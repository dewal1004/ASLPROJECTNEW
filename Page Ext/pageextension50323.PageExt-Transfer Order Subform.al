pageextension 50323 pageextension50323 extends "Transfer Order Subform"
{
    layout
    {

        //Unsupported feature: Property Modification (Name) on ""Item No."(Control 2)".


        //Unsupported feature: Property Modification (SourceExpr) on ""Item No."(Control 2)".


        //Unsupported feature: Property Modification (ImplicitType) on ""Item No."(Control 2)".

        modify("Variant Code")
        {
            Visible = true;
        }
        modify(Quantity)
        {
            Caption = 'Quantity Approved';
        }
        addfirst(Control1)
        {
            field("Last Issued Qty."; "Last Issued Qty.")
            {
            }
        }
        addafter("Unit of Measure")
        {
            field("Qty. Reqd."; "Qty. Reqd.")
            {
            }
        }
        addafter("Unit of Measure Code")
        {
            field("Inventory Posting Group"; "Inventory Posting Group")
            {
            }
        }
        addafter("Qty. to Receive")
        {
            field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
            {
            }
        }
        addafter("Receipt Date")
        {
            field("Quantity (Base)"; "Quantity (Base)")
            {
            }
            field("Outstanding Qty. (Base)"; "Outstanding Qty. (Base)")
            {
            }
            field("Qty. to Ship (Base)"; "Qty. to Ship (Base)")
            {
            }
        }
        addafter("Shipping Agent Service Code")
        {
            field("Qty. to Receive (Base)"; "Qty. to Receive (Base)")
            {
            }
        }
        addafter("ShortcutDimCode[8]")
        {
            field(Control17; ShortcutDimCode[8])
            {
            }
        }
        // moveafter("Last Issued Date"; Description)
        moveafter(Description; "Unit of Measure")
        moveafter("Unit of Measure"; Quantity)
    }
}

