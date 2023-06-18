page 50050 "Monthly Variables Header Card."
{
    PageType = Card;
    SourceTable = "Monthly Variables Header.";
    UsageCategory = Documents;
    ApplicationArea = All, Basic;
    Caption = 'Monthly Variables Header Card.';
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Payroll Period"; Rec."Payroll Period")
                {
                    TableRelation = "Payroll-Periods.";
                    ApplicationArea = All;
                }
                field("Employee No"; Rec."Employee No")
                {
                    LookupPageID = "Employee List";
                    TableRelation = Employee;
                    ApplicationArea = All;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field(VariableFilter; Rec.VariableFilter)
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
                    //*** TableRelation = Table12;
                }
                field(VariableAmount; Rec.VariableAmount)
                {
                    ApplicationArea = All;
                }
            }
            part(Control1000000000; "Monthly Variables Lines.")
            {
                SubPageLink = "Payroll Period" = FIELD("Payroll Period"),
                              "Employee No" = FIELD("Employee No");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}
