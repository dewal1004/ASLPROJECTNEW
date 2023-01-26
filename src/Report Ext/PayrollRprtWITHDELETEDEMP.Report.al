report 50030 "Payroll Rprt- WITH DELETED EMP"
{
    // This report prints a salary schedule for employees. The user should enter
    // the Payroll period and if necessary also the specific Employee number(s) that
    // are required to appear in the report. The E/Ds that are to appear in the
    // schedule MUST be entered.(In this revised edition default EDs have been entered.
    // The schedule is a matrix of employees on the vertical axis and the required
    // E/Ds in the Horizontal axis.
    // The user can specify that the ED.Descriptions appear in the column headers
    // instead of the ED.Codes.
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PayrollRprtWITHDELETEDEMP.rdlc';


    dataset
    {
        dataitem("Payroll-Payslip Lines."; "Payroll-Payslip Lines.")
        {
            PrintOnlyIfDetail = false;
            RequestFilterFields = "Payroll Period", "Global Dimension 2 Code", "Global Dimension 1 Code", "Employee No";
            RequestFilterHeading = 'Payroll Period && Employees';
            column(CompanyData_Name; CompanyData.Name)
            {
            }
            column(Payroll_Payslip_Lines___GETFILTER__Payroll_Period___________PeriodTxt; "Payroll-Payslip Lines.".GetFilter("Payroll Period") + ' ' + PeriodTxt)
            {
            }
            column(EmplHeadTxt; EmplHeadTxt)
            {
            }
            column(TODAY; Today)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(EDText_1_1_; EDText[1, 1])
            {

            }
            column(EDText_1_2_; EDText[1, 2])
            {

            }
            column(EDText_2_1_; EDText[2, 1])
            {

            }
            column(EDText_2_2_; EDText[2, 2])
            {

            }
            column(EDText_3_1_; EDText[3, 1])
            {

            }
            column(EDText_3_2_; EDText[3, 2])
            {

            }
            column(EDText_4_1_; EDText[4, 1])
            {

            }
            column(EDText_4_2_; EDText[4, 2])
            {

            }
            column(EDText_5_1_; EDText[5, 1])
            {

            }
            column(EDText_5_2_; EDText[5, 2])
            {

            }
            column(EDText_6_1_; EDText[6, 1])
            {

            }
            column(EDText_6_2_; EDText[6, 2])
            {

            }
            column(EDText_7_1_; EDText[7, 1])
            {

            }
            column(EDText_7_2_; EDText[7, 2])
            {

            }
            column(EDText_8_1_; EDText[8, 1])
            {

            }
            column(EDText_8_2_; EDText[8, 2])
            {

            }
            column(EDText_9_1_; EDText[9, 1])
            {

            }
            column(EDText_9_2_; EDText[9, 2])
            {

            }
            column(EDText_10_1_; EDText[10, 1])
            {

            }
            column(EDText_10_2_; EDText[10, 2])
            {

            }
            column(EDText_11_1_; EDText[11, 1])
            {

            }
            column(EDText_11_2_; EDText[11, 2])
            {

            }
            column(EDText_12_1_; EDText[12, 1])
            {

            }
            column(EDText_12_2_; EDText[12, 2])
            {

            }
            column(DELCHR__EmployeeName_______; DelChr(EmployeeName, '<>'))
            {
            }
            column(Payroll_Payslip_Lines___Employee_No_; "Employee No")
            {
            }
            column(EDAmountsArray_1_; EDAmountsArray[1])
            {

            }
            column(EDAmountsArray_2_; EDAmountsArray[2])
            {

            }
            column(EDAmountsArray_3_; EDAmountsArray[3])
            {

            }
            column(EDAmountsArray_4_; EDAmountsArray[4])
            {

            }
            column(EDAmountsArray_5_; EDAmountsArray[5])
            {

            }
            column(EDAmountsArray_6_; EDAmountsArray[6])
            {

            }
            column(EDAmountsArray_7_; EDAmountsArray[7])
            {

            }
            column(EDAmountsArray_8_; EDAmountsArray[8])
            {

            }
            column(EDAmountsArray_9_; EDAmountsArray[9])
            {

            }
            column(EDAmountsArray_10_; EDAmountsArray[10])
            {

            }
            column(EDAmountsArray_12_; EDAmountsArray[12])
            {

            }
            column(EDAmountsArray_11_; EDAmountsArray[11])
            {

            }
            column(CountZ; CountZ)
            {
            }
            column(EDAmountsArray_1__Control42; EDAmountsArray[1])
            {

            }
            column(EDAmountsArray_2__Control43; EDAmountsArray[2])
            {

            }
            column(EDAmountsArray_3__Control44; EDAmountsArray[3])
            {

            }
            column(EDAmountsArray_4__Control45; EDAmountsArray[4])
            {

            }
            column(EDAmountsArray_5__Control46; EDAmountsArray[5])
            {

            }
            column(EDAmountsArray_6__Control47; EDAmountsArray[6])
            {

            }
            column(EmplCount; EmplCount)
            {
            }
            column(EDAmountsArray_7__Control30; EDAmountsArray[7])
            {

            }
            column(EDAmountsArray_8__Control31; EDAmountsArray[8])
            {

            }
            column(EDAmountsArray_9__Control32; EDAmountsArray[9])
            {

            }
            column(EDAmountsArray_10__Control33; EDAmountsArray[10])
            {

            }
            column(Total11; Total11)
            {

            }
            column(Total12; Total12)
            {

            }
            column(CountZ_Control1000000003; CountZ)
            {
            }
            column(Salary_schedule_for_Period_Caption; Salary_schedule_for_Period_CaptionLbl)
            {
            }
            column(Report_print_date_Caption; Report_print_date_CaptionLbl)
            {
            }
            column(Report_page_Caption; Report_page_CaptionLbl)
            {
            }
            column(Employee_NumberCaption; Employee_NumberCaptionLbl)
            {
            }
            column(NameCaption; NameCaptionLbl)
            {
            }
            column(S_No_Caption; S_No_CaptionLbl)
            {
            }
            column(AmountsCaption; AmountsCaptionLbl)
            {
            }
            column(No__of_records_Processed_Caption; No__of_records_Processed_CaptionLbl)
            {
            }
            column(No__of_employees_Shown_Caption; No__of_employees_Shown_CaptionLbl)
            {
            }
            column(Payroll_Payslip_Lines__Payroll_Period; "Payroll Period")
            {
            }
            column(Payroll_Payslip_Lines__E_D_Code; "E/D Code")
            {
            }
            column(Payroll_Payslip_Lines__Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
            }
            column(Payroll_Payslip_Lines__Global_Dimension_2_Code; "Global Dimension 2 Code")
            {
            }

            trigger OnAfterGetRecord()
            var
                PayEmp: Record Employee;
            begin
                //IF NOT PayEmp.GET("Payroll-Payslip Lines."."Employee No") THEN CurrReport.SKIP; //Added by Adam to skip Deleted? Employees//
                // Not: Employees are normally kept
                //IF PayEmp.Blocked THEN CurrReport.SKIP; //Added by Adam to skip Blocked Employees

                case "E/D Code" of
                    RequestEDsArray[1]."E/D Code":
                        EDAmountsArray[1] := Amount;
                    RequestEDsArray[2]."E/D Code":
                        EDAmountsArray[2] := Amount;
                    RequestEDsArray[3]."E/D Code":
                        EDAmountsArray[3] := Amount;
                    RequestEDsArray[4]."E/D Code":
                        EDAmountsArray[4] := Amount;
                    RequestEDsArray[5]."E/D Code":
                        EDAmountsArray[5] := Amount;
                    RequestEDsArray[6]."E/D Code":
                        EDAmountsArray[6] := Amount;
                    RequestEDsArray[7]."E/D Code":
                        EDAmountsArray[7] := Amount;
                    RequestEDsArray[8]."E/D Code":
                        EDAmountsArray[8] := Amount;
                    RequestEDsArray[9]."E/D Code":
                        EDAmountsArray[9] := Amount;
                    RequestEDsArray[10]."E/D Code":
                        EDAmountsArray[10] := Amount;
                    RequestEDsArray[11]."E/D Code":
                        begin
                            EDAmountsArray[11] := Amount;
                            Total11 := Total11 + Amount;
                        end;
                    RequestEDsArray[ArrayTop]."E/D Code":
                        begin
                            EDAmountsArray[ArrayTop] := Amount;
                            Total12 := Total12 + Amount;
                        end;

                end;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(EDAmountsArray[1], EDAmountsArray[2], EDAmountsArray[3],
                                 EDAmountsArray[4], EDAmountsArray[5], EDAmountsArray[6],
                                 EDAmountsArray[7], EDAmountsArray[8], EDAmountsArray[9],
                                 EDAmountsArray[10]);

                CompanyData.Get;
                if GetFilter("Employee No") <> '' then
                    EmplHeadTxt := 'Employee Filter: ' + GetFilter("Employee No")
                else
                    EmplHeadTxt := 'Schedule for All Employees.';

                /* Create column header text*/
                for ArrayIndex := 1 to ArrayTop do
                    if (RequestEDsArray[ArrayIndex]."E/D Code") <> '' then begin
                        RequestEDsArray[ArrayIndex].Get(RequestEDsArray[ArrayIndex]."E/D Code");
                        EDString := CopyStr(RequestEDsArray[ArrayIndex]."Payslip Text", 1, 20);
                        for i := 1 to 10 do begin
                            CharTest := CopyStr(EDString, i, 1);
                            if CharTest = ' ' then begin
                                EDText[ArrayIndex, 1] := CopyStr(EDString, 1, i - 1);
                                EDText[ArrayIndex, 2] := CopyStr(EDString, i + 1, 10);
                                i := 10;
                            end;
                        end;
                        if EDText[ArrayIndex, 1] = '' then begin
                            EDText[ArrayIndex, 1] := CopyStr(EDString, 1, 10);
                            EDText[ArrayIndex, 2] := CopyStr(EDString, 11, 10);
                        end
                    end;

                if EmployeeRec.Get("Employee No") then
                    EmployeeName := EmployeeRec.FullName;
                ArrayIndex := 1;
                ArrayTop := 12;
                for ArrayIndex := 1 to ArrayTop do
                    EDAmountsArray[ArrayIndex] := 0;

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
        ArrayTop := 12;
        EmplCount := 0;

        /*Get Period Records within the delimitation*/
        "Payroll-Payslip Lines.".CopyFilter("Payroll Period", PeriodRec."Period Code");
        if PeriodRec.Count > 1 then
            PeriodTxt := StrSubstNo('(#1 periods)', PeriodRec.Count);

    end;

    var
        CompanyData: Record "Company Information";
        EmployeeRec: Record Employee;
        PeriodRec: Record "Payroll-Periods.";
        EmployeeName: Text[40];
        RequestEDsArray: array[12] of Record "Payroll-E/D Codes.";
        EDAmountsArray: array[12] of Decimal;
        EDText: array[12, 2] of Text[10];
        EDString: Text[20];
        ArrayIndex: Integer;
        ArrayTop: Integer;
        EmplCount: Integer;
        EmplHeadTxt: Text[60];
        PeriodTxt: Text[15];
        "BANK/CASH": Text[30];
        IsDescription: Boolean;
        Total11: Decimal;
        Total12: Decimal;
        i: Integer;
        CharTest: Text[1];
        CountZ: Integer;
        Salary_schedule_for_Period_CaptionLbl: Label 'Salary schedule for Period:';
        Report_print_date_CaptionLbl: Label 'Report print date:';
        Report_page_CaptionLbl: Label 'Report page:';
        Employee_NumberCaptionLbl: Label 'Employee Number';
        NameCaptionLbl: Label 'Name';
        S_No_CaptionLbl: Label 'S/No.';
        AmountsCaptionLbl: Label 'Amounts';
        No__of_records_Processed_CaptionLbl: Label 'No. of records Processed:';
        No__of_employees_Shown_CaptionLbl: Label 'No. of employees Shown:';
}

