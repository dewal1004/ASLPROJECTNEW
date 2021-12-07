page 50103 "MR. Issued Ready for Process"
{
    CardPageID = "Store Requisition Card";
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = "Store Requisition Header New";
    SourceTableView = WHERE ("Send for Approval" = CONST (true),
                            "1st Approved" = CONST (Approved),
                            "Final Approved" = CONST (Approved),
                            Processed = CONST (false),
                            "Issued Captured" = CONST (true));

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
                field("1st Approved Time"; "1st Approved Time")
                {
                }
                field("Final Approval to"; "Final Approval to")
                {
                }
                field("Final Approved"; "Final Approved")
                {
                }
                field("Final Approved Time"; "Final Approved Time")
                {
                }
                field("No Of Lines"; "No Of Lines")
                {
                }
            }
        }
        area(factboxes)
        {
            part(Control14; "MR Detailed Cardpart")
            {
                SubPageLink = "Req. No" = FIELD ("Req. No");
            }
        }
    }

    actions
    {
    }
}

