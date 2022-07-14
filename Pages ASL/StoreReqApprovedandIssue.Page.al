page 50065 "Store Req.  Approved and Issue"
{
    CardPageID = "Store Requisition Card";
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All,Basic;
    SourceTable = "Store Requisition Header New";
    SourceTableView = WHERE ("Send for Approval" = CONST (true),
                            "1st Approved" = CONST (Approved),
                            "Final Approved" = CONST (Approved),
                            "Issued Captured" = CONST (true),
                            Processed = CONST (true));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req. No"; "Req. No")
                {
                }
                field("Req. Type"; "Req. Type")
                {
                }
                field(Description; Description)
                {
                }
                field("Req Date"; "Req Date")
                {
                }
                field("Send for Approval"; "Send for Approval")
                {
                }
                field(Sender; Sender)
                {
                }
                field("Sent Time"; "Sent Time")
                {
                }
                field("1st Approval to"; "1st Approval to")
                {
                }
                field("1st Approved"; "1st Approved")
                {
                }
                field("Final Approval to"; "Final Approval to")
                {
                }
                field("Final Approved"; "Final Approved")
                {
                }
                field("Document No."; "Document No.")
                {
                }
            }
        }
        area(factboxes)
        {
            part("Requisition  Detailed"; "MR Detailed Cardpart")
            {
                SubPageLink = "Req. No" = FIELD ("Req. No");
            }
        }
    }

    actions
    {
    }
}

