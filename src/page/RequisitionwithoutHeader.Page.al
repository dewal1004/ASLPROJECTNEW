page 50112 "Requisition without Header"
{
    PageType = List;
    SourceTable = "Store Requisition Line New";
    SourceTableView = WHERE("No Header" = CONST(true));
    UsageCategory = Lists;
    ApplicationArea = all;
    Caption = 'Requisition without Header';
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req. No."; Rec."Req. No.")
                {
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("Item Description"; Rec."Item Description")
                {
                    ApplicationArea = All;
                }
                field("Requested Quantity"; Rec."Requested Quantity")
                {
                    ApplicationArea = All;
                }
                field("Approved Quantity"; Rec."Approved Quantity")
                {
                    ApplicationArea = All;
                }
                field("Issued Quantity"; Rec."Issued Quantity")
                {
                    ApplicationArea = All;
                }
                field("Claim by Employee"; Rec."Claim by Employee")
                {
                    ApplicationArea = All;
                }
                field("Mat. Req.  No."; Rec."Mat. Req.  No.")
                {
                    ApplicationArea = All;
                }
                field("1st Approval"; Rec."1st Approval")
                {
                    ApplicationArea = All;
                }
                field("Final Approval"; Rec."Final Approval")
                {
                    ApplicationArea = All;
                }
                field(Processed; Rec.Processed)
                {
                    ApplicationArea = All;
                }
                field("Req. Type"; Rec."Req. Type")
                {
                    ApplicationArea = All;
                }
                field("No Header"; Rec."No Header")
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
