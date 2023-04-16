page 50112 "Requisition without Header"
{
    PageType = List;
    SourceTable = "Store Requisition Line New";
    SourceTableView = WHERE("No Header" = CONST(true));
    UsageCategory = Lists;
    ApplicationArea = all;

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
                field("Line No."; "Line No.")
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
                field("Claim by Employee"; "Claim by Employee")
                {
                    ApplicationArea = All;
                }
                field("Mat. Req.  No."; "Mat. Req.  No.")
                {
                    ApplicationArea = All;
                }
                field("1st Approval"; "1st Approval")
                {
                    ApplicationArea = All;
                }
                field("Final Approval"; "Final Approval")
                {
                    ApplicationArea = All;
                }
                field(Processed; Processed)
                {
                    ApplicationArea = All;
                }
                field("Req. Type"; "Req. Type")
                {
                    ApplicationArea = All;
                }
                field("No Header"; "No Header")
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

