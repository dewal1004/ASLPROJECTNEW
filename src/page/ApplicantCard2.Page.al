page 60122 "Applicant Card2"
{
    PageType = Card;
    SourceTable = Applicants;
    UsageCategory = Documents;
    ApplicationArea = All, Basic, Suites;
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Title; Title)
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
                field(Address; Address)
                {
                    ApplicationArea = All;
                }
                field("Address 2"; "Address 2")
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
                field("Phone No."; "Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Advert Ref No"; "Advert Ref No")
                {
                    ApplicationArea = All;
                }
                field("Modified By"; "Modified By")
                {
                    ApplicationArea = All;
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                }
                field(Sex; Sex)
                {
                    ApplicationArea = All;
                }
                field("Birth Date"; "Birth Date")
                {
                    ApplicationArea = All;
                }
                field("Position Applied For"; "Position Applied For")
                {
                    ApplicationArea = All;
                }
                field("Next of Kin"; "Next of Kin")
                {
                    ApplicationArea = All;
                }
            }
            group(Communication)
            {
                field("Mobile Phone No."; "Mobile Phone No.")
                {
                    ApplicationArea = All;
                }
                field(Pager; Pager)
                {
                    ApplicationArea = All;
                }
                field("E-Mail"; "E-Mail")
                {
                    ApplicationArea = All;
                }
                field("Company E-Mail"; "Company E-Mail")
                {
                    ApplicationArea = All;
                }
                field("Alt. Address Code"; "Alt. Address Code")
                {
                    ApplicationArea = All;
                }
                field("Alt. Address Start Date"; "Alt. Address Start Date")
                {
                    ApplicationArea = All;
                }
                field("Alt. Address End Date"; "Alt. Address End Date")
                {
                    ApplicationArea = All;
                }
            }
            group(Administration)
            {
                field("Region Code"; "Region Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
            }
            group(Interview)
            {
                field("First Interview"; "First Interview")
                {
                    ApplicationArea = All;
                }
                field("Second Interview"; "Second Interview")
                {
                    ApplicationArea = All;
                }
                field("Final Interview"; "Final Interview")
                {
                    ApplicationArea = All;
                }
                field("Application Status"; "Application Status")
                {
                    ApplicationArea = All;
                }
                field("Date Accepted/Rejected"; "Date Accepted/Rejected")
                {
                    ApplicationArea = All;
                }
                field("Date Offer Made"; "Date Offer Made")
                {
                    ApplicationArea = All;
                }
                field("Agreed Start Date"; "Agreed Start Date")
                {
                    ApplicationArea = All;
                }
                field("Assigned Employee No"; "Assigned Employee No")
                {
                    ApplicationArea = All;
                }
                field("Posting Group"; "Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Employee Group"; "Employee Group")
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

