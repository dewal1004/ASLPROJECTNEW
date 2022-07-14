page 50064 "Store Req. Ready for Final App"
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
                            "Final Approved" = FILTER (<> Approved),
                            "Document No." = FILTER (''),
                            Rejected = CONST (false));

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
                field(Rejected; Rejected)
                {
                }
            }
        }
        area(factboxes)
        {
            part(Control15; "MR Detailed Cardpart")
            {
                SubPageLink = "Req. No" = FIELD ("Req. No");
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        SetFilter("Final Approval to", '%1', UserId);
    end;
}

