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
    Caption = 'All Requisition Status';
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
                field("Issued Captured"; Rec."Issued Captured")
                {
                    ApplicationArea = All;
                }
                field("Captured Time"; Rec."Captured Time")
                {
                    ApplicationArea = All;
                }
                field(Processed; Rec.Processed)
                {
                    ApplicationArea = All;
                }
                field("Processed Date"; Rec."Processed Date")
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
