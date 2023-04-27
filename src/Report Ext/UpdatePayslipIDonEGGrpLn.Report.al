report 99984 "Update Payslip ID on EG Grp Ln"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdatePayslipIDonEGGrpLn.rdlc';

    dataset
    {
        dataitem("Payroll-Employee Group Lines."; "Payroll-Employee Group Lines.")
        {
            RequestFilterFields = "Employee Group";
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
            column(Payroll_Employee_Group_Lines___Employee_Group_; "Employee Group")
            {
            }
            column(Payroll_Employee_Group_Lines___E_D_Code_; "E/D Code")
            {
            }
            column(Payroll_Employee_Group_Lines___Payslip_Group_ID_; "Payslip Group ID")
            {
            }
            column(Payroll_Employee_Group_Lines___Employee_Name_; "Employee Name")
            {
            }
            column(Payroll_Employee_Group_Lines___ED_Category_; "ED Category")
            {
            }
            column(Payroll_Employee_Group_Lines_Caption; Payroll_Employee_Group_Lines_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Payroll_Employee_Group_Lines___Employee_Group_Caption; FieldCaption("Employee Group"))
            {
            }
            column(Payroll_Employee_Group_Lines___E_D_Code_Caption; FieldCaption("E/D Code"))
            {
            }
            column(Payroll_Employee_Group_Lines___Payslip_Group_ID_Caption; FieldCaption("Payslip Group ID"))
            {
            }
            column(Payroll_Employee_Group_Lines___Employee_Name_Caption; FieldCaption("Employee Name"))
            {
            }
            column(Payroll_Employee_Group_Lines___ED_Category_Caption; FieldCaption("ED Category"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Validate("E/D Code");
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
        Payroll_Employee_Group_Lines_CaptionLbl: Label 'Payroll-Employee Group Lines.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

