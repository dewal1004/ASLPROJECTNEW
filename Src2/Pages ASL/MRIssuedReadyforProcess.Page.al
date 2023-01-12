page 50103 "MR. Issued Ready for Process"
{
    CardPageID = "Store Requisition Card";
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    Caption = 'MR. Issued Ready for Process';
    PageType = List;
    SourceTable = "Store Requisition Header New";
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    SourceTableView = WHERE("Send for Approval" = CONST(true),
                            "1st Approved" = CONST(Approved),
                            "Final Approved" = CONST(Approved),
                            Processed = CONST(false),
                            "Issued Captured" = CONST(true));


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
    }
}

