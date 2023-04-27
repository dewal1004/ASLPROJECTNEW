report 99313 "Banks Summ2"
{
    // IOU.EmployeeName
    // StartBalanceLCY
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/BanksSumm2.rdlc';


    dataset
    {
        dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
        {
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
        }
        dataitem(IOU; IOU)
        {
            column(IOU_Date; Date)
            {
            }
            column(EmployeeName; EmployeeName)
            {
            }
            column(IOU_Amount; Amount)
            {
            }
            column(IOU__No__; "No.")
            {
            }
            column(IOU_Amount_Control1000000008; Amount)
            {
            }
            column(Details_of_IOU_sCaption; Details_of_IOU_sCaptionLbl)
            {
            }
            column(IOU_DateCaption; FieldCaption(Date))
            {
            }
            column(EmployeeNameCaption; EmployeeNameCaptionLbl)
            {
            }
            column(IOU_AmountCaption; FieldCaption(Amount))
            {
            }
            column(IOU__No__Caption; FieldCaption("No."))
            {
            }

            trigger OnPreDataItem()
            begin
                CashDay := "Bank Account Ledger Entry".GetFilter("Bank Account Ledger Entry"."Posting Date");
                //MESSAGE('Cash Day is %1',CashDay);
                SetFilter(Date, CashDay);
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total';
        "------": Integer;
        Bank: Record "Bank Account";
        Desc: Text[30];
        BankDesc: Text[30];
        CashDay: Text[30];
        StartBalanceLCY: Decimal;
        T0001: Label 'BALANCE B/F';
        T0002: Label 'BALANCE C/O';
        Daily_Cash_SummaryCaptionLbl: Label 'Daily Cash Summary';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Bank_Account_Ledger_Entry__Posting_Date_CaptionLbl: Label 'As At :';
        Details_of_IOU_sCaptionLbl: Label 'Details of IOU''s';
        EmployeeNameCaptionLbl: Label 'Name';
        Prepared_By_CaptionLbl: Label 'Prepared By:';
        Checked_By_CaptionLbl: Label 'Checked By:';
        Approved_By_CaptionLbl: Label 'Approved By:';
}

