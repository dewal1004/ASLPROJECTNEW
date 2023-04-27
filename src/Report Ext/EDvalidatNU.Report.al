report 52148 "EDvalidat NU*"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/EDvalidatNU.rdlc';

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
            column(Payroll_Employee_Group_Lines_Caption; Payroll_Employee_Group_Lines_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Payroll_Employee_Group_Lines__Employee_Group; "Employee Group")
            {
            }
            column(Payroll_Employee_Group_Lines__E_D_Code; "E/D Code")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if "E/D Code" = '6100' then
                    //  "Payroll-Employee Group Lines.".VALIDATE(Units);
                    "Payroll-Employee Group Lines.".Units := 'Hours';
                "Payroll-Employee Group Lines.".Rate := 1;
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

