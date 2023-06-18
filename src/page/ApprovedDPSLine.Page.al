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
    Caption = 'Approved DPS Line';
    layout
    {
        area(content)
        {
            repeater("Item Stock Status")
            {
                FreezeColumn = "Location Code";
                field("Line No."; Rec."Line No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                /*group(Control32)
                {
                    Editable = false;
                    ShowCaption = false;*/
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("Available Quantity"; Rec."Available Quantity")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Available Stock Months"; Rec."Available Stock Months")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Item Status"; Rec."Item Status")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Lead Time"; Rec."Lead Time")
                {
                    ApplicationArea = All;
                }
                field("Maximum Stock Period"; Rec."Maximum Stock Period")
                {
                    ApplicationArea = All;
                }
                field("Maximum Stock"; Rec."Maximum Stock")
                {
                    ApplicationArea = All;
                }
                field("Pending Quantity"; Rec."Pending Quantity")
                {
                    ApplicationArea = All;
                }
                field("Pending Requisition"; Rec."Pending Requisition")
                {
                    ApplicationArea = All;
                }
                field("Surgested Order Quantity"; Rec."Surgested Order Quantity")
                {
                    ApplicationArea = All;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                }
                field(Approved; Rec.Approved)
                {
                    ApplicationArea = All;
                }
                // group(Control33)
                // {
                //     ShowCaption = false;
                // }
                field("Approved Order Quantity"; Rec."Approved Order Quantity")
                {
                    Editable = Rec.Approved = FALSE;
                    ApplicationArea = All;
                }
                field(Update; Rec.Update)
                {
                    ApplicationArea = All;
                }
                field("Supply by"; Rec."Supply by")
                {
                    ApplicationArea = All;
                }
                field("Supplier Name"; Rec."Supplier Name")
                {
                    ApplicationArea = All;
                }
                field("Delivery Term"; Rec."Delivery Term")
                {
                    ApplicationArea = All;
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                }
                field("Expected Delivery date"; Rec."Expected Delivery date")
                {
                    ApplicationArea = All;
                }
                field("Process Mode"; Rec."Process Mode")
                {
                    ApplicationArea = All;
                }
                field(processed; Rec.processed)
                {
                    ApplicationArea = All;
                }
                field("process By"; Rec."process By")
                {
                    ApplicationArea = All;
                }
                field("Order No."; Rec."Order No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Base Date"; Rec."Base Date")
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
                field("Last Month Consumption"; Rec."Last Month Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 3 Months Consumption"; Rec."Last 3 Months Consumption")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Last 6 Month Consumption"; Rec."Last 6 Month Consumption")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Last One Year Consumption"; Rec."Last One Year Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 2 Years Consumption"; Rec."Last 2 Years Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 3 Years Consumption"; Rec."Last 3 Years Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 4 Years Consumption"; Rec."Last 4 Years Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 5 Years Consumption"; Rec."Last 5 Years Consumption")
                {
                    ApplicationArea = All;
                }
                field("Ave. 3 Month Consumption"; Rec."Ave. 3 Month Consumption")
                {
                    ApplicationArea = All;
                }
                field("Ave. 6 Month Consumption"; Rec."Ave. 6 Month Consumption")
                {
                    ApplicationArea = All;
                }
                field("Ave. One Year Consumption"; Rec."Ave. One Year Consumption")
                {
                    ApplicationArea = All;
                }
                field("Last 2 Years Monthly Average"; Rec."Last 2 Years Monthly Average")
                {
                    ApplicationArea = All;
                }
                field("Last 5 Years Monthly Average"; Rec."Last 5 Years Monthly Average")
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
                    Rec.CreatePurchInv();
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
                    Rec.UpdatePurReq();
                end;
            }
        }
    }
}
