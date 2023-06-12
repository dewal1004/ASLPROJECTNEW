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
                field("Final Approved"; Rec."Final Approved")
                {
                    ApplicationArea = All;
                }
                field("Final Approval Name"; Rec."Final Approval Name")
                {
                    ApplicationArea = All;
                }
                field(Rejected; Rec.Rejected)
                {
                    ApplicationArea = All;
                }
                field("No Of Lines"; Rec."No Of Lines")
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

