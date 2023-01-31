page 50200 "permission rangess"
{
    PageType = List;
    SourceTable = "Permission Range";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
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
                field("Limited Usage Permission"; "Limited Usage Permission")
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

