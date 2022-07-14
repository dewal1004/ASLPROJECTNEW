report 50132 "Bank Acc-Detail Trial Bal-1404"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/BankAccDetailTrialBal1404.rdlc';
    Caption = 'Bank Acc. - Detail Trial Bal.';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem("Bank Account"; "Bank Account")
        {
            DataItemTableView = SORTING("No.");
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", "Bank Acc. Posting Group", "Date Filter";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(STRSUBSTNO_Text000_BankAccDateFilter_; StrSubstNo(Text000, BankAccDateFilter))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(STRSUBSTNO___1___2___Bank_Account__TABLECAPTION_BankAccFilter_; StrSubstNo('%1: %2', "Bank Account".TableCaption, BankAccFilter))
            {
            }
            column(Bank_Account__No__; "No.")
            {
            }
            column(Bank_Account_Name; Name)
            {
            }
            column(Bank_Account__Phone_No__; "Phone No.")
            {
            }
            column(Bank_Account__Currency_Code_; "Currency Code")
            {
            }
            column(StartBalance; StartBalance)
            {
                AutoFormatExpression = "Bank Account Ledger Entry"."Currency Code";
                AutoFormatType = 1;
            }
            column(StartBalanceLCY; StartBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(Bank_Acc____Detail_Trial_Bal_Caption; Bank_Acc____Detail_Trial_Bal_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(This_report_also_includes_bank_accounts_that_only_have_balances_Caption; This_report_also_includes_bank_accounts_that_only_have_balances_CaptionLbl)
            {
            }
            column(Bank_Account_Ledger_Entry__Posting_Date_Caption; "Bank Account Ledger Entry".FieldCaption("Posting Date"))
            {
            }
            column(Bank_Account_Ledger_Entry__Document_No__Caption; "Bank Account Ledger Entry".FieldCaption("Document No."))
            {
            }
            column(Bank_Account_Ledger_Entry_DescriptionCaption; "Bank Account Ledger Entry".FieldCaption(Description))
            {
            }
            column(BankAccBalanceCaption; BankAccBalanceCaptionLbl)
            {
            }
            column(BankAccBalanceLCYCaption; BankAccBalanceLCYCaptionLbl)
            {
            }
            column(DescCaption; DescCaptionLbl)
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount_Caption; "Bank Account Ledger Entry".FieldCaption("Debit Amount"))
            {
            }
            column(Bank_Account_Ledger_Entry__Credit_Amount_Caption; "Bank Account Ledger Entry".FieldCaption("Credit Amount"))
            {
            }
            column(Bank_Account__Phone_No__Caption; FieldCaption("Phone No."))
            {
            }
            column(Bank_Account__Currency_Code_Caption; FieldCaption("Currency Code"))
            {
            }
            column(Bank_Account_Date_Filter; "Date Filter")
            {
            }
            column(Bank_Account_Global_Dimension_2_Filter; "Global Dimension 2 Filter")
            {
            }
            column(Bank_Account_Global_Dimension_1_Filter; "Global Dimension 1 Filter")
            {
            }
            dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
            {
                DataItemLink = "Bank Account No." = FIELD("No."), "Posting Date" = FIELD("Date Filter"), "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"), "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter");
                DataItemTableView = SORTING("Bank Account No.", "Posting Date") WHERE("Our Contact Code" = FILTER(<> 'KOT'));
                column(StartBalance____Bank_Account_Ledger_Entry__Amount; StartBalance + "Bank Account Ledger Entry".Amount)
                {
                    AutoFormatExpression = "Bank Account Ledger Entry"."Currency Code";
                    AutoFormatType = 1;
                }
                column(StartBalanceLCY____Bank_Account_Ledger_Entry___Amount__LCY__; StartBalanceLCY + "Bank Account Ledger Entry"."Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(Bank_Account_Ledger_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(Bank_Account_Ledger_Entry__Document_No__; "Document No.")
                {
                }
                column(Bank_Account_Ledger_Entry_Description; Description)
                {
                }
                column(BankAccBalance; BankAccBalance)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(BankAccBalanceLCY; BankAccBalanceLCY)
                {
                    AutoFormatType = 1;
                }
                column(Desc; Desc)
                {
                    AutoFormatType = 1;
                }
                column(Bank_Account_Ledger_Entry__Debit_Amount_; "Debit Amount")
                {
                }
                column(Bank_Account_Ledger_Entry__Credit_Amount_; "Credit Amount")
                {
                }
                column(StartBalance____Bank_Account_Ledger_Entry__Amount_Control47; StartBalance + "Bank Account Ledger Entry".Amount)
                {
                    AutoFormatExpression = "Bank Account Ledger Entry"."Currency Code";
                    AutoFormatType = 1;
                }
                column(StartBalanceLCY____Bank_Account_Ledger_Entry___Amount__LCY___Control54; StartBalanceLCY + "Bank Account Ledger Entry"."Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(ContinuedCaption; ContinuedCaptionLbl)
                {
                }
                column(ContinuedCaption_Control46; ContinuedCaption_Control46Lbl)
                {
                }
                column(Bank_Account_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Bank_Account_Ledger_Entry_Bank_Account_No_; "Bank Account No.")
                {
                }
                column(Bank_Account_Ledger_Entry_Global_Dimension_2_Code; "Global Dimension 2 Code")
                {
                }
                column(Bank_Account_Ledger_Entry_Global_Dimension_1_Code; "Global Dimension 1 Code")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    BankAccLedgEntryExists := true;
                    BankAccBalance := BankAccBalance + Amount;
                    BankAccBalanceLCY := BankAccBalanceLCY + "Amount (LCY)";
                    BankTotal_Debit := BankTotal_Debit + "Bank Account Ledger Entry"."Debit Amount";
                    BankTotal_Credit := BankTotal_Credit + "Bank Account Ledger Entry"."Credit Amount";
                end;

                trigger OnPreDataItem()
                begin
                    BankAccLedgEntryExists := false;
                    CurrReport.CreateTotals(Amount, "Amount (LCY)");


                    case "Bal. Account Type" of
                        0:
                            if GL.Get("Bal. Account No.") then
                                Desc := GL.Name;
                        1:
                            if Cust.Get("Bal. Account No.") then
                                Desc := Cust.Name;
                        2:
                            if Vend.Get("Bal. Account No.") then
                                Desc := Vend.Name;
                        3:
                            if bank.Get("Bal. Account No.") then
                                Desc := bank.Name;
                        4:
                            if FA.Get("Bal. Account No.") then
                                Desc := FA."No.";
                    end;
                end;
            }
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(Bank_Account__Name; "Bank Account".Name)
                {
                }
                column(BankTotal_Debit; BankTotal_Debit)
                {
                }
                column(StartBalance____Bank_Account_Ledger_Entry__Amount_Control50; StartBalance + "Bank Account Ledger Entry".Amount)
                {
                    AutoFormatExpression = "Bank Account Ledger Entry"."Currency Code";
                    AutoFormatType = 1;
                }
                column(StartBalanceLCY____Bank_Account_Ledger_Entry___Amount__LCY___Control55; StartBalanceLCY + "Bank Account Ledger Entry"."Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(BankTotal_Credit; BankTotal_Credit)
                {
                }
                column(Integer_Number; Number)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if not BankAccLedgEntryExists and ((StartBalance = 0) or not PrintAllHavingBal) then begin
                        StartBalanceLCY := 0;
                        CurrReport.Skip;
                    end;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                StartBalance := 0;
                if BankAccDateFilter <> '' then
                    if GetRangeMin("Date Filter") <> 0D then begin
                        SetRange("Date Filter", 0D, GetRangeMin("Date Filter") - 1);
                        CalcFields("Net Change", "Net Change (LCY)");
                        StartBalance := "Net Change";
                        StartBalanceLCY := "Net Change (LCY)";
                        SetFilter("Date Filter", BankAccDateFilter);
                    end;
                CurrReport.PrintOnlyIfDetail := not (PrintAllHavingBal and (StartBalance <> 0));
                BankAccBalance := StartBalance;
                BankAccBalanceLCY := StartBalanceLCY;
                BankTotal_Debit := 0;
                BankTotal_Credit := 0;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.NewPagePerRecord := PrintOnlyOnePerPage;
                CurrReport.CreateTotals("Bank Account Ledger Entry"."Debit Amount",
                "Bank Account Ledger Entry"."Credit Amount", "Bank Account Ledger Entry"."Amount (LCY)", StartBalanceLCY);
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
        BankAccFilter := "Bank Account".GetFilters;
        BankAccDateFilter := "Bank Account".GetFilter("Date Filter");
    end;

    var
        Text000: Label 'Period: %1';
        PrintOnlyOnePerPage: Boolean;
        PrintAllHavingBal: Boolean;
        BankAccFilter: Text[250];
        BankAccDateFilter: Text[30];
        BankAccBalance: Decimal;
        BankAccBalanceLCY: Decimal;
        StartBalance: Decimal;
        StartBalanceLCY: Decimal;
        BankAccLedgEntryExists: Boolean;
        "------": Integer;
        Desc: Text[30];
        GL: Record "G/L Account";
        Cust: Record Customer;
        Vend: Record Vendor;
        bank: Record "Bank Account";
        FA: Record "Fixed Asset";
        BankTotal_Debit: Decimal;
        BankTotal_Credit: Decimal;
        Bank_Acc____Detail_Trial_Bal_CaptionLbl: Label 'Bank Acc. - Detail Trial Bal.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        This_report_also_includes_bank_accounts_that_only_have_balances_CaptionLbl: Label 'This report also includes bank accounts that only have balances.';
        BankAccBalanceCaptionLbl: Label 'Balance';
        BankAccBalanceLCYCaptionLbl: Label 'Balance (LCY)';
        DescCaptionLbl: Label 'Description';
        ContinuedCaptionLbl: Label 'Continued';
        ContinuedCaption_Control46Lbl: Label 'Continued';
}

