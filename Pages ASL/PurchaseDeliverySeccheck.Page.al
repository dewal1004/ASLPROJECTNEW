page 50116 "Purchase Delivery Sec. check"
{
    PageType = List;
    SourceTable = "Purchase Requisition1";
    SourceTableView = WHERE ("Sent to Security" = CONST (true),
                            "QCC Check" = CONST (false),
                            "Security checked" = CONST (false));

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
                field("Security Check Quantity"; "Security Check Quantity")
                {
                }
                field("Security Comment"; "Security Comment")
                {
                    Importance = Additional;
                }
                field("Security checked"; "Security checked")
                {
                }
                field("Security Check By"; "Security Check By")
                {
                    Editable = false;
                }
                field("Security Check Time"; "Security Check Time")
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }
}

