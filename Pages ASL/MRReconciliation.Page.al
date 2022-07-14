page 50098 "MR Reconciliation"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All,Basic;
    SourceTable = "Store Requisition Line New";
    SourceTableView = WHERE ("Final Approval" = CONST (Approved),
                            "Issues Captured Date" = FILTER (<> 0D));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req. No."; "Req. No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Item Description"; "Item Description")
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
                }
                field("Store Location"; "Store Location")
                {
                }
                field("Claim by Employee"; "Claim by Employee")
                {
                }
                field("Final Approval"; "Final Approval")
                {
                }
                field("Issues Captured Date"; "Issues Captured Date")
                {
                }
                field(Processed; Processed)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action("MR Reconiliation Report")
            {
                RunObject = Report "MR Reconciliation Report";
            }
        }
    }
}

