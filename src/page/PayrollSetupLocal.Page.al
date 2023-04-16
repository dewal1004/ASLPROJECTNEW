page 50001 "Payroll Setup Local"
{
    PageType = Card;
    SourceTable = "ASL Payroll Setup";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Loan Nos."; "Loan Nos.")
                {
                    ApplicationArea = All;
                }
                field("Overtime Nos."; "Overtime Nos.")
                {
                    Caption = 'Overtime Register Nos.';
                    ApplicationArea = All;
                }
                field("Staff Loans Control Account"; "Staff Loans Control Account")
                {
                    ApplicationArea = All;
                }
                field("Taxfree Pay ED"; "Taxfree Pay ED")
                {
                    ApplicationArea = All;
                }
                field("Monthly Working Days"; "Monthly Working Days")
                {
                    ApplicationArea = All;
                }
                field("Daily Working Hours"; "Daily Working Hours")
                {
                    ApplicationArea = All;
                }
                field("Total Monthly Hours"; "Total Monthly Hours")
                {
                    ApplicationArea = All;
                }
            }
            group(Permission)
            {
                Caption = 'Permission';
                field("MD ID"; "MD ID")
                {
                    LookupPageID = Users;
                    ApplicationArea = All;
                }
                field("Accountant 1"; "Accountant 1")
                {
                    ApplicationArea = All;
                }
                field("Accountant 2"; "Accountant 2")
                {
                    ApplicationArea = All;
                }
                field("Accountant 3"; "Accountant 3")
                {
                    ApplicationArea = All;
                }
                field("HR Officer"; "HR Officer")
                {
                    ApplicationArea = All;
                }
                field("Allow HR Edit on"; "Allow HR Edit on")
                {
                    ApplicationArea = All;
                }
            }
            group("ED Default")
            {
                Caption = 'ED Default';
                field("Basic+Hous+Transp"; "Basic+Hous+Transp")
                {
                    ApplicationArea = All;
                }
                field("NSITF(Employee)"; "NSITF(Employee)")
                {
                    ApplicationArea = All;
                }
                field("NSITF(Employer)"; "NSITF(Employer)")
                {
                    ApplicationArea = All;
                }
                field(Seniority; Seniority)
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

