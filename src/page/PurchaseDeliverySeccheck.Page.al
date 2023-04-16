page 50116 "Purchase Delivery Sec. check"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    SourceTable = "Purchase Requisition1";
    SourceTableView = WHERE("Sent to Security" = CONST(true),
                            "QCC Check" = CONST(false),
                            "Security checked" = CONST(false));

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
                field("Security Check Quantity"; "Security Check Quantity")
                {
                    ApplicationArea = All;
                }
                field("Security Comment"; "Security Comment")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Security checked"; "Security checked")
                {
                    ApplicationArea = All;
                }
                field("Security Check By"; "Security Check By")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Security Check Time"; "Security Check Time")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

