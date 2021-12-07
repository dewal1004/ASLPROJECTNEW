page 50112 "Requisition without Header"
{
    PageType = List;
    SourceTable = "Store Requisition Line New";
    SourceTableView = WHERE ("No Header" = CONST (true));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req. No."; "Req. No.")
                {
                }
                field("Line No."; "Line No.")
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
                field("Claim by Employee"; "Claim by Employee")
                {
                }
                field("Mat. Req.  No."; "Mat. Req.  No.")
                {
                }
                field("1st Approval"; "1st Approval")
                {
                }
                field("Final Approval"; "Final Approval")
                {
                }
                field(Processed; Processed)
                {
                }
                field("Req. Type"; "Req. Type")
                {
                }
                field("No Header"; "No Header")
                {
                }
            }
        }
    }

    actions
    {
    }
}

