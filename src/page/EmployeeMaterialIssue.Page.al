page 50074 "Employee Material Issue"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = ListPart;
    SourceTable = "Store Requisition Line New";
    UsageCategory = Lists;
    ApplicationArea = All;
    Caption = 'Employee Material Issue';
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
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Approved Quantity"; Rec."Approved Quantity")
                {
                    Importance = Additional;
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
                field(Processed; Rec.Processed)
                {
                    ApplicationArea = All;
                }
                field("Issues Captured Date"; Rec."Issues Captured Date")
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
