page 50005 "Payslip Header Card."
{
    PageType = Card;
    SourceTable = "Payroll-Payslip Header.";
    Caption = 'Payslip Header Card.';
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Payroll Period"; Rec."Payroll Period")
                {
                    ApplicationArea = All;
                    //*** TableRelation = Table65004;
                }
                field("Closed?"; Rec."Closed?")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; Rec."Employee No")
                {
                    LookupPageID = "Employee List";
                    ApplicationArea = All;
                    //***TableRelation = Table65005;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field(EDFILTER; Rec.EDFILTER)
                {
                    ApplicationArea = All;
                }
                field("Period Start"; Rec."Period Start")
                {
                    ApplicationArea = All;
                }
                field("Period End"; Rec."Period End")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    Editable = false;
                    TableRelation = "Country/Region Translation";
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    Editable = false;
                    ApplicationArea = All;
                    //***  TableRelation = Table12;
                }
                field(Edvalue; Rec.Edvalue)
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
