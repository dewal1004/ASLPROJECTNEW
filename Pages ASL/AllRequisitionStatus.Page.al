page 50104 "All Requisition Status"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = "Store Requisition Header New";
    SourceTableView = WHERE ("Send for Approval" = CONST (true));

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
                field("Issued Captured"; "Issued Captured")
                {
                }
                field("Captured Time"; "Captured Time")
                {
                }
                field(Processed; Processed)
                {
                }
                field("Processed Date"; "Processed Date")
                {
                }
                field(Rejected; Rejected)
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
        area(creation)
        {
            action("Requisition without header")
            {
                RunObject = Page "Requisition without Header";
            }
        }
    }
}

