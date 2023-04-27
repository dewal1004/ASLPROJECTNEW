report 99712 "Banks Summ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/BanksSumm.rdlc';

    dataset
    {
        dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
        {
            DataItemTableView = SORTING("Bank Account No.", "Posting Date");
            RequestFilterFields = "Bank Account No.";
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
            column(Bank_Account_Ledger_Entry__Bank_Account_No__; "Bank Account No.")
            {
            }
            column(Bank_Account_Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Bank_Account_Ledger_Entry_Amount; Amount)
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY__; "Debit Amount (LCY)")
            {
            }
            column(TotalFor___FIELDCAPTION__Bank_Account_No___; TotalFor + FieldCaption("Bank Account No."))
            {
            }
            column(Bank_Account_Ledger_Entry_Amount_Control20; Amount)
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY___Control21; "Debit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_EntryCaption; Bank_Account_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Bank_Account_Ledger_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Bank_Account_Ledger_Entry_AmountCaption; FieldCaption(Amount))
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY__Caption; FieldCaption("Debit Amount (LCY)"))
            {
            }
            column(Bank_Account_Ledger_Entry__Bank_Account_No__Caption; FieldCaption("Bank Account No."))
            {
            }
            column(Bank_Account_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Bank Account No.");

                if not FooterPrinted then
                    LastFieldNo := CurrReport.TotalsCausedBy;
                //*** CurrReport.ShowOutput := not FooterPrinted;
                FooterPrinted := true;
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        Bank_Account_Ledger_EntryCaptionLbl: Label 'Bank Account Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

