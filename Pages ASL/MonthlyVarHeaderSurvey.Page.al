page 50052 "Monthly Var. Header Survey."
{
    CardPageID = "Monthly Variables Header Card.";
    DelayedInsert = false;
    PageType = List;
    SourceTable = "Monthly Variables Header.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Payroll Period"; "Payroll Period")
                {
                }
                field("Period Name"; "Period Name")
                {
                }
                field("Employee No"; "Employee No")
                {
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field("Closed?"; "Closed?")
                {
                }
            }
        }
    }

    actions
    {
    }
}

