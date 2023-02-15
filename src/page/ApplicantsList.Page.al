page 50026 "Applicants List"
{
    PageType = List;
    SourceTable = Applicants;
    UsageCategory = Lists;
    ApplicationArea = All, Basic, Suites;
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                Editable = false;
                ShowCaption = false;
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Advert Ref No"; "Advert Ref No")
                {
                    ApplicationArea = All;
                }
                field("Position Applied For"; "Position Applied For")
                {
                    ApplicationArea = All;
                }
                field(Surname; Surname)
                {
                    ApplicationArea = All;
                }
                field("First Name"; "First Name")
                {
                    ApplicationArea = All;
                }
                field("Middle Name"; "Middle Name")
                {
                    ApplicationArea = All;
                }
                field(Initials; Initials)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                }
                field(Address; Address)
                {
                    ApplicationArea = All;
                }
                field("Address 2"; "Address 2")
                {
                    ApplicationArea = All;
                }
                field(City; City)
                {
                    ApplicationArea = All;
                }
                field("Post Code"; "Post Code")
                {
                    ApplicationArea = All;
                }
                field(County; County)
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
            group("&Applicant")
            {
                Caption = '&Applicant';
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page "Applicant Card";
                    ShortCutKey = 'Shift+F7';
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnInit()
    begin
        CurrPage.LookupMode := true;
    end;
}

