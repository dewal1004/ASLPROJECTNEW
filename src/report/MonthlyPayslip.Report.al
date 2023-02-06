report 50051 "Monthly Payslip"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/MonthlyPayslip.rdlc';
    ApplicationArea = Basic, Suite;
    Caption = 'Monthly Payslip';
    UsageCategory = ReportsAndAnalysis;
    AdditionalSearchTerms = 'Payslip';

    dataset
    {
        dataitem(Employee; Employee)
        {
            DataItemTableView = SORTING("Global Dimension 1 Code", "Global Dimension 2 Code");
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Employee Group", "Period Filter", "Posting Group", "Global Dimension 1 Code", "Global Dimension 2 Code";
            RequestFilterHeading = 'Payslip Filters';
            
            column(Employee_No_; "No.")
            {
            }
            column(Employee_Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
            }
            column(Employee_Global_Dimension_2_Code; "Global Dimension 2 Code")
            {
            }
            column(Employee_Period_Filter; "Period Filter")
            {
            }
            column(EDTextTablei_1; EDTextTable[i, 1])
            {
            }
            column(EDTextTablei_2; EDTextTable[i, 2])
            {
            }
            column(Employee__Bank_Account_; Employee."Bank Account")
            {
            }
            column(Employee__NSITF_Number_; Employee."NSITF Number")
            {
            }
            column(Employee__Posting_Group_; Employee."Posting Group")
            {
            }
            column(Employee_Bank; Employee.Bank)
            {
            }
            column(EmployeeNo; Employee."No.")
            {
            }
            column(EmployeeFirstName; Employee."First Name")
            {
            }
            column(LastName_Employee; Employee."Last Name")
            {
            }
            dataitem("Payroll-Payslip Header."; "Payroll-Payslip Header.")
            {
                DataItemLink = "Employee No" = FIELD("No."), "Payroll Period" = FIELD("Period Filter");
                DataItemTableView = SORTING("Payroll Period", "Employee No");
                RequestFilterHeading = 'Parameters for payslips';
                column(Payroll_Payslip_Header__Payroll_Period; "Payroll Period")
                {
                }
                column(Payroll_Payslip_Header__Employee_No; "Employee No")
                {
                }
                column(PayAdviceTitle; PayAdviceTitle)
                {
                }
                dataitem("Payroll-Payslip Lines."; "Payroll-Payslip Lines.")
                {
                    DataItemLink = "Payroll Period" = FIELD("Payroll Period"), "Employee No" = FIELD("Employee No");
                    DataItemTableView = SORTING("Payslip Print Column", "E/D Code");
                    PrintOnlyIfDetail = false;
                    RequestFilterFields = "E/D Code";
                    column(Payslipappearance; "Payslip appearance")
                    {
                    }
                    column(wrkday; wrkday)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        /*””””””””””””””””””””””””””””””””””””””””””””
                        ‚ Get the text for the payslip line          ‚
                        ””””””””””””””””””””””””””””””””””””””””””””*/
                        case "Payslip appearance" of
                            0: /* Nonzero and Code */
                                if Amount = 0 then
                                    CurrReport.Skip
                                else
                                    PayEntryText := "E/D Code";
                            1: /* Always and Code */
                                PayEntryText := "E/D Code";
                            2: /* Always and Text */
                                if RecOfEDFile.Get("E/D Code") then
                                    PayEntryText := RecOfEDFile."Payslip Text"

                                else
                                    PayEntryText := '*' + "E/D Code";

                            3: /* Non-zero & text */
                                if Amount = 0 then
                                    CurrReport.Skip
                                else
                                    if RecOfEDFile.Get("E/D Code") then
                                        PayEntryText := RecOfEDFile."Payslip Text"
                                    else
                                        PayEntryText := '*' + "E/D Code";
                            4: /* Does not appear */
                                CurrReport.Skip;
                            5: /* Heading */
                                begin
                                    if RecOfEDFile.Get("E/D Code") then
                                        if RecOfEDFile."Payslip Text" <> '' then
                                            PayEntryText := RecOfEDFile."Payslip Text"

                                        else
                                            PayEntryText := "E/D Code"
                                    else
                                        PayEntryText := '*' + PayEntryText;
                                end;
                        end;



                        /*IF "Payslip appearance" = 5 THEN
                          UNDEFINED('genSELECTLINES',0,'J')
                        ELSE*/
                        /* Process which column to print */
                        if RecOfEDFile.Get("E/D Code") then begin
                            case RecOfEDFile."Payslip Column" of
                                1: /* Column 2 */
                                    if "Underline Amount" = 1 then
                                        UnderlineID := 'E'
                                    else
                                        if "Underline Amount" = 2 then
                                            UnderlineID := 'F'
                                        else
                                            UnderlineID := 'D';
                                2: /* Column 3 */
                                    if "Underline Amount" = 1 then
                                        UnderlineID := 'H'
                                    else
                                        if "Underline Amount" = 2 then
                                            UnderlineID := 'I'
                                        else
                                            UnderlineID := 'G';
                                else
                                    /* column 1 */
                                    if "Underline Amount" = 1 then
                                        UnderlineID := 'B'
                                    else
                                        if "Underline Amount" = 2 then
                                            UnderlineID := 'C'
                                        else
                                            UnderlineID := 'A';
                            end; /*CASE*/
                        end;


                        if "Payroll-Payslip Lines."."Payslip Print Column" = "Payroll-Payslip Lines."."Payslip Print Column"::Postive then begin
                            //CurrReport.SHOWOUTPUT(TRUE);
                            Ei := Ei + 1;
                            EDamtTable[Ei, 1] := Amount;
                            EDTextTable[Ei, 1] := PayEntryText;
                        end;


                        if "Payroll-Payslip Lines."."Payslip Print Column" = "Payroll-Payslip Lines."."Payslip Print Column"::Negative then begin
                            CurrReport.ShowOutput(true);
                            Di := Di + 1;
                            EDamtTable[Di, 2] := Amount;
                            EDTextTable[Di, 2] := PayEntryText;
                        end
                        else
                            CurrReport.ShowOutput(false);

                        if "Payroll-Payslip Lines."."Payslip Print Column" = "Payroll-Payslip Lines."."Payslip Print Column"::"Total Earning" then begin
                            Gross += Amount;
                            GrossText := PayEntryText;
                        end
                        else
                            CurrReport.ShowOutput(false);

                        if "Payroll-Payslip Lines."."Payslip Print Column" = "Payroll-Payslip Lines."."Payslip Print Column"::"Total Deduction" then begin
                            CurrReport.ShowOutput(true);
                            TDeduction += Amount;
                            DeductionText := PayEntryText;
                        end
                        else
                            CurrReport.ShowOutput(false);

                        if "Payroll-Payslip Lines."."Payslip Print Column" = "Payroll-Payslip Lines."."Payslip Print Column"::"Net Earning" then begin
                            CurrReport.ShowOutput(true);
                            NetPay := Amount;
                            NetText := PayEntryText;
                        end
                        else
                            CurrReport.ShowOutput(false);

                        //ELSE
                        //CurrReport.SHOWOUTPUT(FALSE);
                        /* UNDEFINED('genSELECTLINES',"Overline Column",UnderlineID);*/

                        /*  END*/
                        /*ELSE
                         UNDEFINED('genSELECTLINES',0,'A');*/

                        if (RecOfEDFile.Get("E/D Code") and ("E/D Code" = '6150')) then     //Added by Yusuf 27/03/02
                            if "Payroll-Payslip Lines.".Quantity <> 0 then
                                wrkday := 30 - "Payroll-Payslip Lines.".Quantity;

                        if (RecOfEDFile.Get("E/D Code") and ("E/D Code" = '6100')) then     //Added by Yusuf 27/03/02
                            if "Payroll-Payslip Lines.".Quantity <> 0 then
                                latehr := "Payroll-Payslip Lines.".Quantity;

                    end;

                    trigger OnPreDataItem()
                    begin
                        SetFilter("Payslip appearance", '<>%1', 4);
                        wrkday := 30;
                    end;
                }
                dataitem(PaySlipPage; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(DELCHR__Payroll_Payslip_Header____Employee_No____________________Payroll_Payslip_Header____Employee_Name__; DelChr("Payroll-Payslip Header."."Employee No", '<>') + ':   ' + ("Payroll-Payslip Header."."Employee Name"))
                    {
                    }
                    column(Employee__Global_Dimension_1_Code_; Employee."Global Dimension 1 Code")
                    {
                    }
                    column(CompanyData_Name; CompanyData.Name)
                    {
                    }
                    column(Employee__Global_Dimension_2_Code_; Employee."Global Dimension 2 Code")
                    {
                    }
                    column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
                    {
                    }
                    column(Employee__Bank_Account_1; Employee."Bank Account")
                    {
                    }
                    column(Employee__NSITF_Number_1; Employee."NSITF Number")
                    {
                    }
                    column(Employee__Posting_Group_1; Employee."Posting Group")
                    {
                    }
                    column(Employee_Bank1; Employee.Bank)
                    {
                    }
                    column(latehr; latehr)
                    {
                    }
                    column(EARNINGS___ALLOWANCESCaption; EARNINGS___ALLOWANCESCaptionLbl)
                    {
                    }
                    column(DEDUCTIONSCaption; DEDUCTIONSCaptionLbl)
                    {
                    }
                    column(DEPARTMENTCaption; DEPARTMENTCaptionLbl)
                    {
                    }
                    column(BUSINESS_UNITCaption; BUSINESS_UNITCaptionLbl)
                    {
                    }
                    column(STAFF_No__NAMECaption; STAFF_No__NAMECaptionLbl)
                    {
                    }
                    column(W_DaysCaption; W_DaysCaptionLbl)
                    {
                    }
                    column(P_DaysCaption; P_DaysCaptionLbl)
                    {
                    }
                    column(Bank_A_C_No_Caption; Bank_A_C_No_CaptionLbl)
                    {
                    }
                    column(NSITF_NoCaption; NSITF_NoCaptionLbl)
                    {
                    }
                    column(Employee_TypeCaption; Employee_TypeCaptionLbl)
                    {
                    }
                    column(BankCaption; BankCaptionLbl)
                    {
                    }
                    column(V30Caption; V30CaptionLbl)
                    {
                    }
                    column(Late_HRCaption; Late_HRCaptionLbl)
                    {
                    }
                    column(PaySlipPage_Number; Number)
                    {
                    }
                    dataitem(PaySlipLoop; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(< 101), Number = FILTER(> 0));
                        column(EDTextTable_i_1_; EDTextTable[i, 1])
                        {
                        }
                        column(EDamtTable_i_1_; EDamtTable[i, 1])
                        {
                        }
                        column(EDTextTable_i_2_; EDTextTable[i, 2])
                        {
                        }
                        column(EDamtTable_i_2_; EDamtTable[i, 2])
                        {
                        }
                        column(EDTextTable_i_1__Control8; EDTextTable[i, 1])
                        {
                        }
                        column(EDamtTable_i_1__Control9; EDamtTable[i, 1])
                        {
                        }
                        column(EDTextTable_i_2__Control66; EDTextTable[i, 2])
                        {
                        }
                        column(EDamtTable_i_2__Control67; EDamtTable[i, 2])
                        {
                        }
                        column(EDTextTable_i_2__Control50; EDTextTable[i, 2])
                        {
                        }
                        column(EDamtTable_i_2__Control51; EDamtTable[i, 2])
                        {
                        }
                        column(EDTextTable_i_1__Control48; EDTextTable[i, 1])
                        {
                        }
                        column(EDamtTable_i_1__Control49; EDamtTable[i, 1])
                        {
                        }
                        column(TDeduction; TDeduction)
                        {
                        }
                        column(DeductionText; DeductionText)
                        {
                        }
                        column(Gross; Gross)
                        {
                        }
                        column(GrossText; GrossText)
                        {
                        }
                        column(NetText____N______FORMAT_NetPay_; NetText + ' =N=   ' + Format(NetPay))
                        {
                        }
                        column(NCaption; NCaptionLbl)
                        {
                        }
                        column(NCaption_Control1000000003; NCaption_Control1000000003Lbl)
                        {
                        }
                        column(The_Net_Salary_stated_above_is_due_to_you_at_the_end_of_this_month_Caption; The_Net_Salary_stated_above_is_due_to_you_at_the_end_of_this_month_CaptionLbl)
                        {
                        }
                        column(PaySlipLoop_Number; Number)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if i > 0 then
                                if (EDamtTable[i, 1] = 0) and (EDamtTable[i, 2] = 0) then
                                    CurrReport.Break;
                            i := i + 1;
                        end;

                        trigger OnPreDataItem()
                        begin
                            i := 0;
                        end;
                    }

                    trigger OnAfterGetRecord()
                    begin
                        i := 0;
                        //Bu :=
                        //Message(format(Ei)+'  '+format(Di))
                        wrkday := 0;
                        if "Payroll-Payslip Lines."."E/D Code" = '6150' then
                            Get("Payroll-Payslip Lines.".Quantity);
                        if "Payroll-Payslip Lines.".Quantity <> 0 then
                            wrkday := 30 - "Payroll-Payslip Lines.".Quantity;
                    end;

                    trigger OnPreDataItem()
                    begin
                        GrossPrinted := false;
                        TotalDPrinted := false;
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    if not Payrec.Get("Payroll-Payslip Header."."Employee No") then   // Adam
                        CurrReport.Skip;
                    if Payrec.Blocked then CurrReport.Skip;                 //Added by Adam to skip Blocked Employees
                    BusinessUnit := Payrec."Global Dimension 2 Code";
                    if BURec.Get(BusinessUnit) then begin
                        BUName := BURec.Name;
                        if LocRec.Get(BURec.Location) then
                            BuLocation := LocRec.Name
                        else
                            BuLocation := '';
                    end;

                    Department := Payrec."Global Dimension 1 Code";
                    if DeptRec.Get(Department) then
                        DeptName := DeptRec.Name;
                    Designation := Payrec.Designation;

                    PeriodRec.Get("Payroll Period");
                    if PeriodRec.Name <> '' then
                        PayAdviceTitle := 'PAY ADVICE FOR :' + DelChr(PeriodRec.Name, '<>');

                    for i := 1 to 100 do begin
                        EDamtTable[i, 1] := 0; // Earning
                        EDamtTable[i, 2] := 0; // Deduction
                    end;
                    Gross := 0;
                    TDeduction := 0;
                    NetPay := 0;

                    Ei := 0;
                    Di := 0
                    /*IF Designation <> '' THEN
                      UNDEFINED('genSELECTLINES',0,'A')
                    ELSE
                      UNDEFINED('genSELECTLINES',0,'B');*/

                end;
            }

            trigger OnAfterGetRecord()
            begin
                if Employee.Blocked then
                    CurrReport.Skip;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
        }
        actions
        {
        }

        trigger OnOpenPage()
        begin
            Employee."No." := 'E00004';
            "Payroll-Payslip Lines."."Payroll Period" := '2022-11';
        end;

    }

    labels
    {
    }

    var
        PayAdviceTitle: Text[80];
        CompanyData: Record "Company Information";
        RecOfEDFile: Record "Payroll-E/D Codes.";
        PeriodRec: Record "Payroll-Periods.";
        PayEntryText: Text[35];
        UnderlineID: Text[1];
        Payrec: Record Employee;
        EDTextTable: array[101, 2] of Text[35];
        GrossText: Text[35];
        NetText: Text[35];
        DeductionText: Text[35];
        EDamtTable: array[101, 2] of Decimal;
        Gross: Decimal;
        TDeduction: Decimal;
        NetPay: Decimal;
        i: Integer;
        Ei: Integer;
        Di: Integer;
        GrossPrinted: Boolean;
        TotalDPrinted: Boolean;
        BusinessUnit: Text[30];
        Department: Text[30];
        BUName: Text[60];
        BURec: Record "Business Unit";
        DeptName: Text[60];
        DeptRec: Record "Dimension Value";
        BuLocation: Text[30];
        LocRec: Record Location;
        wrkday: Integer;
        latehr: Integer;
        EARNINGS___ALLOWANCESCaptionLbl: Label 'EARNINGS & ALLOWANCES';
        DEDUCTIONSCaptionLbl: Label 'DEDUCTIONS';
        DEPARTMENTCaptionLbl: Label 'DEPARTMENT';
        BUSINESS_UNITCaptionLbl: Label 'BUSINESS UNIT';
        STAFF_No__NAMECaptionLbl: Label 'STAFF No, NAME';
        W_DaysCaptionLbl: Label 'W.Days';
        P_DaysCaptionLbl: Label 'P.Days';
        Bank_A_C_No_CaptionLbl: Label 'Bank A/C No.';
        NSITF_NoCaptionLbl: Label 'NSITF No';
        Employee_TypeCaptionLbl: Label 'Employee Type';
        BankCaptionLbl: Label 'Bank';
        V30CaptionLbl: Label '30';
        Late_HRCaptionLbl: Label 'Late HR';
        NCaptionLbl: Label 'N';
        NCaption_Control1000000003Lbl: Label 'N';
        The_Net_Salary_stated_above_is_due_to_you_at_the_end_of_this_month_CaptionLbl: Label 'The Net Salary stated above is due to you at the end of this month.';
}

