page 50117 "Purchase QCC List"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All,Basic;
    SourceTable = "Purchase Requisition1";
    SourceTableView = WHERE ("Security checked" = CONST (true),
                            "QCC Check" = CONST (false),
                            "Sent For QCC" = CONST (true),
                            Process = CONST (false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req No."; "Req No.")
                {
                    Enabled = false;
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
                field("Req. By Name"; "Req. By Name")
                {
                    Editable = false;
                }
            }
            group("QCC Action")
            {
                //The GridLayout property is only supported on controls of type Grid
                //GridLayout = Rows;
                field("QCC Check Quantity"; "QCC Check Quantity")
                {
                }
                field("QCC Comment"; "QCC Comment")
                {
                }
                field("QCC Check"; "QCC Check")
                {
                }
                field("QCC Check  By"; "QCC Check  By")
                {
                    Editable = false;
                }
                field("QCC Check  Name"; "QCC Check  Name")
                {
                    Editable = false;
                }
                field("QCC Check Time"; "QCC Check Time")
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

