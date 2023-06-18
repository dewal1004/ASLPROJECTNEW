page 50027 "Applicant Qualifications"
{
    AutoSplitKey = true;
    DataCaptionFields = "Employee No.";
    PageType = Card;
    SourceTable = "Employee Qualification";
    Caption = 'Applicant Qualifications';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Qualification Code"; Rec."Qualification Code")
                {
                    ApplicationArea = All;
                }
                field("From Date"; Rec."From Date")
                {
                    ApplicationArea = All;
                }
                field("To Date"; Rec."To Date")
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Expiration Date"; Rec."Expiration Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Institution/Company"; Rec."Institution/Company")
                {
                    ApplicationArea = All;
                }
                field(Cost; Rec.Cost)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Course Grade"; Rec."Course Grade")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Comment; Rec.Comment)
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
            group("Q&ualification")
            {
                Caption = 'Q&ualification';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Human Resource Comment Sheet";
                    RunPageLink = "Table Name" = CONST("Employee Qualification"),
                                  "No." = FIELD("Employee No."),
                                  "Table Line No." = FIELD("Line No.");
                    ApplicationArea = All;
                }
                separator(Action23)
                {
                }
                action("Q&ualification Overview")
                {
                    Caption = 'Q&ualification Overview';
                    RunObject = Page "Qualification Overview";
                    ApplicationArea = All;
                }
            }
        }
    }
}
