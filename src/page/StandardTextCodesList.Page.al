page 50078 "Standard Text Codes List"
{
    Caption = 'Standard Text Codes';
    PageType = Card;
    SourceTable = "Standard Text";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                Editable = false;
                ShowCaption = false;
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Te&xt")
            {
                Caption = 'Te&xt';
                action("E&xtended Texts")
                {
                    Caption = 'E&xtended Texts';
                    RunObject = Page "Extended Text List";
                    RunPageLink = "Table Name" = CONST("Standard Text"),
                                  "No." = FIELD(Code);
                    RunPageView = SORTING("Table Name", "No.", "Language Code", "All Language Codes", "Starting Date", "Ending Date");
                    ApplicationArea = All;
                }
            }
        }
    }
}

