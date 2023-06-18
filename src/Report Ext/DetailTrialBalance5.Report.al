report 53177 "Detail Trial Balance - 5"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/DetailTrialBalance5.rdlc';
    Caption = 'Detail Trial Balance';

    dataset
    {
        dataitem("G/L Account"; "G/L Account")
        {
            DataItemTableView = WHERE("Account Type" = CONST(Posting));
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", "Income/Balance", "Debit/Credit", "Date Filter";
            column(CompName; CompName)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(STRSUBSTNO_Text000_GLDateFilter_; StrSubstNo(Text000, GLDateFilter))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(G_L_Account__TABLECAPTION__________GLFilter; "G/L Account".TableCaption + ': ' + GLFilter)
            {
            }
            column(EmptyString; '')
            {
            }
            column(G_L___Detail_Trial_BalanceCaption; G_L___Detail_Trial_BalanceCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(This_also_includes_G_L_accounts_that_only_have_a_balance_Caption; This_also_includes_G_L_accounts_that_only_have_a_balance_CaptionLbl)
            {
            }
            column(This_report_also_includes_closing_entries_within_the_period_Caption; This_report_also_includes_closing_entries_within_the_period_CaptionLbl)
            {
            }
            column(Net_ChangeCaption; Net_ChangeCaptionLbl)
            {
            }
            column(G_L_Entry__Posting_Date_Caption; "G/L Entry".FieldCaption("Posting Date"))
            {
            }
            column(G_L_Entry__Document_No__Caption; "G/L Entry".FieldCaption("Document No."))
            {
            }
            column(G_L_Entry_DescriptionCaption; "G/L Entry".FieldCaption(Description))
            {
            }
            column(G_L_Entry__Debit_Amount__Control33Caption; G_L_Entry__Debit_Amount__Control33CaptionLbl)
            {
            }
            column(G_L_Entry__Credit_Amount__Control34Caption; G_L_Entry__Credit_Amount__Control34CaptionLbl)
            {
            }
            column(GLBalanceCaption; GLBalanceCaptionLbl)
            {
            }
            column(G_L_Entry__Entry_No__Caption; "G/L Entry".FieldCaption("Entry No."))
            {
            }
            column(G_L_Entry__Bal__Account_No__Caption; "G/L Entry".FieldCaption("Bal. Account No."))
            {
            }
            column(DescCaption; DescCaptionLbl)
            {
            }
            column(G_L_Account_No_; "No.")
            {
            }
            column(G_L_Account_Date_Filter; "Date Filter")
            {
            }
            column(G_L_Account_Global_Dimension_1_Filter; "Global Dimension 1 Filter")
            {
            }
            column(G_L_Account_Global_Dimension_2_Filter; "Global Dimension 2 Filter")
            {
            }
            column(G_L_Account_Business_Unit_Filter; "Business Unit Filter")
            {
            }
            dataitem(PageCounter; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(G_L_Account___No__; "G/L Account"."No.")
                {
                }
                column(G_L_Account__Name; "G/L Account".Name)
                {
                }
                column(StartBalance; StartBalance)
                {
                    AutoFormatType = 1;
                }
                column(PageCounter_Number; Number)
                {
                }
                dataitem("G/L Entry"; "G/L Entry")
                {
                    DataItemLink = "G/L Account No." = FIELD("No."), "Posting Date" = FIELD("Date Filter"), "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"), "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"), "Business Unit Code" = FIELD("Business Unit Filter");
                    DataItemLinkReference = "G/L Account";
                    DataItemTableView = SORTING("G/L Account No.", "Posting Date");
                    column(G_L_Entry__Debit_Amount_; "Debit Amount")
                    {
                    }
                    column(G_L_Entry__Credit_Amount_; "Credit Amount")
                    {
                    }
                    column(StartBalance___Amount; StartBalance + Amount)
                    {
                        AutoFormatType = 1;
                    }
                    column(G_L_Entry__Posting_Date_; "Posting Date")
                    {
                    }
                    column(G_L_Entry__Document_No__; "Document No.")
                    {
                    }
                    column(G_L_Entry_Description; Description)
                    {
                    }
                    column(G_L_Entry__Debit_Amount__Control33; "Debit Amount")
                    {
                    }
                    column(G_L_Entry__Credit_Amount__Control34; "Credit Amount")
                    {
                    }
                    column(GLBalance; GLBalance)
                    {
                        AutoFormatType = 1;
                    }
                    column(G_L_Entry__Entry_No__; "Entry No.")
                    {
                    }
                    column(G_L_Entry__Bal__Account_No__; "Bal. Account No.")
                    {
                    }
                    column(Desc; Desc)
                    {
                        AutoFormatType = 1;
                    }
                    column(G_L_Entry__Debit_Amount__Control39; "Debit Amount")
                    {
                    }
                    column(G_L_Entry__Credit_Amount__Control40; "Credit Amount")
                    {
                    }
                    column(StartBalance___Amount_Control41; StartBalance + Amount)
                    {
                        AutoFormatType = 1;
                    }
                    column(Control24Caption; Control24CaptionLbl)
                    {
                    }
                    column(Control37Caption; Control37CaptionLbl)
                    {
                    }
                    column(G_L_Entry_G_L_Account_No_; "G/L Account No.")
                    {
                    }
                    column(G_L_Entry_Global_Dimension_1_Code; "Global Dimension 1 Code")
                    {
                    }
                    column(G_L_Entry_Global_Dimension_2_Code; "Global Dimension 2 Code")
                    {
                    }
                    column(G_L_Entry_Business_Unit_Code; "Business Unit Code")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        Desc := '';
                    end;

                    trigger OnPreDataItem()
                    begin
                        GLBalance := StartBalance;
                        CurrReport.CreateTotals(Amount, "Debit Amount", "Credit Amount", "VAT Amount");

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
                            else
                                Desc := '';
                        end;
                    end;
                }
                dataitem("Integer"; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(G_L_Account__Name_Control42; "G/L Account".Name)
                    {
                    }
                    column(G_L_Entry___Debit_Amount_; "G/L Entry"."Debit Amount")
                    {
                    }
                    column(G_L_Entry___Credit_Amount_; "G/L Entry"."Credit Amount")
                    {
                    }
                    column(StartBalance____G_L_Entry__Amount; StartBalance + "G/L Entry".Amount)
                    {
                        AutoFormatType = 1;
                    }
                    column(Integer_Number; Number)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        if ("G/L Entry"."Debit Amount" = 0) and
                           ("G/L Entry"."Credit Amount" = 0) and
                           ((StartBalance = 0) or
                           not PrintAllHavingBal)
                        then
                            CurrReport.Skip();
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    CurrReport.PrintOnlyIfDetail := not (PrintAllHavingBal and (StartBalance <> 0));
                end;
            }

            trigger OnAfterGetRecord()
            begin
                StartBalance := 0;
                if GLDateFilter <> '' then
                    if GetRangeMin("Date Filter") <> 0D then begin
                        SetRange("Date Filter", 0D, ClosingDate(GetRangeMin("Date Filter") - 1));
                        CalcFields("Net Change");
                        StartBalance := "Net Change";
                        SetFilter("Date Filter", GLDateFilter);
                    end;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.NewPagePerRecord := PrintOnlyOnePerPage;
                if Comp.Get() then CompName := Comp."Ship-to Name";
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
        GLFilter := "G/L Account".GetFilters;
        GLDateFilter := "G/L Account".GetFilter("Date Filter");
    end;

    var
        Text000: Label 'Period: %1';
        GLDateFilter: Text[30];
        GLFilter: Text[250];
        GLBalance: Decimal;
        StartBalance: Decimal;
        PrintOnlyOnePerPage: Boolean;
        PrintAllHavingBal: Boolean;
        Comp: Record "Company Information";
        CompName: Text[30];
        Desc: Text[30];
        GL: Record "G/L Account";
        Cust: Record Customer;
        Vend: Record Vendor;
        bank: Record "Bank Account";
        FA: Record "Fixed Asset";
        G_L___Detail_Trial_BalanceCaptionLbl: Label 'G/L - Detail Trial Balance';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        This_also_includes_G_L_accounts_that_only_have_a_balance_CaptionLbl: Label 'This also includes G/L accounts that only have a balance.';
        This_report_also_includes_closing_entries_within_the_period_CaptionLbl: Label 'This report also includes closing entries within the period.';
        Net_ChangeCaptionLbl: Label 'Net Change';
        G_L_Entry__Debit_Amount__Control33CaptionLbl: Label 'Debit';
        G_L_Entry__Credit_Amount__Control34CaptionLbl: Label 'Credit';
        GLBalanceCaptionLbl: Label 'Balance';
        DescCaptionLbl: Label 'Description';
        Control24CaptionLbl: Label 'Label24';
        Control37CaptionLbl: Label 'Label37';
}
