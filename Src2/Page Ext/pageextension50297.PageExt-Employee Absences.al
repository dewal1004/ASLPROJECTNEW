pageextension 50297 pageextension50297 extends "Employee Absences"
{
    layout
    {
        modify("Employee No.")
        {
            HideValue = true;
        }
        addafter(Quantity)
        {
            field("Employee Contract code"; "Employee Contract code")
            {
                ApplicationArea = All;
            }
        }
    }
}

