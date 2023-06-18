page 90077 "Permission Range"
{
    PageType = Card;
    SourceTable = "Permission Range";
    Caption = 'Permission Range';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Object Type"; Rec."Object Type")
                {
                    ApplicationArea = All;
                }
                field(Index; Rec.Index)
                {
                    ApplicationArea = All;
                }
                field(From; Rec.From)
                {
                    ApplicationArea = All;
                }
                field("To"; Rec."To")
                {
                    ApplicationArea = All;
                }
                field("Read Permission"; Rec."Read Permission")
                {
                    ApplicationArea = All;
                }
                field("Insert Permission"; Rec."Insert Permission")
                {
                    ApplicationArea = All;
                }
                field("Modify Permission"; Rec."Modify Permission")
                {
                    ApplicationArea = All;
                }
                field("Delete Permission"; Rec."Delete Permission")
                {
                    ApplicationArea = All;
                }
                field("Execute Permission"; Rec."Execute Permission")
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
