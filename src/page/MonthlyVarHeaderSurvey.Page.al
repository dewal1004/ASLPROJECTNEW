page 50052 "Monthly Var. Header Survey."
{
    CardPageID = "Monthly Variables Header Card.";
    DelayedInsert = false;
    PageType = List;
    SourceTable = "Monthly Variables Header.";
    UsageCategory = Lists;
    ApplicationArea = All, Basic;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Payroll Period"; "Payroll Period")
                {
                    ApplicationArea = All;
                }
                field("Period Name"; "Period Name")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; "Employee No")
                {
                    ApplicationArea = All;
                }
                field("Employee Name"; "Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Closed?"; "Closed?")
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

