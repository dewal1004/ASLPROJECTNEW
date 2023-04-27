report 51100 "employeeCorrection"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/employeeCorrection.rdlc';

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
            column(CurrReport_PAGENO; CurrReport.PageNo)
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

            trigger OnAfterGetRecord()
            begin
                /*IF  Employee."Statistics Group Code" ='' THEN
                   Employee."Statistics Group Code":= Employee."Statistics Group Code":: "12545";
                   MODIFY;*/

                Modify;

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
        resource: Record Resource;
        EmployeeCaptionLbl: Label 'Employee';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

