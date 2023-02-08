pageextension 55000 SaleOrder extends "Sales Order"
{
    layout
    {
        addafter("Shipping Advice")
        {
            field("Vessel Name"; "Vessel Name")
            {
                ApplicationArea = All;
            }
            field("Seal No"; "Seal No")
            {
                caption = 'Container No.';
                ApplicationArea = All;
            }
            field("Container Code"; "Container Code")
            {
                ApplicationArea = All;
            }
            field("Container Size"; "Container Size")
            {
                ApplicationArea = All;
            }
        }
        addafter("Area")
        {
            field("Posting No. Series"; "Posting No. Series")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}