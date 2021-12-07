report 50053 "PRoll; Close Period"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PRollClosePeriod.rdlc';

    dataset
    {
        dataitem("Payroll-Payslip Header."; "Payroll-Payslip Header.")
        {
            DataItemTableView = SORTING("Payroll Period", "Employee No");
            RequestFilterFields = "Payroll Period", "Employee No";
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
            column(Payroll_Payslip_Header_Caption; Payroll_Payslip_Header_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Payroll_Payslip_Header__Payroll_Period; "Payroll Period")
            {
            }
            column(Payroll_Payslip_Header__Employee_No; "Employee No")
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*Close  current header*/
                begin
                    /* Set Closed to true in P.Roll Header file */
                    "Closed?" := true;
                    Modify
                end;

            end;

            trigger OnPreDataItem()
            begin
                ReqPeriod := GetFilter("Payroll Period");

                if GetFilter("Payroll Period") = '' then
                    Error('The Period must be entered as a parameter');
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
        RequestPeriodRec: Record "Payroll-Periods.";
        ReqPeriod: Code[10];
        Payroll_Payslip_Header_CaptionLbl: Label 'Payroll-Payslip Header.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

