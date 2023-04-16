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
                    ApplicationArea = All;
                    //*** TableRelation = Table65004;
                }
                field("Closed?"; "Closed?")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; "Employee No")
                {
                    LookupPageID = "Employee List";
                    ApplicationArea = All;
                    //***TableRelation = Table65005;
                }
                field("Employee Name"; "Employee Name")
                {
                    ApplicationArea = All;
                }
                field(EDFILTER; EDFILTER)
                {
                    ApplicationArea = All;
                }
                field("Period Start"; "Period Start")
                {
                    ApplicationArea = All;
                }
                field("Period End"; "Period End")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    Editable = false;
                    TableRelation = "Country/Region Translation";
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Editable = false;
                    ApplicationArea = All;
                    //***  TableRelation = Table12;
                }
                field(Edvalue; Edvalue)
                {
                    ApplicationArea = All;
                }
            }
            part(Control1000000000; "Payslip Lines.")
            {
                SubPageLink = "Payroll Period" = FIELD("Payroll Period"),
                              "Employee No" = FIELD("Employee No");
                ApplicationArea = All;
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
                    ApplicationArea = All;
                }
            }
            action("Report ASL Create New payslips - New")
            {
                Caption = '&Create Pay Period';
                Image = "Report";
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "ASL Create New payslips - New";
                ApplicationArea = All;
            }
        }
    }
}

