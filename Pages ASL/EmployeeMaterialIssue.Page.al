page 50074 "Employee Material Issue"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = ListPart;
    SourceTable = "Store Requisition Line New";
    UsageCategory = Lists;
    ApplicationArea =All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req. No."; "Req. No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Item Description"; "Item Description")
                {
                }
                field("Requested Quantity"; "Requested Quantity")
                {
                    Importance = Additional;
                }
                field("Approved Quantity"; "Approved Quantity")
                {
                    Importance = Additional;
                }
                field("Issued Quantity"; "Issued Quantity")
                {
                }
                field("Claim by Employee"; "Claim by Employee")
                {
                }
                field(Processed; Processed)
                {
                }
                field("Issues Captured Date"; "Issues Captured Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

