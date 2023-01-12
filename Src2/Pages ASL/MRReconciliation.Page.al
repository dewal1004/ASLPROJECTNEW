page 50098 "MR Reconciliation"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    SourceTable = "Store Requisition Line New";
    SourceTableView = WHERE("Final Approval" = CONST(Approved),
                            "Issues Captured Date" = FILTER(<> 0D));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req. No."; "Req. No.")
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
                    ApplicationArea = All;
                }
                field("Store Location"; "Store Location")
                {
                    ApplicationArea = All;
                }
                field("Claim by Employee"; "Claim by Employee")
                {
                    ApplicationArea = All;
                }
                field("Final Approval"; "Final Approval")
                {
                    ApplicationArea = All;
                }
                field("Issues Captured Date"; "Issues Captured Date")
                {
                    ApplicationArea = All;
                }
                field(Processed; Processed)
                {
                    ApplicationArea = All;
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
                ApplicationArea = All;
            }
        }
    }
}

