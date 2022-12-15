pageextension 50374 pageextension50374 extends "Purchase Quote Subform"
{
    layout
    {
        addafter("Unit of Measure")
        {
            field("Duty Rate%"; "Duty Rate%")
            {
            }
        }
    }
    actions
    {

        //Unsupported feature: Property Modification (Name) on ""E&xplode BOM"(Action 1901991404)".


        //Unsupported feature: Property Modification (Image) on ""Insert &Ext. Texts"(Action 1900295904)".

        addafter("Item Tracking Lines")
        {
            action("Calculate &Invoice Discount")
            {
                Caption = 'Calculate &Invoice Discount';
            }
            action("Copy Document")
            {
                Caption = 'Copy Document';
            }
        }
    }
}

