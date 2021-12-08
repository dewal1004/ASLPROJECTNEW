page 60122 "Applicant Card2"
{
    PageType = Card;
    SourceTable = Applicants;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                }
                field(Title; Title)
                {
                }
                field(Surname; Surname)
                {
                }
                field("First Name"; "First Name")
                {
                }
                field("Middle Name"; "Middle Name")
                {
                }
                field(Address; Address)
                {
                }
                field("Address 2"; "Address 2")
                {
                }
                field("Post Code"; "Post Code")
                {
                }
                field(County; County)
                {
                }
                field("Phone No."; "Phone No.")
                {
                }
                field("Advert Ref No"; "Advert Ref No")
                {
                }
                field("Modified By"; "Modified By")
                {
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Sex; Sex)
                {
                }
                field("Birth Date"; "Birth Date")
                {
                }
                field("Position Applied For"; "Position Applied For")
                {
                }
                field("Next of Kin"; "Next of Kin")
                {
                }
            }
            group(Communication)
            {
                field("Mobile Phone No."; "Mobile Phone No.")
                {
                }
                field(Pager; Pager)
                {
                }
                field("E-Mail"; "E-Mail")
                {
                }
                field("Company E-Mail"; "Company E-Mail")
                {
                }
                field("Alt. Address Code"; "Alt. Address Code")
                {
                }
                field("Alt. Address Start Date"; "Alt. Address Start Date")
                {
                }
                field("Alt. Address End Date"; "Alt. Address End Date")
                {
                }
            }
            group(Administration)
            {
                field("Region Code"; "Region Code")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
            }
            group(Interview)
            {
                field("First Interview"; "First Interview")
                {
                }
                field("Second Interview"; "Second Interview")
                {
                }
                field("Final Interview"; "Final Interview")
                {
                }
                field("Application Status"; "Application Status")
                {
                }
                field("Date Accepted/Rejected"; "Date Accepted/Rejected")
                {
                }
                field("Date Offer Made"; "Date Offer Made")
                {
                }
                field("Agreed Start Date"; "Agreed Start Date")
                {
                }
                field("Assigned Employee No"; "Assigned Employee No")
                {
                }
                field("Posting Group"; "Posting Group")
                {
                }
                field("Employee Group"; "Employee Group")
                {
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
            }
            action("E&xport")
            {
                Caption = 'E&xport';
            }
            action(Delete)
            {
                Caption = 'Delete';
            }
        }
        area(Processing)
        {
            // Caption = 'Applicant';
            action("&List")
            {
                Caption = '&List';
            }
            action("Co&mments")
            {
                Caption = 'Co&mments';
            }
            action("&Picture")
            {
                Caption = '&Picture';
            }
            action("&Alternative Addresses")
            {
                Caption = '&Alternative Addresses';
            }
            action("Q&ualifications")
            {
                Caption = 'Q&ualifications';
            }
            action("Qualifications Overvie&w")
            {
                Caption = 'Qualifications Overvie&w';
            }
            action("Applicant Relatives/Guarrantor")
            {
                Caption = 'Applicant Relatives/Guarrantor';
            }
            action("----------------")
            {
                Caption = '----------------';
            }
            action("Con&vert to Staff")
            {
                Caption = 'Con&vert to Staff';
            }
        }
    }
}

