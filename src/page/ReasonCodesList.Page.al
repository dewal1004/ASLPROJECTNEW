page 50077 "Reason Codes List"
{
    Caption = 'Reason Codes';
    PageType = Card;
    SourceTable = "Reason Code";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}
