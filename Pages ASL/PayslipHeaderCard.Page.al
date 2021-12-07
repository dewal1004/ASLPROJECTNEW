page 50005 "Payslip Header Card."
{
    PageType = Card;
    SourceTable = "Payroll-Payslip Header.";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Payroll Period"; "Payroll Period")
                {
                   //*** TableRelation = Table65004;
                }
                field("Closed?"; "Closed?")
                {
                }
                field("Employee No"; "Employee No")
                {
                    LookupPageID = "Employee List";
                    //***TableRelation = Table65005;
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field(EDFILTER; EDFILTER)
                {
                }
                field("Period Start"; "Period Start")
                {
                }
                field("Period End"; "Period End")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    Editable = false;
                    TableRelation = "Country/Region Translation";
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Editable = false;
                  //***  TableRelation = Table12;
                }
                field(Edvalue; Edvalue)
                {
                }
            }
            part(Control1000000000; "Payslip Lines.")
            {
                SubPageLink = "Payroll Period" = FIELD ("Payroll Period"),
                              "Employee No" = FIELD ("Employee No");
            }
        }
    }

    actions
    {
        area(reporting)
        {
            group("&Reports")
            {
                Caption = '&Reports';
                action("Report Monthly Payslip")
                {
                    Caption = 'Print Payslip';
                    Ellipsis = true;
                    Image = "Report";
                    RunObject = Report "Monthly Payslip";
                    ShortCutKey = 'Shift+F7';
                }
            }
            action("Report ASL Create New payslips - New")
            {
                Caption = '&Create Pay Period';
                Image = "Report";
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "ASL Create New payslips - New";
            }
        }
    }
}

