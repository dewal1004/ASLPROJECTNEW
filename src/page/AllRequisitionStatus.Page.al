page 50104 "All Requisition Status"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = "Store Requisition Header New";
    SourceTableView = WHERE("Send for Approval" = CONST(true));
    UsageCategory = Lists;
    ApplicationArea = all;

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
                field("1st Approved Time"; "1st Approved Time")
                {
                    ApplicationArea = All;
                }
                field("Final Approval to"; "Final Approval to")
                {
                    ApplicationArea = All;
                }
                field("Final Approved"; "Final Approved")
                {
                    ApplicationArea = All;
                }
                field("Final Approved Time"; "Final Approved Time")
                {
                    ApplicationArea = All;
                }
                field("Issued Captured"; "Issued Captured")
                {
                    ApplicationArea = All;
                }
                field("Captured Time"; "Captured Time")
                {
                    ApplicationArea = All;
                }
                field(Processed; Processed)
                {
                    ApplicationArea = All;
                }
                field("Processed Date"; "Processed Date")
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
        area(factboxes)
        {
            part(Control14; "MR Detailed Cardpart")
            {
                SubPageLink = "Req. No" = FIELD("Req. No");
                ApplicationArea = All;
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
                ApplicationArea = All;
            }
        }
    }
}

