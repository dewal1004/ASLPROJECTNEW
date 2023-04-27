report 50065 "Amounts for one E/D"
{
    // This report totals the amounts for the required E/D in the selected periods
    // The amounts are listed per Employee. Employees without this E/D within the
    // selected period will not be listed in the report
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/AmountsforoneED.rdlc';


    dataset
    {
        dataitem(Employee; Employee)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "Period Filter", "ED Filter";
            RequestFilterHeading = 'Period and E/D Code ';
            column(CompanyData_Name; CompanyData.Name)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(DELCHR___GETFILTER__ED_Filter________________in_Period_______GETFILTER__Period_Filter__; DelChr(GetFilter("ED Filter"), '<>') + '   in Period: ' + GetFilter("Period Filter"))
            {
            }
            column(TODAY; Today)
            {
            }
            column(DELCHR__FullName_______; DelChr(FullName, '<>'))
            {
            }
            column(Employee__No__; "No.")
            {
            }
            column(Employee_EDAmount; EDAmount)
            {
            }
            column(EmpCount; EmpCount)
            {
            }
            column(Employee_EDAmount_Control18; EDAmount)
            {
            }
            column(Report_Page_Caption; Report_Page_CaptionLbl)
            {
            }
            column(Employee_amounts_for_E_D_Caption; Employee_amounts_for_E_D_CaptionLbl)
            {
            }
            column(Report_print_date_Caption; Report_print_date_CaptionLbl)
            {
            }
            column(Employee_NameCaption; Employee_NameCaptionLbl)
            {
            }
            column(Employee_No_Caption; Employee_No_CaptionLbl)
            {
            }
            column(AmountCaption; AmountCaptionLbl)
            {
            }
            column(Number_of_employees_Caption; Number_of_employees_CaptionLbl)
            {
            }
            column(TOTALCaption; TOTALCaptionLbl)
            {
            }
            column(AMOUNTCaption_Control20; AMOUNTCaption_Control20Lbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                CalcFields(EDAmount);
                if EDAmount = 0 then
                    CurrReport.Skip
                else
                    EmpCount := EmpCount + 1;
            end;

            trigger OnPreDataItem()
            begin
                if GetFilter("Period Filter") = '' then
                    Error('The period delimitation must be entered')
                else
                    if GetFilter("ED Filter") = '' then
                        Error('The ED delimitation must be entered')
                    else
                        if (StrPos(GetFilter("ED Filter"), '..') <> 0) then
                            Error('Only one E/D code can be entered as the ED delimitation');

                CurrReport.CreateTotals(EDAmount);

                CompanyData.Get;
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

    trigger OnPreReport()
    begin
        EmpCount := 0;
    end;

    var
        CompanyData: Record "Company Information";
        EmpCount: Integer;
        Report_Page_CaptionLbl: Label 'Report Page:';
        Employee_amounts_for_E_D_CaptionLbl: Label 'Employee amounts for E/D:';
        Report_print_date_CaptionLbl: Label 'Report print date:';
        Employee_NameCaptionLbl: Label 'Employee Name';
        Employee_No_CaptionLbl: Label 'Employee No.';
        AmountCaptionLbl: Label 'Amount';
        Number_of_employees_CaptionLbl: Label 'Number of employees:';
        TOTALCaptionLbl: Label 'TOTAL';
        AMOUNTCaption_Control20Lbl: Label 'AMOUNT';
}

