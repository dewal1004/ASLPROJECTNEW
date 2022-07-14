page 50058 "Store Requisitions"
{
    CardPageID = "Store Requisition Card";
    PageType = List;
    SourceTable = "Store Requisition Header New";
    SourceTableView = WHERE ("Send for Approval" = CONST (false));
    Editable = false;
    UsageCategory = Lists;
    ApplicationArea = All,Basic;

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
                field("Fish Store Requisition";"Fish Store Requisition")
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

