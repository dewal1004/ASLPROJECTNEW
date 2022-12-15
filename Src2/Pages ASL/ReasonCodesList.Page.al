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
                field("Code"; Code)
                {
                }
                field(Description; Description)
                {
                }
                field(Type; Type)
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
    }
}

