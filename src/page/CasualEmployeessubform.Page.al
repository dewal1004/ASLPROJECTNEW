page 50048 "Casual Employees subform"
{
    Editable = false;
    PageType = ListPart;
    SourceTable = "Casual Employees";

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
                field("Employee name"; "Employee name")
                {
                    ApplicationArea = All;
                }
                field(Address; Address)
                {
                    ApplicationArea = All;
                }
                field(Sex; Sex)
                {
                    ApplicationArea = All;
                }
                field("Date of Birth"; "Date of Birth")
                {
                    ApplicationArea = All;
                }
                field("Job Code"; "Job Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Date Employed"; "Date Employed")
                {
                    ApplicationArea = All;
                }
                field("Leaving Date"; "Leaving Date")
                {
                    ApplicationArea = All;
                }
                field("Employee No Filter"; "Employee No Filter")
                {
                    ApplicationArea = All;
                }
                field("Job Code Filter"; "Job Code Filter")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Filter"; "Global Dimension 2 Filter")
                {
                    ApplicationArea = All;
                }
                field("Date Employed Filter"; "Date Employed Filter")
                {
                    ApplicationArea = All;
                }
                field("Leaving Date Filter"; "Leaving Date Filter")
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

