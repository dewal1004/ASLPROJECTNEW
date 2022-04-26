page 50128 "Approved DPS Line"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    MultipleNewLines = true;
    PageType = List;
    SourceTable = "Dynamics Procurement Register";
    SourceTableView = WHERE (processed = CONST (false),
                            Approved = CONST (true));

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
                field("Unit Price"; "Unit Price")
                {
                }
                /*group(Control32)
                {
                    Editable = false;
                    ShowCaption = false;*/
                    field("Location Code"; "Location Code")
                    {
                    }
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
                    field("Lead Time"; "Lead Time")
                    {
                    }
                    field("Maximum Stock Period"; "Maximum Stock Period")
                    {
                    }
                    field("Maximum Stock"; "Maximum Stock")
                    {
                    }
                    field("Pending Quantity"; "Pending Quantity")
                    {
                    }
                    field("Pending Requisition"; "Pending Requisition")
                    {
                    }
                    field("Surgested Order Quantity"; "Surgested Order Quantity")
                    {
                    }
                    field("Line Amount"; "Line Amount")
                    {
                    }
                    field(Approved; Approved)
                    {
                    }
                // group(Control33)
                // {
                //     ShowCaption = false;
                // }
                field("Approved Order Quantity"; "Approved Order Quantity")
                {
                    Editable = Approved = FALSE;
                }
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
                    Editable = false;
                }
                field("Base Date"; "Base Date")
                {
                    Editable = false;
                    Visible = false;
                }
                /*group(Control34)
                {
                    Editable = false;
                    Enabled = false;
                    //The GridLayout property is only supported on controls of type Grid
                    //GridLayout = Rows;
                    ShowCaption = false;
                    Visible = Approved = FALSE;*/
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
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    CreatePurchInv;
                end;
            }
            action("Create Purchase Register")
            {
                Image = RegisteredDocs;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    UpdatePurReq;
                end;
            }
        }
    }
}

