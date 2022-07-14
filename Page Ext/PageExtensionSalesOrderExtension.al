pageextension 55000 SaleOrder extends "Sales Order"
{
    layout
    {
        addafter("Shipping Advice")
        {
            field("Vessel Name"; "Vessel Name")
            { }
            field("Seal No";"Seal No")
            {
               caption = 'Container No.'; 
            }
            field("Container Code"; "Container Code")
            { }            
            field("Container Size"; "Container Size")
            { }
        }
        addafter("Area")
        {
            field("Posting No. Series"; "Posting No. Series")
            { }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}