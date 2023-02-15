page 50060 "Store Requisition Subform"
{
    PageType = ListPart;
    SourceTable = "Store Requisition Line New";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                FreezeColumn = "Item Description";
                field("Req. No."; "Req. No.")
                {
                    ApplicationArea = All;
                }
                field("Line No."; "Line No.")
                {
                    ApplicationArea = All;
                }
                field("Store Location"; "Store Location")
                {
                    ApplicationArea = All;
                }
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                }
                field("Item Description"; "Item Description")
                {
                    ApplicationArea = All;
                }
                field("Inventory Posting Group"; "Inventory Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Claim by Employee"; "Claim by Employee")
                {
                    ApplicationArea = All;
                }
                field("Requested Quantity"; "Requested Quantity")
                {
                    ApplicationArea = All;
                }
                field("Approved Quantity"; "Approved Quantity")
                {
                    ApplicationArea = All;
                }
                field("Issued Quantity"; "Issued Quantity")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Claim by Resources"; "Claim by Resources")
                {
                    ApplicationArea = All;
                }
                field(Comment; Comment)
                {
                    ApplicationArea = All;
                }
                field("Req. Type"; "Req. Type")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Available Quantity"; "Available Quantity")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Pending Approved Qty"; "Pending Approved Qty")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("1st Approval"; "1st Approval")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Final Approval"; "Final Approval")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Issued By"; "Issued By")
                {
                    ApplicationArea = All;
                }
                field("Procurement Request"; "Procurement Request")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Shortage Qty"; "Shortage Qty")
                {
                    ApplicationArea = All;
                }
                field("Item Category"; "Item Category")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Last Replacement Date"; "Last Replacement Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Expected Replacement Date"; "Expected Replacement Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Replaced; Replaced)
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
            action("Bin Card From Location")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ReqRec.SetRange(ReqRec."No.", "Item No.");
                    ReqRec.SetFilter(ReqRec."Location Filter", "Store Location");
                    if ReqRec.FindFirst then
                        REPORT.RunModal(704, true, false, ReqRec);
                end;
            }
            action("Bin Card To Lacation")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    StoreHead.Get("Req. No.");
                    ReqRec.SetRange(ReqRec."No.", "Item No.");
                    ReqRec.SetFilter(ReqRec."Location Filter", StoreHead."Transfer To.");
                    if ReqRec.FindFirst then
                        REPORT.RunModal(704, true, false, ReqRec);
                end;
            }
        }
    }

    var
        Storeline: Record "Store Requisition Line New";
        ItemRec: Record Item;
        ReqRec: Record Item;
        StoreHead: Record "Store Requisition Header New";
}

