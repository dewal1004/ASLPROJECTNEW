report 50063 "Cash Payroll Schedule"
{
    // This report prints the amounts for the required E/D;
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/CashPayrollSchedule.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;


    dataset
    {
        dataitem(Employee; Employee)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "Period Filter", "Mode of payment";
            RequestFilterHeading = 'Period';
            column(GETFILTER__Period_Filter__; GetFilter("Period Filter"))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(CompanyData_Name; CompanyData.Name)
            {
            }
            column(TODAY; Today)
            {
            }
            column(DELCHR__FullName_______; DelChr(FullName, '<>'))
            {
            }
            column(BasicAm; BasicAm)
            {
            }
            column(Employee__Mode_of_payment_; "Mode of payment")
            {
            }
            column(EmptyString; '')
            {
            }
            column(BasicAm_Control26; BasicAm)
            {
            }
            column(Cash_Payroll_ScheduleCaption; Cash_Payroll_ScheduleCaptionLbl)
            {
            }
            column(Period_Caption; Period_CaptionLbl)
            {
            }
            column(Page_Caption; Page_CaptionLbl)
            {
            }
            column(Report_print_date_Caption; Report_print_date_CaptionLbl)
            {
            }
            column(Employee_NameCaption; Employee_NameCaptionLbl)
            {
            }
            column(Net_SalaryCaption; Net_SalaryCaptionLbl)
            {
            }
            column(Employee__Mode_of_payment_Caption; FieldCaption("Mode of payment"))
            {
            }
            column(TOTALSCaption; TOTALSCaptionLbl)
            {
            }
            column(Employee_No_; "No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Employee.Blocked then CurrReport.Skip; //Added by Adam to skip Blocked Employees
                if Employee."Mode of payment" =
                   Employee."Mode of payment"::Bank then
                    CurrReport.Skip;

                SetRange("ED Filter", BASIC);
                CalcFields(EDAmount);
                BasicAm := EDAmount;

                if BasicAm = 0 then CurrReport.Skip;


                if HeadPrint then begin
                    HeadPrint := false
                end
            end;

            trigger OnPreDataItem()
            begin
                if GetFilter("Period Filter") = '' then
                    Error('The period delimitation must be entered');



                CurrReport.CreateTotals(EmployeeAm, EmployerAm, BasicAm);

                CompanyData.Get;
                HeadPrint := true;
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
        BasicAm: Decimal;
        BASIC: Code[20];
        Edrec: Record "Payroll-E/D Codes.";
        EmployerAm: Decimal;
        EmployeeAm: Decimal;
        CompanyData: Record "Company Information";
        NSSF1: Code[20];
        NSSF2: Code[20];
        HeadPrint: Boolean;
        Cash_Payroll_ScheduleCaptionLbl: Label 'Cash Payroll Schedule';
        Period_CaptionLbl: Label 'Period:';
        Page_CaptionLbl: Label 'Page:';
        Report_print_date_CaptionLbl: Label 'Report print date:';
        Employee_NameCaptionLbl: Label 'Employee Name';
        Net_SalaryCaptionLbl: Label 'Net Salary';
        TOTALSCaptionLbl: Label 'TOTALS';
}

