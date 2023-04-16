page 90077 "Permission Range"
{
    PageType = Card;
    SourceTable = "Permission Range";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Object Type"; "Object Type")
                {
                    ApplicationArea = All;
                }
                field(Index; Index)
                {
                    ApplicationArea = All;
                }
                field(From; From)
                {
                    ApplicationArea = All;
                }
                field("To"; "To")
                {
                    ApplicationArea = All;
                }
                field("Read Permission"; "Read Permission")
                {
                    ApplicationArea = All;
                }
                field("Insert Permission"; "Insert Permission")
                {
                    ApplicationArea = All;
                }
                field("Modify Permission"; "Modify Permission")
                {
                    ApplicationArea = All;
                }
                field("Delete Permission"; "Delete Permission")
                {
                    ApplicationArea = All;
                }
                field("Execute Permission"; "Execute Permission")
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

