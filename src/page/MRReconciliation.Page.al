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
                field("Req. No."; Rec."Req. No.")
                {
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("Item Description"; Rec."Item Description")
                {
                    ApplicationArea = All;
                }
                field("Requested Quantity"; Rec."Requested Quantity")
                {
                    ApplicationArea = All;
                }
                field("Approved Quantity"; Rec."Approved Quantity")
                {
                    ApplicationArea = All;
                }
                field("Issued Quantity"; Rec."Issued Quantity")
                {
                    ApplicationArea = All;
                }
                field("Store Location"; Rec."Store Location")
                {
                    ApplicationArea = All;
                }
                field("Claim by Employee"; Rec."Claim by Employee")
                {
                    ApplicationArea = All;
                }
                field("Final Approval"; Rec."Final Approval")
                {
                    ApplicationArea = All;
                }
                field("Issues Captured Date"; Rec."Issues Captured Date")
                {
                    ApplicationArea = All;
                }
                field(Processed; Rec.Processed)
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

