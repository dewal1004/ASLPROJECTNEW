report 50072 "BANK LIST foreign currency"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/BANKLISTforeigncurrency.rdlc';

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
            column(Bank_Account__Credit_Amount_; "Credit Amount")
            {
            }
            column(Bank_Account__Debit_Amount_; "Debit Amount")
            {
            }
            column(CLOSBAL; CLOSBAL)
            {
            }
            column(Bank_Account__Currency_Code_; "Currency Code")
            {
            }
            column(Bank_Account__Debit_Amount__Control1000000001; "Debit Amount")
            {
            }
            column(Bank_Account__Credit_Amount__Control1000000002; "Credit Amount")
            {
            }
            column(OPENBALTOT; OPENBALTOT)
            {
            }
            column(CLOSBALTOT; CLOSBALTOT)
            {
            }
            column(Bank_List_foreign_currencyCaption; Bank_List_foreign_currencyCaptionLbl)
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
            column(Credit_Amount_Caption; Credit_Amount_CaptionLbl)
            {
            }
            column(Debit_Amount_Caption; Debit_Amount_CaptionLbl)
            {
            }
            column(CLOSINGCaption; CLOSINGCaptionLbl)
            {
            }
            column(Bank_Account__Currency_Code_Caption; FieldCaption("Currency Code"))
            {
            }

            trigger OnAfterGetRecord()
            begin


                "Bank Account".SetRange("Bank Account"."Date Filter", 0D, CalcDate('-1D', MINDATE));
                "Bank Account".CalcFields("Bank Account"."Net Change");
                OPENBAL := "Bank Account"."Net Change";
                OPENBALTOT := OPENBALTOT + OPENBAL;



                "Bank Account".SetRange("Bank Account"."Date Filter", 0D, MAXDATE);
                "Bank Account".CalcFields("Bank Account"."Net Change");
                CLOSBAL := "Bank Account"."Net Change";
                CLOSBALTOT := CLOSBALTOT + CLOSBAL;

                "Bank Account".SetRange("Bank Account"."Date Filter", MINDATE, MAXDATE);
                "Bank Account".CalcFields("Bank Account"."Debit Amount", "Bank Account"."Credit Amount");
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
        Bank_List_foreign_currencyCaptionLbl: Label 'Bank List foreign currency';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Date_CaptionLbl: Label 'Date:';
        OPENINGCaptionLbl: Label 'OPENING';
        Credit_Amount_CaptionLbl: Label '<Credit Amount>';
        Debit_Amount_CaptionLbl: Label '<Debit Amount>';
        CLOSINGCaptionLbl: Label 'CLOSING';
}

