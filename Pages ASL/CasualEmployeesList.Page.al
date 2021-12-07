page 50046 "Casual Employees List"
{
    PageType = Card;
    SourceTable = "Casual Employees";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; "No.")
                {
                }
                field("Employee name"; "Employee name")
                {
                }
                field(Address; Address)
                {
                }
                field(Sex; Sex)
                {
                }
                field("Date of Birth"; "Date of Birth")
                {
                }
                field("Job Code"; "Job Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Date Employed"; "Date Employed")
                {
                }
                field("Leaving Date"; "Leaving Date")
                {
                }
                field("Employee No Filter"; "Employee No Filter")
                {
                }
                field("Job Code Filter"; "Job Code Filter")
                {
                }
                field("Global Dimension 2 Filter"; "Global Dimension 2 Filter")
                {
                }
                field("Date Employed Filter"; "Date Employed Filter")
                {
                }
                field("Leaving Date Filter"; "Leaving Date Filter")
                {
                }
            }
        }
    }

    actions
    {
    }
}

