page 50102 "Store Req.  Rejected"
{
    CardPageID = "Store Requisition Card";
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    SourceTable = "Store Requisition Header New";
    SourceTableView = WHERE("Send for Approval" = CONST(true),
                            Rejected = CONST(true));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req. No"; "Req. No")
                {
                    ApplicationArea = All;
                }
                field("Req. Type"; "Req. Type")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Req Date"; "Req Date")
                {
                    ApplicationArea = All;
                }
                field("Send for Approval"; "Send for Approval")
                {
                    ApplicationArea = All;
                }
                field(Sender; Sender)
                {
                    ApplicationArea = All;
                }
                field("Sent Time"; "Sent Time")
                {
                    ApplicationArea = All;
                }
                field("1st Approval to"; "1st Approval to")
                {
                    ApplicationArea = All;
                }
                field("1st Approved"; "1st Approved")
                {
                    ApplicationArea = All;
                }
                field("Final Approved"; "Final Approved")
                {
                    ApplicationArea = All;
                }
                field("Final Approval Name"; "Final Approval Name")
                {
                    ApplicationArea = All;
                }
                field(Rejected; Rejected)
                {
                    ApplicationArea = All;
                }
                field("No Of Lines"; "No Of Lines")
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

