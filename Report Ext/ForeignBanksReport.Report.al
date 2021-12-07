report 50110 "Foreign Banks Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ForeignBanksReport.rdlc';

    dataset
    {
        dataitem("Bank Account"; "Bank Account")
        {
            DataItemTableView = SORTING("No.") WHERE(Category = CONST("Foreign Bank"));
            RequestFilterFields = "No.", "Currency Code", "Date Filter";
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
            column(DATE_TXT; DATE_TXT)
            {
            }
            column(CL_BAL; CL_BAL)
            {
            }
            column(CREDIT_PERIOD; CREDIT_PERIOD)
            {
            }
            column(DEBIT_PERIOD; DEBIT_PERIOD)
            {
            }
            column(OP_BAL; OP_BAL)
            {
            }
            column(Bank_Account__Currency_Code_; "Currency Code")
            {
            }
            column(Bank_Account_Name; Name)
            {
            }
            column(Bank_Account__No__; "No.")
            {
            }
            column(TOT_OP_BAL; TOT_OP_BAL)
            {
            }
            column(TOT_DEBIT_PERIOD; TOT_DEBIT_PERIOD)
            {
            }
            column(TOT_CREDIT_PERIOD; TOT_CREDIT_PERIOD)
            {
            }
            column(TOT_CL_BAL; TOT_CL_BAL)
            {
            }
            column(Foreign_Banks_ReportCaption; Foreign_Banks_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Date_Caption; Date_CaptionLbl)
            {
            }
            column(OPENING_BALANCECaption; OPENING_BALANCECaptionLbl)
            {
            }
            column(RECEIPTSCaption; RECEIPTSCaptionLbl)
            {
            }
            column(PAYMENTSCaption; PAYMENTSCaptionLbl)
            {
            }
            column(CLOSING_BALANCECaption; CLOSING_BALANCECaptionLbl)
            {
            }
            column(CURRENCY_CODECaption; CURRENCY_CODECaptionLbl)
            {
            }
            column(NAMECaption; NAMECaptionLbl)
            {
            }
            column(NO_Caption; NO_CaptionLbl)
            {
            }
            column(TOTALCaption; TOTALCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin


                "Bank Account".SetRange("Bank Account"."Date Filter", MIN_DATE, MAX_DATE);
                "Bank Account".CalcFields("Bank Account"."Debit Amount", "Bank Account"."Credit Amount");
                DEBIT_PERIOD := "Bank Account"."Debit Amount";
                CREDIT_PERIOD := "Bank Account"."Credit Amount";

                "Bank Account".SetRange("Bank Account"."Date Filter", 0D, CalcDate('-1D', MIN_DATE));
                "Bank Account".CalcFields("Bank Account"."Net Change");
                OP_BAL := "Bank Account"."Net Change";

                "Bank Account".SetRange("Bank Account"."Date Filter", 0D, MAX_DATE);
                "Bank Account".CalcFields("Bank Account"."Net Change");
                CL_BAL := "Bank Account"."Net Change";


                TOT_OP_BAL := TOT_OP_BAL + OP_BAL;
                TOT_CL_BAL := TOT_CL_BAL + CL_BAL;
                TOT_DEBIT_PERIOD := TOT_DEBIT_PERIOD + DEBIT_PERIOD;
                TOT_CREDIT_PERIOD := TOT_CREDIT_PERIOD + CREDIT_PERIOD;
            end;

            trigger OnPreDataItem()
            begin

                if "Bank Account".GetFilter("Bank Account"."Date Filter") = '' then
                    "Bank Account".SetRange("Bank Account"."Date Filter", CalcDate('-1D', WorkDate));


                MIN_DATE := "Bank Account".GetRangeMin("Bank Account"."Date Filter");
                MAX_DATE := "Bank Account".GetRangeMax("Bank Account"."Date Filter");
                DATE_TXT := "Bank Account".GetFilter("Bank Account"."Date Filter");
            end;
        }
        dataitem(Bank2; "Bank Account")
        {
            DataItemTableView = SORTING("No.");
            PrintOnlyIfDetail = true;
            column(Bank2_Bank2_Name; Bank2.Name)
            {
            }
            column(DEBIT_PERIOD_Control1000000050; DEBIT_PERIOD)
            {
            }
            column(CREDIT_PERIOD_Control1000000052; CREDIT_PERIOD)
            {
            }
            column(Posting_DateCaption; Posting_DateCaptionLbl)
            {
            }
            column(DescriptionCaption; DescriptionCaptionLbl)
            {
            }
            column(Document_No_Caption; Document_No_CaptionLbl)
            {
            }
            column(ReceiptsCaption_Control1000000048; ReceiptsCaption_Control1000000048Lbl)
            {
            }
            column(PaymentsCaption_Control1000000049; PaymentsCaption_Control1000000049Lbl)
            {
            }
            column(GRAND_TOTALCaption; GRAND_TOTALCaptionLbl)
            {
            }
            column(Bank2_No_; "No.")
            {
            }
            dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
            {
                DataItemLink = "Bank Account No." = FIELD("No.");
                DataItemTableView = SORTING("Bank Account No.", "Posting Date");
                column(Bank_Account_Ledger_Entry__Credit_Amount_; "Credit Amount")
                {
                }
                column(Bank_Account_Ledger_Entry__Debit_Amount_; "Debit Amount")
                {
                }
                column(Bank_Account_Ledger_Entry__Document_No__; "Document No.")
                {
                }
                column(Bank_Account_Ledger_Entry_Description; Description)
                {
                }
                column(Bank_Account_Ledger_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(CREDIT_PERIOD_Control1000000027; CREDIT_PERIOD)
                {
                }
                column(DEBIT_PERIOD_Control1000000025; DEBIT_PERIOD)
                {
                }
                column(TOTALCaption_Control1000000023; TOTALCaption_Control1000000023Lbl)
                {
                }
                column(Bank_Account_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Bank_Account_Ledger_Entry_Bank_Account_No_; "Bank Account No.")
                {
                }

                trigger OnPreDataItem()
                begin
                    "Bank Account Ledger Entry".SetRange("Bank Account Ledger Entry"."Posting Date", MIN_DATE, MAX_DATE);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                Bank2.SetRange(Bank2."Date Filter", MIN_DATE, MAX_DATE);
                Bank2.CalcFields(Bank2."Debit Amount", Bank2."Credit Amount");
                DEBIT_PERIOD := Bank2."Debit Amount";
                CREDIT_PERIOD := Bank2."Credit Amount";
            end;

            trigger OnPreDataItem()
            begin
                Bank2.CopyFilters("Bank Account");
                CurrReport.CreateTotals(DEBIT_PERIOD, CREDIT_PERIOD);
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
        OP_BAL: Decimal;
        DEBIT_PERIOD: Decimal;
        CREDIT_PERIOD: Decimal;
        CL_BAL: Decimal;
        MIN_DATE: Date;
        MAX_DATE: Date;
        DATE_TXT: Text[30];
        TOT_OP_BAL: Decimal;
        TOT_CL_BAL: Decimal;
        TOT_DEBIT_PERIOD: Decimal;
        TOT_CREDIT_PERIOD: Decimal;
        BANK_REC: Record "Bank Account";
        GLSetup: Record "General Ledger Setup";
        Foreign_Banks_ReportCaptionLbl: Label 'Foreign Banks Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Date_CaptionLbl: Label 'Date:';
        OPENING_BALANCECaptionLbl: Label 'OPENING BALANCE';
        RECEIPTSCaptionLbl: Label 'RECEIPTS';
        PAYMENTSCaptionLbl: Label 'PAYMENTS';
        CLOSING_BALANCECaptionLbl: Label 'CLOSING BALANCE';
        CURRENCY_CODECaptionLbl: Label 'CURRENCY CODE';
        NAMECaptionLbl: Label 'NAME';
        NO_CaptionLbl: Label 'NO.';
        TOTALCaptionLbl: Label 'TOTAL';
        Posting_DateCaptionLbl: Label 'Posting Date';
        DescriptionCaptionLbl: Label 'Description';
        Document_No_CaptionLbl: Label 'Document No.';
        ReceiptsCaption_Control1000000048Lbl: Label 'Receipts';
        PaymentsCaption_Control1000000049Lbl: Label 'Payments';
        GRAND_TOTALCaptionLbl: Label 'GRAND TOTAL';
        TOTALCaption_Control1000000023Lbl: Label 'TOTAL';
}

