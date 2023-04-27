report 50071 "BANK LIST local currency"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/BANKLISTlocalcurrency.rdlc';

    dataset
    {
        dataitem("Bank Account"; "Bank Account")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "Date Filter";
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
            column(Datetxt; Datetxt)
            {
            }
            column(Bank_Account__No__; "No.")
            {
            }
            column(Bank_Account_Name; Name)
            {
            }
            column(OPENBAL; OPENBAL)
            {
            }
            column(Bank_Account__Credit_Amount__LCY__; "Credit Amount (LCY)")
            {
            }
            column(Bank_Account__Debit_Amount__LCY__; "Debit Amount (LCY)")
            {
            }
            column(CLOSBAL; CLOSBAL)
            {
            }
            column(Bank_Account__Debit_Amount__LCY___Control1000000001; "Debit Amount (LCY)")
            {
            }
            column(Bank_Account__Credit_Amount__LCY___Control1000000002; "Credit Amount (LCY)")
            {
            }
            column(OPENBALTOT; OPENBALTOT)
            {
            }
            column(CLOSBALTOT; CLOSBALTOT)
            {
            }
            column(Bank_List_local_currencyCaption; Bank_List_local_currencyCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Date_Caption; Date_CaptionLbl)
            {
            }
            column(Bank_Account__No__Caption; FieldCaption("No."))
            {
            }
            column(Bank_Account_NameCaption; FieldCaption(Name))
            {
            }
            column(OPENINGCaption; OPENINGCaptionLbl)
            {
            }
            column(Bank_Account__Credit_Amount__LCY__Caption; FieldCaption("Credit Amount (LCY)"))
            {
            }
            column(Bank_Account__Debit_Amount__LCY__Caption; FieldCaption("Debit Amount (LCY)"))
            {
            }
            column(CLOSINGCaption; CLOSINGCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin


                "Bank Account".SetRange("Bank Account"."Date Filter", 0D, CalcDate('-1D', MINDATE));
                "Bank Account".CalcFields("Bank Account"."Net Change (LCY)");
                OPENBAL := "Bank Account"."Net Change (LCY)";
                OPENBALTOT := OPENBALTOT + OPENBAL;



                "Bank Account".SetRange("Bank Account"."Date Filter", 0D, MAXDATE);
                "Bank Account".CalcFields("Bank Account"."Net Change (LCY)");
                CLOSBAL := "Bank Account"."Net Change (LCY)";
                CLOSBALTOT := CLOSBALTOT + CLOSBAL;

                "Bank Account".SetRange("Bank Account"."Date Filter", MINDATE, MAXDATE);
                "Bank Account".CalcFields("Bank Account"."Debit Amount (LCY)", "Bank Account"."Credit Amount (LCY)");
            end;

            trigger OnPreDataItem()
            begin
                MINDATE := "Bank Account".GetRangeMin("Bank Account"."Date Filter");
                MAXDATE := "Bank Account".GetRangeMax("Bank Account"."Date Filter");
                Datetxt := "Bank Account".GetFilter("Bank Account"."Date Filter");
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
        MINDATE: Date;
        MAXDATE: Date;
        OPENBAL: Decimal;
        CLOSBAL: Decimal;
        OPENBALTOT: Decimal;
        CLOSBALTOT: Decimal;
        Datetxt: Text[30];
        Bank_List_local_currencyCaptionLbl: Label 'Bank List local currency';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Date_CaptionLbl: Label 'Date:';
        OPENINGCaptionLbl: Label 'OPENING';
        CLOSINGCaptionLbl: Label 'CLOSING';
}

