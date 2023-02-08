pageextension 50303 "pageextension50303" extends "Human Resources Setup"
{
    layout
    {
        addafter("Employee Nos.")
        {
            field("Casual Employees No."; "Casual Employees No.")
            {
                ApplicationArea = All;
            }
        }
    }
}

