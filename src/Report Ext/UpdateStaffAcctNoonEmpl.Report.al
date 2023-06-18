report 99985 "Update Staff Acct No. on Empl."
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateStaffAcctNoonEmpl.rdlc';
    Caption = 'Update Staff Acct No. on Empl.';
    dataset
    {
        dataitem(Employee; Employee)
        {
            RequestFilterFields = "No.";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(USERID; UserId)
            {
            }
            column(Employee__No__; "No.")
            {
            }
            column(Employee__First_Name_; "First Name")
            {
            }
            column(Employee__Last_Name_; "Last Name")
            {
            }
            column(Employee__Acct__No_; "Acct. No")
            {
            }
            column(EmployeeCaption; EmployeeCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Employee__No__Caption; FieldCaption("No."))
            {
            }
            column(Employee__First_Name_Caption; FieldCaption("First Name"))
            {
            }
            column(Employee__Last_Name_Caption; FieldCaption("Last Name"))
            {
            }
            column(Employee__Acct__No_Caption; FieldCaption("Acct. No"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if "Acct. No" <> '' then begin
                    "Acct. No" := 'EC' + CopyStr("No.", 2);
                    "Acct. type" := Employee."Acct. type"::Customer;
                end
                else
                    CurrReport.Skip();
                Modify();
            end;
        }
    }

    requestpage
    {
        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        EmployeeCaptionLbl: Label 'Employee';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
