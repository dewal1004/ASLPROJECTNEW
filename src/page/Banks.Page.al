page 50021 "Banks."
{
    PageType = Card;
    SourceTable = "Payroll-Banks.";

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
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Main Bank Code"; Rec."Main Bank Code")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
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

