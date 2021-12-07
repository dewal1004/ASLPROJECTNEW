page 50075 "Maintenance List"
{
    Caption = 'Maintenance';
    PageType = Card;
    SourceTable = Maintenance;

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
            }
        }
    }

    actions
    {
    }
}

