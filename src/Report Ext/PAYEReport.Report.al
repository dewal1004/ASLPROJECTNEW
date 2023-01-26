report 50064 "PAYE Report"
{
    // This report prints a PAYE TAX schedule for employees. The user should enter
    // the Payroll period and if necessary also the specific Employee number(s) that
    // are required to appear in the report. The E/Ds that are to appear in the
    // schedule MUST be entered.(In this revised edition default EDs have been entered.
    // The schedule is a matrix of employees on the vertical axis and the required
    // E/Ds in the Horizontal axis.
    // The user can specify that the ED.Descriptions appear in the column headers
    // instead of the ED.Codes.
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PAYEReport.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;


    dataset
    {
        dataitem("Payroll-Payslip Lines."; "Payroll-Payslip Lines.")
        {
            DataItemTableView = SORTING("Employee No");
            PrintOnlyIfDetail = false;
            RequestFilterFields = "Payroll Period", "Employee No";
            RequestFilterHeading = 'Period for PAYE';
            column(TODAY; Today)
            {
            }
            column(Payroll_Payslip_Lines___GETFILTER__Payroll_Period___________PeriodTxt; "Payroll-Payslip Lines.".GetFilter("Payroll Period") + ' ' + PeriodTxt)
            {
            }
            column(DELCHR_CompanyData_Name______________CompanyData_Address; DelChr(CompanyData.Name, '<>') + ', ' + CompanyData.Address)
            {
            }
            column(EmplHeadTxt; EmplHeadTxt)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
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
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_2_; EDAmountsArray[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_3_; EDAmountsArray[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_4_; EDAmountsArray[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_5_; EDAmountsArray[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_6_; EDAmountsArray[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EmployeeRec__National_ID_Number_; EmployeeRec."National ID Number")
            {
            }
            column(EDAmountsArray_6__Control37; EDAmountsArray[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TO__COMMISSIONERCaption; TO__COMMISSIONERCaptionLbl)
            {
            }
            column(Report_print_date_Caption; Report_print_date_CaptionLbl)
            {
            }
            column(INLAND_REVENUE_DEPARTMENTCaption; INLAND_REVENUE_DEPARTMENTCaptionLbl)
            {
            }
            column(NAME_OF_INTERNAL_REVENUE_OFFICE__NAKAWACaption; NAME_OF_INTERNAL_REVENUE_OFFICE__NAKAWACaptionLbl)
            {
            }
            column(EMPLOYEES_P_A_Y_E_TAX_DEDUCTIONS_RETURN_FOR_THE_MONTH_OFCaption; EMPLOYEES_P_A_Y_E_TAX_DEDUCTIONS_RETURN_FOR_THE_MONTH_OFCaptionLbl)
            {
            }
            column(EMPLOYER_S_NAME_AND_ADDRESS_Caption; EMPLOYER_S_NAME_AND_ADDRESS_CaptionLbl)
            {
            }
            column(Report_page_Caption; Report_page_CaptionLbl)
            {
            }
            column(Employee_NameCaption; Employee_NameCaptionLbl)
            {
            }
            column(BASICCaption; BASICCaptionLbl)
            {
            }
            column(HOUSECaption; HOUSECaptionLbl)
            {
            }
            column(OTHERCaption; OTHERCaptionLbl)
            {
            }
            column(GROSSCaption; GROSSCaptionLbl)
            {
            }
            column(NSSFCaption; NSSFCaptionLbl)
            {
            }
            column(PAYECaption; PAYECaptionLbl)
            {
            }
            column(TIN_NO_Caption; TIN_NO_CaptionLbl)
            {
            }
            column(ALLOWANCECaption; ALLOWANCECaptionLbl)
            {
            }
            column(EARNINGSCaption; EARNINGSCaptionLbl)
            {
            }
            column(SALARYCaption; SALARYCaptionLbl)
            {
            }
            column(EARNINGSCaption_Control46; EARNINGSCaption_Control46Lbl)
            {
            }
            column(TOTAL_P_A_Y_E_TAXCaption; TOTAL_P_A_Y_E_TAXCaptionLbl)
            {
            }
            column(DECLARATION_Caption; DECLARATION_CaptionLbl)
            {
            }
            column(MAIN_NAME__IN_BLOCK_LETTERS_Caption; MAIN_NAME__IN_BLOCK_LETTERS_CaptionLbl)
            {
            }
            column(OTHER_NAMES__IN_BLOCK_LETTERS_Caption; OTHER_NAMES__IN_BLOCK_LETTERS_CaptionLbl)
            {
            }
            column(I_We__the_above_named_declare_that_this_return_is_a_complete_and_true_statement_of_employees__emolumentsCaption; I_We__the_above_named_declare_that_this_return_is_a_complete_and_true_statement_of_employees__emolumentsCaptionLbl)
            {
            }
            column(as_detailed_above_Caption; as_detailed_above_CaptionLbl)
            {
            }
            column(SIGNED_______________________________________RANK___________________________________Caption; SIGNED_______________________________________RANK___________________________________CaptionLbl)
            {
            }
            column(DATE__________________________________________USE_SEPERATE_SHEETS_WHERE_NECESSARY_Caption; DATE__________________________________________USE_SEPERATE_SHEETS_WHERE_NECESSARY_CaptionLbl)
            {
            }
            column(Payroll_Payslip_Lines__Payroll_Period; "Payroll Period")
            {
            }
            column(Payroll_Payslip_Lines__E_D_Code; "E/D Code")
            {
            }

            trigger OnAfterGetRecord()
            begin

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
                        EDAmountsArray[11] := Amount;
                    RequestEDsArray[ArrayTop]."E/D Code":
                        EDAmountsArray[ArrayTop] := Amount

                end;
            end;

            trigger OnPreDataItem()
            begin

                CurrReport.CreateTotals(EDAmountsArray[1], EDAmountsArray[2], EDAmountsArray[3],
                                 EDAmountsArray[4], EDAmountsArray[5], EDAmountsArray[6],
                                 EDAmountsArray[7], EDAmountsArray[8], EDAmountsArray[9],
                                 EDAmountsArray[10]);
                /***  EDAmountsArray[11], EDAmountsArray[12]);*/


                CompanyData.Get;
                if GetFilter("Employee No") <> '' then
                    EmplHeadTxt := 'Employees Nos.: ' + GetFilter("Employee No")
                else
                    EmplHeadTxt := 'Schedule for All Employees.';

                /* Create column header text*/
                for ArrayIndex := 1 to ArrayTop do begin
                    EDString := DelChr(RequestEDsArray[ArrayIndex]."E/D Code", '<>');
                    if IsDescription then
                        /*The cloumn headers should be the ED descriptions is they aren't blank*/
                    if RequestEDsArray[ArrayIndex].Get(
                                 RequestEDsArray[ArrayIndex]."E/D Code") then
                            if DelChr(RequestEDsArray[ArrayIndex].Description, '<>') <> '' then
                                EDString :=
                                  DelStr(DelChr(RequestEDsArray[ArrayIndex].Description, '<>'), 21);

                    if StrLen(EDString) > 10 then begin
                        EDText[ArrayIndex, 1] := CopyStr(EDString, 1, 9) + '-';
                        EDText[ArrayIndex, 2] := '-' + CopyStr(EDString, 10, 9)
                    end
                    else begin
                        EDText[ArrayIndex, 1] := CopyStr(EDString, 1, StrLen(EDString));
                        EDText[ArrayIndex, 2] := '';
                    end;
                end;


                /*IF EmplCount = 0 THEN
                   UNDEFINED('genSELECTLINES',2);*/


                if EmployeeRec.Get("Employee No") then
                    EmployeeName := EmployeeRec.FullName;
                ArrayIndex := 1;
                ArrayTop := 12;
                for ArrayIndex := 1 to ArrayTop do
                    EDAmountsArray[ArrayIndex] := 0;


                /*IF EmplCount <> 0 THEN
                  UNDEFINED('genSELECTLINES', 1);
                 */

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
        IsDescription: Boolean;
        TO__COMMISSIONERCaptionLbl: Label 'TO: COMMISSIONER';
        Report_print_date_CaptionLbl: Label 'Report print date:';
        INLAND_REVENUE_DEPARTMENTCaptionLbl: Label 'INLAND REVENUE DEPARTMENT';
        NAME_OF_INTERNAL_REVENUE_OFFICE__NAKAWACaptionLbl: Label 'NAME OF INTERNAL REVENUE OFFICE: NAKAWA';
        EMPLOYEES_P_A_Y_E_TAX_DEDUCTIONS_RETURN_FOR_THE_MONTH_OFCaptionLbl: Label 'EMPLOYEES P.A.Y.E TAX DEDUCTIONS RETURN FOR THE MONTH OF';
        EMPLOYER_S_NAME_AND_ADDRESS_CaptionLbl: Label 'EMPLOYER''S NAME AND ADDRESS:';
        Report_page_CaptionLbl: Label 'Report page:';
        Employee_NameCaptionLbl: Label 'Employee Name';
        BASICCaptionLbl: Label 'BASIC';
        HOUSECaptionLbl: Label 'HOUSE';
        OTHERCaptionLbl: Label 'OTHER';
        GROSSCaptionLbl: Label 'GROSS';
        NSSFCaptionLbl: Label 'NSSF';
        PAYECaptionLbl: Label 'PAYE';
        TIN_NO_CaptionLbl: Label 'TIN NO.';
        ALLOWANCECaptionLbl: Label 'ALLOWANCE';
        EARNINGSCaptionLbl: Label 'EARNINGS';
        SALARYCaptionLbl: Label 'SALARY';
        EARNINGSCaption_Control46Lbl: Label 'EARNINGS';
        TOTAL_P_A_Y_E_TAXCaptionLbl: Label 'TOTAL P.A.Y.E TAX';
        DECLARATION_CaptionLbl: Label 'DECLARATION:';
        MAIN_NAME__IN_BLOCK_LETTERS_CaptionLbl: Label 'MAIN NAME (IN BLOCK LETTERS)';
        OTHER_NAMES__IN_BLOCK_LETTERS_CaptionLbl: Label 'OTHER NAMES (IN BLOCK LETTERS)';
        I_We__the_above_named_declare_that_this_return_is_a_complete_and_true_statement_of_employees__emolumentsCaptionLbl: Label 'I/We, the above named declare that this return is a complete and true statement of employees'' emoluments';
        as_detailed_above_CaptionLbl: Label 'as detailed above.';
        SIGNED_______________________________________RANK___________________________________CaptionLbl: Label 'SIGNED_______________________________________RANK___________________________________';
        DATE__________________________________________USE_SEPERATE_SHEETS_WHERE_NECESSARY_CaptionLbl: Label 'DATE_________________________________________ USE SEPERATE SHEETS WHERE NECESSARY.';
}

