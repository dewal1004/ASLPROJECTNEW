page 50035 "Skill Appraisals list"
{
    PageType = Card;
    SourceTable = "Skill Appraisal";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Skill code"; "Skill code")
                {
                    ApplicationArea = All;
                }
                field("Skill Description"; "Skill Description")
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

