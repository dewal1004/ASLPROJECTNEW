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
                    ApplicationArea = All;
                }
                field("Sell-to Customer No."; "Sell-to Customer No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Order Date"; "Order Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Shipment Date"; "Shipment Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Order No."; "Order No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Document Date"; "Document Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("External Document No."; "External Document No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Currency Code"; "Currency Code")
                {
                    ApplicationArea = All;
                }
                field("Shipment Month"; "Shipment Month")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

