page 50123 "Purchase Delivery Sec. Return"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    SourceTable = "Purchase Requisition1";
    SourceTableView = WHERE("Sent to Security" = CONST(true),
                            "QCC Check" = CONST(true),
                            "Security checked" = CONST(true),
                            "Procurement Mgr. Action" = CONST(Approved),
                            "Return to Security" = CONST(true),
                            "Security Returned" = CONST(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                Editable = false;
                field("Req No."; "Req No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Req Location"; "Req Location")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Item No."; "Item No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Supply By"; "Supply By")
                {
                    Editable = false;
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Supplier Name"; "Supplier Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Sent to Security"; "Sent to Security")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
            group("Security Action")
            {
                field("Security Return Quantity"; "Security Return Quantity")
                {
                    ApplicationArea = All;
                }
                field("Security Returned"; "Security Returned")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action("Print Security Waydill")
            {
                Image = Delivery;
                Promoted = true;
                RunObject = Report "Purchase Return Way Bill";
                ApplicationArea = All;
            }
        }
    }
}
