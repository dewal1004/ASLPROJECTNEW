page 50117 "Purchase QCC List"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    SourceTable = "Purchase Requisition1";
    SourceTableView = WHERE("Security checked" = CONST(true),
                            "QCC Check" = CONST(false),
                            "Sent For QCC" = CONST(true),
                            Process = CONST(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Req No."; "Req No.")
                {
                    Enabled = false;
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
                field("Req. By Name"; "Req. By Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
            group("QCC Action")
            {
                //The GridLayout property is only supported on controls of type Grid
                //GridLayout = Rows;
                field("QCC Check Quantity"; "QCC Check Quantity")
                {
                    ApplicationArea = All;
                }
                field("QCC Comment"; "QCC Comment")
                {
                    ApplicationArea = All;
                }
                field("QCC Check"; "QCC Check")
                {
                    ApplicationArea = All;
                }
                field("QCC Check  By"; "QCC Check  By")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("QCC Check  Name"; "QCC Check  Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("QCC Check Time"; "QCC Check Time")
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

