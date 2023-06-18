page 50007 "Payroll Periods."
{
    PageType = Card;
    SourceTable = "Payroll-Periods.";
    SourceTableView = sorting("Period Code") order(descending);
    Caption = 'Payroll Periods.';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Period Code"; Rec."Period Code")
                {
                    ApplicationArea = All;
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field(Closed; Rec.Closed)
                {
                    Editable = true;
                    ApplicationArea = All;
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
                ApplicationArea = All;
            }
        }
    }
}
