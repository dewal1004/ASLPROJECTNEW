report 50011 "Banks Balances"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/BanksBalances.rdlc';

    dataset
    {
        dataitem("Bank Account"; "Bank Account")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Currency Code", "Date Filter", Category;
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
            column(BANKS_REPORT________GETFILTER_Category_; 'BANKS REPORT' + ' : ' + GetFilter(Category))
            {
            }
            column(USERID_Control1000000029; UserId)
            {
            }
            column(CurrReport_PAGENO_Control1000000043; CurrReport.PageNo)
            {
            }
            column(FORMAT_TODAY_0_4__Control1000000055; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME_Control1000000057; CompanyName)
            {
            }
            column(DATE_TXT_Control1000000059; DATE_TXT)
            {
            }
            column(BANKS_REPORT________GETFILTER_Category__Control1000000080; 'BANKS REPORT' + ' : ' + GetFilter(Category))
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
            column(CL_BAL_Control1000000068; CL_BAL)
            {
            }
            column(CREDIT_PERIOD_Control1000000069; CREDIT_PERIOD)
            {
            }
            column(DEBIT_PERIOD_Control1000000070; DEBIT_PERIOD)
            {
            }
            column(OP_BAL_Control1000000071; OP_BAL)
            {
            }
            column(Bank_Account__Currency_Code__Control1000000072; "Currency Code")
            {
            }
            column(S; Name)
            {
            }
            column(Bank_Account__No___Control1000000074; "No.")
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
            column(TOT_CL_BAL_Control1000000075; TOT_CL_BAL)
            {
            }
            column(TOT_CREDIT_PERIOD_Control1000000076; TOT_CREDIT_PERIOD)
            {
            }
            column(TOT_DEBIT_PERIOD_Control1000000077; TOT_DEBIT_PERIOD)
            {
            }
            column(TOT_OP_BAL_Control1000000078; TOT_OP_BAL)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Date_Caption; Date_CaptionLbl)
            {
            }
            column(CurrReport_PAGENO_Control1000000043Caption; CurrReport_PAGENO_Control1000000043CaptionLbl)
            {
            }
            column(Date_Caption_Control1000000060; Date_Caption_Control1000000060Lbl)
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
            column(CLOSING_BALANCECaption_Control1000000061; CLOSING_BALANCECaption_Control1000000061Lbl)
            {
            }
            column(PAYMENTSCaption_Control1000000062; PAYMENTSCaption_Control1000000062Lbl)
            {
            }
            column(RECEIPTSCaption_Control1000000063; RECEIPTSCaption_Control1000000063Lbl)
            {
            }
            column(OPENING_BALANCECaption_Control1000000064; OPENING_BALANCECaption_Control1000000064Lbl)
            {
            }
            column(CURRENCY_CODECaption_Control1000000065; CURRENCY_CODECaption_Control1000000065Lbl)
            {
            }
            column(NAMECaption_Control1000000066; NAMECaption_Control1000000066Lbl)
            {
            }
            column(NO_Caption_Control1000000067; NO_Caption_Control1000000067Lbl)
            {
            }
            column(TOTALCaption; TOTALCaptionLbl)
            {
            }
            column(TOTALCaption_Control1000000079; TOTALCaption_Control1000000079Lbl)
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
                if printtoexcel then
                    Body;
            end;

            trigger OnPostDataItem()
            begin
                //IF printtoexcel THEN
                // createsheet;
            end;

            trigger OnPreDataItem()
            begin
                if "Bank Account".GetFilter("Bank Account"."Date Filter") = '' then
                    "Bank Account".SetRange("Bank Account"."Date Filter", CalcDate('-1D', WorkDate));
                MIN_DATE := "Bank Account".GetRangeMin("Bank Account"."Date Filter");
                MAX_DATE := "Bank Account".GetRangeMax("Bank Account"."Date Filter");
                DATE_TXT := "Bank Account".GetFilter("Bank Account"."Date Filter");

                if printtoexcel then
                    Header;
            end;
        }
        dataitem(Bank2; "Bank Account")
        {
            DataItemTableView = SORTING("No.");
            PrintOnlyIfDetail = true;
            column(Bank2_Name; Bank2.Name)
            {
            }
            column(Bank2_Bank2_Name_Control1000000086; Bank2.Name)
            {
            }
            column(DEBIT_PERIOD_Control1000000050; DEBIT_PERIOD)
            {
            }
            column(CREDIT_PERIOD_Control1000000052; CREDIT_PERIOD)
            {
            }
            column(CREDIT_PERIOD_Control1000000095; CREDIT_PERIOD)
            {
            }
            column(DEBIT_PERIOD_Control1000000096; DEBIT_PERIOD)
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
            column(PaymentsCaption_Control1000000081; PaymentsCaption_Control1000000081Lbl)
            {
            }
            column(ReceiptsCaption_Control1000000082; ReceiptsCaption_Control1000000082Lbl)
            {
            }
            column(Document_No_Caption_Control1000000083; Document_No_Caption_Control1000000083Lbl)
            {
            }
            column(DescriptionCaption_Control1000000084; DescriptionCaption_Control1000000084Lbl)
            {
            }
            column(Posting_DateCaption_Control1000000085s; Posting_DateCaption_Control1000000085Lbl)
            {
            }
            column(GRAND_TOTALCaption; GRAND_TOTALCaptionLbl)
            {
            }
            column(GRAND_TOTALCaption_Control1000000097; GRAND_TOTALCaption_Control1000000097Lbl)
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
                column(Bank_Account_Ledger_Entry__Credit_Amouxbnt__Control1000000087; "Credit Amount")
                {
                }
                column(Bank_Account_Ledger_Entry__Debit_Amount__Control1000000088; "Debit Amount")
                {
                }
                column(Bank_Account_Ledger_Entry__Document_No___Control1000000089; "Document No.")
                {
                }
                column(Bank_Account_Ledger_Entry_Description_Control1000000090; Description)
                {
                }
                column(Bank_Account_Ledger_Entry__Posting_Date__Control1000000091; "Posting Date")
                {
                }
                column(CREDIT_PERIOD_Control1000000027; CREDIT_PERIOD)
                {
                }
                column(DEBIT_PERIOD_Control1000000025; DEBIT_PERIOD)
                {
                }
                column(CREDIT_PERIOD_Control1000000092; CREDIT_PERIOD)
                {
                }
                column(DEBIT_PERIOD_Control1000000093; DEBIT_PERIOD)
                {
                }
                column(TOTALCaption_Control1000000023; TOTALCaption_Control1000000023Lbl)
                {
                }
                column(TOTALCaption_Control1000000094; TOTALCaption_Control1000000094Lbl)
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
        dataitem(DEPOSIT; DEPOSIT)
        {
            column(DepositId; DEPOSIT."Deposit ID")
            {
            }
            column(BankName; DEPOSIT."Bank Name")
            {
            }
            column(DateofDeposite; DEPOSIT."Date of Deposit")
            {
            }
            column(MaturityDate; DEPOSIT."Maturity Date")
            {
            }
            column(InterstRate; DEPOSIT."Interest Rate")
            {
            }
            column(depositeBalance; DEPOSIT."Deposit Balance")
            {
            }

            trigger OnAfterGetRecord()
            begin

                DEPOSIT.CalcFields(DEPOSIT."Deposit Balance");
                if DEPOSIT."Deposit Balance" = 0 then CurrReport.Skip;

                if printtoexcel then
                    Body
            end;

            trigger OnPreDataItem()
            begin
                if printtoexcel then
                    Footer;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(Email; Email)
                    {
                        Caption = 'Email';
                    }
                    field("PrintTo Excel"; printtoexcel)
                    {
                    }
                    field(Send2Excel; Send2Excel)
                    {
                        Caption = 'Send2Excel';
                    }
                    field(FontSize; FontSize)
                    {
                        Caption = 'FontSize';
                    }
                    field(blnExportToExcel; blnExportToExcel)
                    {
                        Caption = 'ExportToExcel';
                    }
                    field("PageOrientation`"; PageOrientation)
                    {
                        Caption = 'PageOrientation';
                    }
                    field(Option; Option)
                    {
                        Caption = 'Option';
                    }
                    field(FileName; FileName)
                    {
                        Caption = 'Workbook File Name';
                    }
                    field(SheetName; SheetName)
                    {
                        Caption = 'Worksheet Name';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPostReport()
    begin


        ExcelBuf.CreateBookAndOpenExcel('', 'Balance Report', 'Balance Report', CompanyName, UserId);
    end;

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
        "--------------": Integer;
        Email: Boolean;
        Send2Excel: Boolean;
        TopPage: Boolean;
        Xr: Integer;
        Xc: Integer;
        Bold: Boolean;
        UnderLine: Boolean;
        Italic: Boolean;
        FontSize: Integer;
        PageOrientation: Option "Excel Default",Portrait,Landscape;
        //*** text000: ;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Date_CaptionLbl: Label 'Date:';
        CurrReport_PAGENO_Control1000000043CaptionLbl: Label 'Page';
        Date_Caption_Control1000000060Lbl: Label 'Date:';
        OPENING_BALANCECaptionLbl: Label 'OPENING BALANCE';
        RECEIPTSCaptionLbl: Label 'RECEIPTS';
        PAYMENTSCaptionLbl: Label 'PAYMENTS';
        CLOSING_BALANCECaptionLbl: Label 'CLOSING BALANCE';
        CURRENCY_CODECaptionLbl: Label 'CURRENCY CODE';
        NAMECaptionLbl: Label 'NAME';
        NO_CaptionLbl: Label 'NO.';
        CLOSING_BALANCECaption_Control1000000061Lbl: Label 'CLOSING BALANCE';
        PAYMENTSCaption_Control1000000062Lbl: Label 'PAYMENTS';
        RECEIPTSCaption_Control1000000063Lbl: Label 'RECEIPTS';
        OPENING_BALANCECaption_Control1000000064Lbl: Label 'OPENING BALANCE';
        CURRENCY_CODECaption_Control1000000065Lbl: Label 'CURRENCY CODE';
        NAMECaption_Control1000000066Lbl: Label 'NAME';
        NO_Caption_Control1000000067Lbl: Label 'NO.';
        TOTALCaptionLbl: Label 'TOTAL';
        TOTALCaption_Control1000000079Lbl: Label 'TOTAL';
        Posting_DateCaptionLbl: Label 'Posting Date';
        DescriptionCaptionLbl: Label 'Description';
        Document_No_CaptionLbl: Label 'Document No.';
        ReceiptsCaption_Control1000000048Lbl: Label 'Receipts';
        PaymentsCaption_Control1000000049Lbl: Label 'Payments';
        PaymentsCaption_Control1000000081Lbl: Label 'Payments';
        ReceiptsCaption_Control1000000082Lbl: Label 'Receipts';
        Document_No_Caption_Control1000000083Lbl: Label 'Document No.';
        DescriptionCaption_Control1000000084Lbl: Label 'Description';
        Posting_DateCaption_Control1000000085Lbl: Label 'Posting Date';
        GRAND_TOTALCaptionLbl: Label 'GRAND TOTAL';
        GRAND_TOTALCaption_Control1000000097Lbl: Label 'GRAND TOTAL';
        TOTALCaption_Control1000000023Lbl: Label 'TOTAL';
        TOTALCaption_Control1000000094Lbl: Label 'TOTAL';
        printtoexcel: Boolean;
        excelbuff: Record "Excel Buffer" temporary;
        blnExportToExcel: Boolean;
        Option: Option "Create Workbook","Update Workbook";
        cuExportToExcel: Codeunit "Export to Excel";
        FileName: Text;
        SheetName: Text;
        RequestFormFileNameENABLED: Boolean;
        RequestFormSheetNameENABLED: Boolean;
        txtData: array[255] of Text[250];
        intRowNo: Integer;
        FirstRecord: Boolean;
        CommonDialogMgt: Codeunit "File Management";
        ExcelBuf: Record "Excel Buffer";
        intRowID: Integer;
        Window: Dialog;
        intExportStatus: Integer;

    [Scope('OnPrem')]
    procedure CreateSheet()
    begin
        //ExcelBuf.CreateBookAndOpenExcel('Total Sales',Text002,COMPANYNAME,USERID);
    end;

    [Scope('OnPrem')]
    procedure Header()
    begin

        ExcelBuf.NewRow;
        ExcelBuf.AddColumn('No', false, '', true, false, false, '', 0);
        ExcelBuf.AddColumn('Name', false, '', true, false, false, '', 0);
        ExcelBuf.AddColumn('Currency Code', false, '', true, false, false, '', 0);
        ExcelBuf.AddColumn('Opening Bal', false, '', true, false, false, '', 0);
        ExcelBuf.AddColumn('Receipt', false, '', true, false, false, '', 0);
        //ExcelBuf.AddColumn('Payment,',TRUE,'',FALSE,FALSE,'',0);
        ExcelBuf.AddColumn('Payment', false, '', true, false, false, '', 0);
        ExcelBuf.AddColumn('Closing Balance ', false, '', true, false, false, '', 0);
    end;

    [Scope('OnPrem')]
    procedure Body()
    begin
        ExcelBuf.NewRow;
        ExcelBuf.AddColumn("Bank Account"."No.", false, '', false, false, false, '', 0);
        ExcelBuf.AddColumn("Bank Account".Name, false, '', false, false, false, '', 0);
        ExcelBuf.AddColumn("Bank Account"."Currency Code", false, '', false, false, false, '', 0);
        ExcelBuf.AddColumn("Bank Account"."Credit Amount", false, '', false, false, false, '', 0);
        ExcelBuf.AddColumn("Bank Account"."Debit Amount", false, '', false, false, false, '', 0);
    end;

    local procedure Footer()
    begin
    end;
}

