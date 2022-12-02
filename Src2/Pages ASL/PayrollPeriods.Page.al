page 50007 "Payroll Periods."
{
    PageType = Card;
    SourceTable = "Payroll-Periods.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Period Code"; "Period Code")
                {
                }
                field("Start Date"; "Start Date")
                {
                }
                field("End Date"; "End Date")
                {
                }
                field(Name; Name)
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Closed; Closed)
                {
                    Editable = true;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Create Pay Period")
            {
                Caption = '&Create Pay Period';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "ASL Create New payslips - New";
            }
        }
    }
}

