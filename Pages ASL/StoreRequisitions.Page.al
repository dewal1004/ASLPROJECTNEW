page 50058 "Store Requisitions"
{
    CardPageID = "Store Requisition Card";
    PageType = List;
    SourceTable = "Store Requisition Header New";
    SourceTableView = WHERE ("Send for Approval" = CONST (false));

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
                field("Document No."; "Document No.")
                {
                }
                field("No Of Lines"; "No Of Lines")
                {
                }
            }
        }
    }

    actions
    {
    }
}

