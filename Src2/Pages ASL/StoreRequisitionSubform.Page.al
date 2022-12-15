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
                }
                field("Line No."; "Line No.")
                {
                }
                field("Store Location"; "Store Location")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Item Description"; "Item Description")
                {
                }
                field("Inventory Posting Group"; "Inventory Posting Group")
                {
                }
                field("Claim by Employee"; "Claim by Employee")
                {
                }
                field("Requested Quantity"; "Requested Quantity")
                {
                }
                field("Approved Quantity"; "Approved Quantity")
                {
                }
                field("Issued Quantity"; "Issued Quantity")
                {
                    Editable = false;
                }
                field("Claim by Resources"; "Claim by Resources")
                {
                }
                field(Comment; Comment)
                {
                }
                field("Req. Type"; "Req. Type")
                {
                    Importance = Additional;
                }
                field("Available Quantity"; "Available Quantity")
                {
                    Importance = Additional;
                }
                field("Pending Approved Qty"; "Pending Approved Qty")
                {
                    Importance = Additional;
                }
                field("1st Approval"; "1st Approval")
                {
                    Importance = Additional;
                }
                field("Final Approval"; "Final Approval")
                {
                    Importance = Additional;
                }
                field("Issued By"; "Issued By")
                {
                }
                field("Procurement Request"; "Procurement Request")
                {
                    Editable = false;
                }
                field("Shortage Qty"; "Shortage Qty")
                {
                }
                field("Item Category"; "Item Category")
                {
                    Importance = Additional;
                }
                field("Last Replacement Date"; "Last Replacement Date")
                {
                    Editable = false;
                }
                field("Expected Replacement Date"; "Expected Replacement Date")
                {
                    Editable = false;
                }
                field(Replaced; Replaced)
                {
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

