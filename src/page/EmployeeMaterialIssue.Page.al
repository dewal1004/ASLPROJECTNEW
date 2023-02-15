page 50074 "Employee Material Issue"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = ListPart;
    SourceTable = "Store Requisition Line New";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req. No."; "Req. No.")
                {
                    ApplicationArea = All;
                }
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                }
                field("Item Description"; "Item Description")
                {
                    ApplicationArea = All;
                }
                field("Requested Quantity"; "Requested Quantity")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Approved Quantity"; "Approved Quantity")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Issued Quantity"; "Issued Quantity")
                {
                    ApplicationArea = All;
                }
                field("Claim by Employee"; "Claim by Employee")
                {
                    ApplicationArea = All;
                }
                field(Processed; Processed)
                {
                    ApplicationArea = All;
                }
                field("Issues Captured Date"; "Issues Captured Date")
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

