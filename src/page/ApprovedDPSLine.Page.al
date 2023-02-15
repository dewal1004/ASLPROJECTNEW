page 50128 "Approved DPS Line"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    MultipleNewLines = true;
    PageType = List;
    SourceTable = "Dynamics Procurement Register";
    SourceTableView = WHERE(processed = CONST(false),
                            Approved = CONST(true));
    UsageCategory = Administration;
    ApplicationArea = all;


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
                    ApplicationArea = All;
                }
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; "Unit Price")
                {
                    ApplicationArea = All;
                }
                /*group(Control32)
                {
                    Editable = false;
                    ShowCaption = false;*/
                field("Location Code"; "Location Code")
                {
                    ApplicationArea = All;
                }
                field("Available Quantity"; "Available Quantity")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Available Stock Months"; "Available Stock Months")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Item Status"; "Item Status")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Lead Time"; "Lead Time")
                {
                    ApplicationArea = All;
                }
                field("Maximum Stock Period"; "Maximum Stock Period")
                {
                    ApplicationArea = All;
                }
                field("Maximum Stock"; "Maximum Stock")
                {
                    ApplicationArea = All;
                }
                field("Pending Quantity"; "Pending Quantity")
                {
                    ApplicationArea = All;
                }
                field("Pending Requisition"; "Pending Requisition")
                {
                    ApplicationArea = All;
                }
                field("Surgested Order Quantity"; "Surgested Order Quantity")
                {
                    ApplicationArea = All;
                }
                field("Line Amount"; "Line Amount")
                {
                    ApplicationArea = All;
                }
                field(Approved; Approved)
                {
                    ApplicationArea = All;
                }
                // group(Control33)
                // {
                //     ShowCaption = false;
                // }
                field("Approved Order Quantity"; "Approved Order Quantity")
                {
                    Editable = Approved = FALSE;
                    ApplicationArea = All;
                }
                field(Update; Update)
                {
                    ApplicationArea = All;
                }
                field("Supply by"; "Supply by")
                {
                    ApplicationArea = All;
                }
                field("Supplier Name"; "Supplier Name")
                {
                    ApplicationArea = All;
                }
                field("Delivery Term"; "Delivery Term")
                {
                    ApplicationArea = All;
                }
                field("Order Date"; "Order Date")
                {
                    ApplicationArea = All;
                }
                field("Expected Delivery date"; "Expected Delivery date")
                {
                    ApplicationArea = All;
                }
                field("Process Mode"; "Process Mode")
                {
                    ApplicationArea = All;
                }
                field(processed; processed)
                {
                    ApplicationArea = All;
                }
                field("process By"; "process By")
                {
                    ApplicationArea = All;
                }
                field("Order No."; "Order No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Base Date"; "Base Date")
                {
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
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
                    ApplicationArea = All;
                }
                field("Last 3 Months Consumption"; "Last 3 Months Consumption")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Last 6 Month Consumption"; "Last 6 Month Consumption")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Last One Year Consumption"; "Last One Year Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 2 Years Consumption"; "Last 2 Years Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 3 Years Consumption"; "Last 3 Years Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 4 Years Consumption"; "Last 4 Years Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 5 Years Consumption"; "Last 5 Years Consumption")
                {
                    ApplicationArea = All;
                }
                field("Ave. 3 Month Consumption"; "Ave. 3 Month Consumption")
                {
                    ApplicationArea = All;
                }
                field("Ave. 6 Month Consumption"; "Ave. 6 Month Consumption")
                {
                    ApplicationArea = All;
                }
                field("Ave. One Year Consumption"; "Ave. One Year Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 2 Years Monthly Average"; "Last 2 Years Monthly Average")
                {
                    ApplicationArea = All;
                }
                field("Last 5 Years Monthly Average"; "Last 5 Years Monthly Average")
                {
                    ApplicationArea = All;
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
                ApplicationArea = All;

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
                ApplicationArea = All;

                trigger OnAction()
                begin
                    UpdatePurReq;
                end;
            }
        }
    }
}

