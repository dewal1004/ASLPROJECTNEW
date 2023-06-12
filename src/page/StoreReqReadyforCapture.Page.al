page 50063 "Store Req. Ready for Capture"
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
                            "1st Approved" = CONST(Approved),
                            "Final Approved" = CONST(Approved),
                            Processed = CONST(false),
                            "Issued Captured" = CONST(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req. No"; Rec."Req. No")
                {
                    ApplicationArea = All;
                }
                field("Req. Type"; Rec."Req. Type")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Req Date"; Rec."Req Date")
                {
                    ApplicationArea = All;
                }
                field("Send for Approval"; Rec."Send for Approval")
                {
                    ApplicationArea = All;
                }
                field(Sender; Rec.Sender)
                {
                    ApplicationArea = All;
                }
                field("Sent Time"; Rec."Sent Time")
                {
                    ApplicationArea = All;
                }
                field("1st Approval to"; Rec."1st Approval to")
                {
                    ApplicationArea = All;
                }
                field("1st Approved"; Rec."1st Approved")
                {
                    ApplicationArea = All;
                }
                field("1st Approved Time"; Rec."1st Approved Time")
                {
                    ApplicationArea = All;
                }
                field("Final Approval to"; Rec."Final Approval to")
                {
                    ApplicationArea = All;
                }
                field("Final Approved"; Rec."Final Approved")
                {
                    ApplicationArea = All;
                }
                field("Final Approved Time"; Rec."Final Approved Time")
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

