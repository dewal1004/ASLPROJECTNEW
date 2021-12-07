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
                }
                field("Overtime Nos."; "Overtime Nos.")
                {
                    Caption = 'Overtime Register Nos.';
                }
                field("Staff Loans Control Account"; "Staff Loans Control Account")
                {
                }
                field("Taxfree Pay ED"; "Taxfree Pay ED")
                {
                }
                field("Monthly Working Days"; "Monthly Working Days")
                {
                }
                field("Daily Working Hours"; "Daily Working Hours")
                {
                }
                field("Total Monthly Hours"; "Total Monthly Hours")
                {
                }
            }
            group(Permission)
            {
                Caption = 'Permission';
                field("MD ID"; "MD ID")
                {
                    LookupPageID = Users;
                }
                field("Accountant 1"; "Accountant 1")
                {
                }
                field("Accountant 2"; "Accountant 2")
                {
                }
                field("Accountant 3"; "Accountant 3")
                {
                }
                field("HR Officer"; "HR Officer")
                {
                }
                field("Allow HR Edit on"; "Allow HR Edit on")
                {
                }
            }
            group("ED Default")
            {
                Caption = 'ED Default';
                field("Basic+Hous+Transp"; "Basic+Hous+Transp")
                {
                }
                field("NSITF(Employee)"; "NSITF(Employee)")
                {
                }
                field("NSITF(Employer)"; "NSITF(Employer)")
                {
                }
                field(Seniority; Seniority)
                {
                }
            }
        }
    }

    actions
    {
    }
}

