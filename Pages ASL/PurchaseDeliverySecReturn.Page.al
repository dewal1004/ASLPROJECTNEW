page 50123 "Purchase Delivery Sec. Return"
{
    PageType = List;
    SourceTable = "Purchase Requisition1";
    SourceTableView = WHERE ("Sent to Security" = CONST (true),
                            "QCC Check" = CONST (true),
                            "Security checked" = CONST (true),
                            "Procurement Mgr. Action" = CONST (Approved),
                            "Return to Security" = CONST (true),
                            "Security Returned" = CONST (false));

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
                }
                field("Req Location"; "Req Location")
                {
                    Editable = false;
                }
                field("Item No."; "Item No.")
                {
                    Editable = false;
                }
                field(Description; Description)
                {
                    Editable = false;
                }
                field("Supply By"; "Supply By")
                {
                    Editable = false;
                    Importance = Additional;
                }
                field("Supplier Name"; "Supplier Name")
                {
                    Editable = false;
                }
                field("Sent to Security"; "Sent to Security")
                {
                    Editable = false;
                }
            }
            group("Security Action")
            {
                field("Security Return Quantity"; "Security Return Quantity")
                {
                }
                field("Security Returned"; "Security Returned")
                {
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
            }
        }
    }
}

