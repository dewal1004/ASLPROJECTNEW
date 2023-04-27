report 99507 "Deposit Balance"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/DepositBalance.rdlc';

    dataset
    {
        dataitem(DEPOSIT; DEPOSIT)
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
            column(DEPOSIT__Bank_Acc__No__; "Bank Acc. No.")
            {
            }
            column(DEPOSIT__Deposit_ID_; "Deposit ID")
            {
            }
            column(DEPOSIT__Bank_Name_; "Bank Name")
            {
            }
            column(DEPOSIT__Date_of_Deposit_; "Date of Deposit")
            {
            }
            column(DEPOSIT__Maturity_Date_; "Maturity Date")
            {
            }
            column(DEPOSIT__Interest_Rate_; "Interest Rate")
            {
            }
            column(DEPOSIT__Deposit_Balance_; "Deposit Balance")
            {
            }
            column(TotalFor___FIELDCAPTION__Bank_Acc__No___; TotalFor + FieldCaption("Bank Acc. No."))
            {
            }
            column(DEPOSIT__Deposit_Balance__Control29; "Deposit Balance")
            {
            }
            column(DEPOSITCaption; DEPOSITCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(DEPOSIT__Deposit_ID_Caption; FieldCaption("Deposit ID"))
            {
            }
            column(DEPOSIT__Bank_Name_Caption; FieldCaption("Bank Name"))
            {
            }
            column(DEPOSIT__Date_of_Deposit_Caption; FieldCaption("Date of Deposit"))
            {
            }
            column(DEPOSIT__Maturity_Date_Caption; FieldCaption("Maturity Date"))
            {
            }
            column(DEPOSIT__Interest_Rate_Caption; FieldCaption("Interest Rate"))
            {
            }
            column(DEPOSIT__Deposit_Balance_Caption; FieldCaption("Deposit Balance"))
            {
            }
            column(DEPOSIT__Bank_Acc__No__Caption; FieldCaption("Bank Acc. No."))
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
        TotalFor: Label 'Total for ';
        DEPOSITCaptionLbl: Label 'DEPOSIT';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

