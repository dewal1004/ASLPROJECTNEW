page 50027 "Applicant Qualifications"
{
    AutoSplitKey = true;
    DataCaptionFields = "Employee No.";
    PageType = Card;
    SourceTable = "Employee Qualification";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Qualification Code"; "Qualification Code")
                {
                }
                field("From Date"; "From Date")
                {
                }
                field("To Date"; "To Date")
                {
                }
                field(Type; Type)
                {
                }
                field(Description; Description)
                {
                }
                field("Expiration Date"; "Expiration Date")
                {
                    Visible = false;
                }
                field("Institution/Company"; "Institution/Company")
                {
                }
                field(Cost; Cost)
                {
                    Visible = false;
                }
                field("Course Grade"; "Course Grade")
                {
                    Visible = false;
                }
                field(Comment; Comment)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Q&ualification")
            {
                Caption = 'Q&ualification';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Human Resource Comment Sheet";
                    RunPageLink = "Table Name" = CONST ("Employee Qualification"),
                                  "No." = FIELD ("Employee No."),
                                  "Table Line No." = FIELD ("Line No.");
                }
                separator(Action23)
                {
                }
                action("Q&ualification Overview")
                {
                    Caption = 'Q&ualification Overview';
                    RunObject = Page "Qualification Overview";
                }
            }
        }
    }
}

