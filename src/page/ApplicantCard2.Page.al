page 60122 "Applicant Card2"
{
    PageType = Card;
    SourceTable = Applicants;
    UsageCategory = Documents;
    ApplicationArea = All, Basic, Suites;
    Caption = 'Applicant Card2';
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                }
                field(Surname; Rec.Surname)
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field("Address 2"; Rec."Address 2")
                {
                    ApplicationArea = All;
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                }
                field(County; Rec.County)
                {
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Advert Ref No"; Rec."Advert Ref No")
                {
                    ApplicationArea = All;
                }
                field("Modified By"; Rec."Modified By")
                {
                    ApplicationArea = All;
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field(Sex; Rec.Sex)
                {
                    ApplicationArea = All;
                }
                field("Birth Date"; Rec."Birth Date")
                {
                    ApplicationArea = All;
                }
                field("Position Applied For"; Rec."Position Applied For")
                {
                    ApplicationArea = All;
                }
                field("Next of Kin"; Rec."Next of Kin")
                {
                    ApplicationArea = All;
                }
            }
            group(Communication)
            {
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                }
                field(Pager; Rec.Pager)
                {
                    ApplicationArea = All;
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                }
                field("Company E-Mail"; Rec."Company E-Mail")
                {
                    ApplicationArea = All;
                }
                field("Alt. Address Code"; Rec."Alt. Address Code")
                {
                    ApplicationArea = All;
                }
                field("Alt. Address Start Date"; Rec."Alt. Address Start Date")
                {
                    ApplicationArea = All;
                }
                field("Alt. Address End Date"; Rec."Alt. Address End Date")
                {
                    ApplicationArea = All;
                }
            }
            group(Administration)
            {
                field("Region Code"; Rec."Region Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
            }
            group(Interview)
            {
                field("First Interview"; Rec."First Interview")
                {
                    ApplicationArea = All;
                }
                field("Second Interview"; Rec."Second Interview")
                {
                    ApplicationArea = All;
                }
                field("Final Interview"; Rec."Final Interview")
                {
                    ApplicationArea = All;
                }
                field("Application Status"; Rec."Application Status")
                {
                    ApplicationArea = All;
                }
                field("Date Accepted/Rejected"; Rec."Date Accepted/Rejected")
                {
                    ApplicationArea = All;
                }
                field("Date Offer Made"; Rec."Date Offer Made")
                {
                    ApplicationArea = All;
                }
                field("Agreed Start Date"; Rec."Agreed Start Date")
                {
                    ApplicationArea = All;
                }
                field("Assigned Employee No"; Rec."Assigned Employee No")
                {
                    ApplicationArea = All;
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Employee Group"; Rec."Employee Group")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action(Import)
            {
                Caption = 'Import';
                ApplicationArea = All;
            }
            action("E&xport")
            {
                Caption = 'E&xport';
                ApplicationArea = All;
            }
            action(Delete)
            {
                Caption = 'Delete';
                ApplicationArea = All;
            }
        }
        area(Processing)
        {
            // Caption = 'Applicant';
            action("&List")
            {
                Caption = '&List';
                ApplicationArea = All;
            }
            action("Co&mments")
            {
                Caption = 'Co&mments';
                ApplicationArea = All;
            }
            action("&Picture")
            {
                Caption = '&Picture';
                ApplicationArea = All;
            }
            action("&Alternative Addresses")
            {
                Caption = '&Alternative Addresses';
                ApplicationArea = All;
            }
            action("Q&ualifications")
            {
                Caption = 'Q&ualifications';
                ApplicationArea = All;
            }
            action("Qualifications Overvie&w")
            {
                Caption = 'Qualifications Overvie&w';
                ApplicationArea = All;
            }
            action("Applicant Relatives/Guarrantor")
            {
                Caption = 'Applicant Relatives/Guarrantor';
                ApplicationArea = All;
            }
            action("----------------")
            {
                Caption = '----------------';
                ApplicationArea = All;
            }
            action("Con&vert to Staff")
            {
                Caption = 'Con&vert to Staff';
                ApplicationArea = All;
            }
        }
    }
}
