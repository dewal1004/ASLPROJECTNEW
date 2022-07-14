page 50050 "Monthly Variables Header Card."
{
    PageType = Card;
    SourceTable = "Monthly Variables Header.";
    UsageCategory = Documents;
    ApplicationArea = All,Basic;

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
                }
                field("Employee No"; "Employee No")
                {
                    LookupPageID = "Employee List";
                    TableRelation = Employee;
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field(VariableFilter; VariableFilter)
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
                   //*** TableRelation = Table12;
                }
                field(VariableAmount; VariableAmount)
                {
                }
            }
            part(Control1000000000; "Monthly Variables Lines.")
            {
                SubPageLink = "Payroll Period" = FIELD ("Payroll Period"),
                              "Employee No" = FIELD ("Employee No");
            }
        }
    }

    actions
    {
    }
}

