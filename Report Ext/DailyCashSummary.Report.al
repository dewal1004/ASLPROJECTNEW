report 50023 "Daily Cash Summary"
{
    // IOU.EmployeeName
    // StartBalanceLCY
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/DailyCashSummary.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;


    dataset
    {
        dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
        {
            DataItemTableView = SORTING("Bank Account No.", "Posting Date", Positive) ORDER(Descending);
            RequestFilterFields = "Bank Account No.", "Posting Date", Positive;
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
            column(BankDesc; BankDesc)
            {
            }
            column(Bank_Account_Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(T0001; T0001)
            {
            }
            column(StartBalanceLCY; StartBalanceLCY)
            {
            }
            column(Desc; Desc)
            {
            }
            column(Bank_Account_Ledger_Entry__Posting_Date__Control17; "Posting Date")
            {
            }
            column(Bank_Account_Ledger_Entry__Amount__LCY__; "Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY__; "Debit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Credit_Amount__LCY__; "Credit Amount (LCY)")
            {
            }
            column(ABS__Amount__LCY___; Abs("Amount (LCY)"))
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY___Control30; "Debit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Credit_Amount__LCY___Control31; "Credit Amount (LCY)")
            {
            }
            column(Desc_Control14; Desc)
            {
            }
            column(Bank_Account_Ledger_Entry__Credit_Amount__LCY___Control35; "Credit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY___Control34; "Debit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Amount__LCY___Control33; "Amount (LCY)")
            {
            }
            column(TotalFor; TotalFor)
            {
            }
            column(TotalFor___FIELDCAPTION__Bank_Account_No___; TotalFor + FieldCaption("Bank Account No."))
            {
            }
            column(Bank_Account_Ledger_Entry__Amount__LCY___Control37; "Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY___Control38; "Debit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Credit_Amount__LCY___Control39; "Credit Amount (LCY)")
            {
            }
            column(StartBalanceLCY__Amount__LCY__; StartBalanceLCY + "Amount (LCY)")
            {
            }
            column(T0002; T0002)
            {
            }
            column(Daily_Cash_SummaryCaption; Daily_Cash_SummaryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Bank_Account_Ledger_Entry__Posting_Date__Control17Caption; FieldCaption("Posting Date"))
            {
            }
            column(Bank_Account_Ledger_Entry__Amount__LCY__Caption; FieldCaption("Amount (LCY)"))
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY__Caption; FieldCaption("Debit Amount (LCY)"))
            {
            }
            column(Bank_Account_Ledger_Entry__Credit_Amount__LCY__Caption; FieldCaption("Credit Amount (LCY)"))
            {
            }
            column(Bank_Account_Ledger_Entry__Posting_Date_Caption; Bank_Account_Ledger_Entry__Posting_Date_CaptionLbl)
            {
            }
            column(Bank_Account_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }
            column(Bank_Account_Ledger_Entry_Bank_Account_No_; "Bank Account No.")
            {
            }
            column(Bank_Account_Ledger_Entry_Positive; Positive)
            {
            }

            trigger OnPreDataItem()
            begin
                //Total_IOU:=0;
                LastFieldNo := FieldNo(Positive);
                CashDay := GetFilter("Posting Date");
                if CashDay = '' then Error('Remember to put Cash Summary Day');
            end;
        }
        dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
        {
            DataItemTableView = SORTING("Customer No.", Open, Positive, "Due Date", "Currency Code") WHERE("Customer No." = FILTER('D' .. 'F'), Positive = FILTER(true), Open = FILTER(true));
            column(Cust__Ledger_Entry__Document_No__; "Document No.")
            {
            }
            column(EmployeeName; EmployeeName)
            {
            }
            column(Cust__Ledger_Entry__Remaining_Amt___LCY__; "Remaining Amt. (LCY)")
            {
            }
            column(Cust__Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Total_IOU; Total_IOU)
            {
            }
            column(Details_of_IOU_sCaption; Details_of_IOU_sCaptionLbl)
            {
            }
            column(Cust__Ledger_Entry__Remaining_Amt___LCY__Caption; FieldCaption("Remaining Amt. (LCY)"))
            {
            }
            column(EmployeeNameCaption; EmployeeNameCaptionLbl)
            {
            }
            column(Cust__Ledger_Entry__Document_No__Caption; Cust__Ledger_Entry__Document_No__CaptionLbl)
            {
            }
            column(Cust__Ledger_Entry__Posting_Date_Caption; Cust__Ledger_Entry__Posting_Date_CaptionLbl)
            {
            }
            column(Cust__Ledger_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Cust.Get("Customer No.") then
                    EmployeeName := Cust.Name else
                    EmployeeName := Description;

                Print_OK := false;
                if Loan_Rec.Get("Cust. Ledger Entry"."Loan ID") then begin
                    if Loan_Rec."Loan Type" = 1 then begin
                        Loan_Rec.CalcFields(Loan_Rec."Remaining Amount");
                        if Loan_Rec."Remaining Amount" > 0 then begin
                            Print_OK := true;
                            Total_IOU := Total_IOU + "Cust. Ledger Entry"."Remaining Amt. (LCY)";
                        end;
                    end;
                end;
            end;

            trigger OnPreDataItem()
            begin
                CashDay := "Bank Account Ledger Entry".GetFilter("Bank Account Ledger Entry"."Posting Date");
                CashDay := '..' + CashDay;
                SetFilter("Posting Date", CashDay);
            end;
        }
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = WHERE(Number = CONST(1));
            column(Prepared_By_Caption; Prepared_By_CaptionLbl)
            {
            }
            column(Checked_By_Caption; Checked_By_CaptionLbl)
            {
            }
            column(Approved_By_Caption; Approved_By_CaptionLbl)
            {
            }
            column(Integer_Number; Number)
            {
            }
            dataitem("Company Information"; "Company Information")
            {
                column(Picture; "Company Information".Picture)
                {
                }
            }
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

    trigger OnInitReport()
    begin
        "Company Information".Get;
        "Company Information".CalcFields(Picture);
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total';
        "------": Integer;
        Bank: Record "Bank Account";
        Cust: Record Customer;
        Desc: Text[30];
        BankDesc: Text[30];
        CashDay: Text[30];
        StartBalanceLCY: Decimal;
        T0001: Label 'BALANCE B/F';
        T0002: Label 'BALANCE C/O';
        EmployeeName: Text[30];
        Loan_Rec: Record "Loan.";
        Print_OK: Boolean;
        Total_IOU: Decimal;
        Daily_Cash_SummaryCaptionLbl: Label 'Daily Cash Summary';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Bank_Account_Ledger_Entry__Posting_Date_CaptionLbl: Label 'As At :';
        Details_of_IOU_sCaptionLbl: Label 'Details of IOU''s';
        EmployeeNameCaptionLbl: Label 'Name';
        Cust__Ledger_Entry__Document_No__CaptionLbl: Label 'No.';
        Cust__Ledger_Entry__Posting_Date_CaptionLbl: Label 'Date';
        Prepared_By_CaptionLbl: Label 'Prepared By:';
        Checked_By_CaptionLbl: Label 'Checked By:';
        Approved_By_CaptionLbl: Label 'Approved By:';
}

