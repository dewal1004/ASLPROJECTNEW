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
                field("Payroll Period"; Rec."Payroll Period")
                {
                    ApplicationArea = All;
                }
                field("Period Name"; Rec."Period Name")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; Rec."Employee No")
                {
                    ApplicationArea = All;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Closed?"; Rec."Closed?")
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

