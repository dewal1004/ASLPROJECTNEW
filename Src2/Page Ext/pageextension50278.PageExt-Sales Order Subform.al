pageextension 50278 pageextension50278 extends "Sales Order Subform"
{
    layout
    {
        modify("Unit Cost (LCY)")
        {
            Visible = false;
        }
        addafter("Unit of Measure")
        {
            field("Unit Cost"; "Unit Cost")
            {
                ApplicationArea = All;
            }
        }
    }


    //Unsupported feature: Property Modification (Id) on "ApplicationAreaMgmtFacade(Variable 1010)".

    //var
    //>>>> ORIGINAL VALUE:
    //ApplicationAreaMgmtFacade : 1010;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ApplicationAreaMgmtFacade : 1110;
    //Variable type has not been exported.

    var
        Item: Record Item;
}

