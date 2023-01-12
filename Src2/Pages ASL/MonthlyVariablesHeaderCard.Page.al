page 50050 "Monthly Variables Header Card."
{
    PageType = Card;
    SourceTable = "Monthly Variables Header.";
    UsageCategory = Documents;
    ApplicationArea = All, Basic;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Payroll Period"; "Payroll Period")
                {
                    TableRelation = "Payroll-Periods.";
                    ApplicationArea = All;
                }
                field("Employee No"; "Employee No")
                {
                    LookupPageID = "Employee List";
                    TableRelation = Employee;
                    ApplicationArea = All;
                }
                field("Employee Name"; "Employee Name")
                {
                    ApplicationArea = All;
                }
                field(VariableFilter; VariableFilter)
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
                    //*** TableRelation = Table12;
                }
                field(VariableAmount; VariableAmount)
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

