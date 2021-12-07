page 50119 "Dynamics Procurement Subpage"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    LinksAllowed = false;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = "Dynamics Procurement Register";

    layout
    {
        area(content)
        {
            repeater("Item Stock Status")
            {
                FreezeColumn = "Location Code";
                field("Line No."; "Line No.")
                {
                    Visible = false;
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Lead Time"; "Lead Time")
                {
                }
                field("Maximum Stock Period"; "Maximum Stock Period")
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field("Surgested Order Quantity"; "Surgested Order Quantity")
                {
                    Editable = Approved = FALSE;
                }
                field("Approved Order Quantity"; "Approved Order Quantity")
                {
                    Editable = Approved = FALSE;
                }
                field("Line Amount"; "Line Amount")
                {
                    Editable = false;
                }
                field(Approved; Approved)
                {
                }
                /*group(Control32)
                {
                    Editable = false;
                    ShowCaption = false;*/
                    field("Available Quantity"; "Available Quantity")
                    {
                        Editable = false;
                    }
                    field("Available Stock Months"; "Available Stock Months")
                    {
                        Editable = false;
                    }
                    field("Item Status"; "Item Status")
                    {
                        Editable = false;
                    }
                    field("Maximum Stock"; "Maximum Stock")
                    {
                        Editable = false;
                    }
                    field("Pending Quantity"; "Pending Quantity")
                    {
                        Editable = false;
                    }
                    field("Pending Requisition"; "Pending Requisition")
                    {
                        Editable = false;
                    }
               // }
                /*group("Store Action")
                {
                    Editable = Processed = FALSE;*/
                    field(Update; Update)
                    {
                    }
                    field("Supply by"; "Supply by")
                    {
                    }
                    field("Supplier Name"; "Supplier Name")
                    {
                    }
                    field("Delivery Term"; "Delivery Term")
                    {
                    }
                    field("Order Date"; "Order Date")
                    {
                    }
                    field("Expected Delivery date"; "Expected Delivery date")
                    {
                    }
                    field("Process Mode"; "Process Mode")
                    {
                    }
                    field(processed; processed)
                    {
                    }
                    field("process By"; "process By")
                    {
                    }
                    field("Order No."; "Order No.")
                    {
                    }
                    field("Base Date"; "Base Date")
                    {
                    }
                //}
                /*group(Control34)
                {
                    Editable = false;
                    ShowCaption = false;*/
                    field("Last Month Consumption"; "Last Month Consumption")
                    {
                    }
                    field("Last 3 Months Consumption"; "Last 3 Months Consumption")
                    {
                        Importance = Additional;
                    }
                    field("Last 6 Month Consumption"; "Last 6 Month Consumption")
                    {
                        Importance = Additional;
                    }
                    field("Last One Year Consumption"; "Last One Year Consumption")
                    {
                    }
                    field("Last 2 Years Consumption"; "Last 2 Years Consumption")
                    {
                    }
                    field("Last 3 Years Consumption"; "Last 3 Years Consumption")
                    {
                    }
                    field("Last 4 Years Consumption"; "Last 4 Years Consumption")
                    {
                    }
                    field("Last 5 Years Consumption"; "Last 5 Years Consumption")
                    {
                    }
                    field("Ave. 3 Month Consumption"; "Ave. 3 Month Consumption")
                    {
                    }
                    field("Ave. 6 Month Consumption"; "Ave. 6 Month Consumption")
                    {
                    }
                    field("Ave. One Year Consumption"; "Ave. One Year Consumption")
                    {
                    }
                    field("Last 2 Years Monthly Average"; "Last 2 Years Monthly Average")
                    {
                    }
                    field("Last 5 Years Monthly Average"; "Last 5 Years Monthly Average")
                    {
                    }
                //}
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Create Purchase Order")
            {
                Image = Invoice;
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    CreatePurchInv;
                end;
            }
            action("Create Purchase Register")
            {

                trigger OnAction()
                begin
                    UpdatePurReq;
                end;
            }
        }
    }
}

