report 50134 "Vendor-Detail Trial Balanc-304"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/VendorDetailTrialBalanc304.rdlc';
    Caption = 'Vendor - Detail Trial Balance';

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            DataItemTableView = SORTING("No.");
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", "Vendor Posting Group", "Date Filter";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(STRSUBSTNO_Text000_VendDateFilter_; StrSubstNo(Text000, VendDateFilter))
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
            column(Vendor_TABLECAPTION__________VendFilter; Vendor.TableCaption + ': ' + VendFilter)
            {
            }
            column(AmountCaption; AmountCaption)
            {
                AutoFormatExpression = "Currency Code";
                AutoFormatType = 1;
            }
            column(RemainingAmtCaption; RemainingAmtCaption)
            {
                AutoFormatExpression = "Currency Code";
                AutoFormatType = 1;
            }
            column(Vendor__No__; "No.")
            {
            }
            column(Vendor_Name; Name)
            {
            }
            column(Vendor__Phone_No__; "Phone No.")
            {
            }
            column(StartBalanceLCY; StartBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(StartBalanceLCY_Control29; StartBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(Vendor_Ledger_Entry___Amount__LCY__; "Vendor Ledger Entry"."Amount (LCY)")
            {
                AutoFormatType = 1;
            }
            column(StartBalanceLCY____Vendor_Ledger_Entry___Amount__LCY__; StartBalanceLCY + "Vendor Ledger Entry"."Amount (LCY)")
            {
                AutoFormatType = 1;
            }
            column(Vendor___Detail_Trial_BalanceCaption; Vendor___Detail_Trial_BalanceCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(All_amounts_are_in_LCYCaption; All_amounts_are_in_LCYCaptionLbl)
            {
            }
            column(This_report_also_includes_vendors_that_only_have_balances_Caption; This_report_also_includes_vendors_that_only_have_balances_CaptionLbl)
            {
            }
            column(Vendor_Ledger_Entry__Posting_Date_Caption; "Vendor Ledger Entry".FieldCaption("Posting Date"))
            {
            }
            column(Vendor_Ledger_Entry__Document_Type_Caption; Vendor_Ledger_Entry__Document_Type_CaptionLbl)
            {
            }
            column(Vendor_Ledger_Entry__Document_No__Caption; "Vendor Ledger Entry".FieldCaption("Document No."))
            {
            }
            column(Vendor_Ledger_Entry_DescriptionCaption; "Vendor Ledger Entry".FieldCaption(Description))
            {
            }
            column(VendBalanceLCYCaption; VendBalanceLCYCaptionLbl)
            {
            }
            column(Vendor_Ledger_Entry__Applies_to_Doc__Type_Caption; Vendor_Ledger_Entry__Applies_to_Doc__Type_CaptionLbl)
            {
            }
            column(Vendor_Ledger_Entry__Applies_to_Doc__No__Caption; Vendor_Ledger_Entry__Applies_to_Doc__No__CaptionLbl)
            {
            }
            column(VendEntryDueDateCaption; VendEntryDueDateCaptionLbl)
            {
            }
            column(Vendor_Ledger_Entry__Entry_No__Caption; "Vendor Ledger Entry".FieldCaption("Entry No."))
            {
            }
            column(Vendor__Phone_No__Caption; FieldCaption("Phone No."))
            {
            }
            column(Total__LCY_Caption; Total__LCY_CaptionLbl)
            {
            }
            column(Total__LCY__Before_PeriodCaption; Total__LCY__Before_PeriodCaptionLbl)
            {
            }
            column(Vendor_Date_Filter; "Date Filter")
            {
            }
            column(Vendor_Global_Dimension_1_Filter; "Global Dimension 1 Filter")
            {
            }
            column(Vendor_Global_Dimension_2_Filter; "Global Dimension 2 Filter")
            {
            }
            dataitem("Vendor Ledger Entry"; "Vendor Ledger Entry")
            {
                DataItemLink = "Vendor No." = FIELD("No."), "Posting Date" = FIELD("Date Filter"), "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"), "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"), "Date Filter" = FIELD("Date Filter");
                DataItemTableView = SORTING("Vendor No.", "Posting Date") WHERE("Purchaser Code" = FILTER(<> 'VK'));
                column(StartBalanceLCY____Amount__LCY__; StartBalanceLCY + "Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(Vendor_Ledger_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(Vendor_Ledger_Entry__Document_Type_; "Document Type")
                {
                }
                column(Vendor_Ledger_Entry__Document_No__; "Document No.")
                {
                }
                column(Vendor_Ledger_Entry_Description; Description)
                {
                }
                column(VendAmount; VendAmount)
                {
                    AutoFormatExpression = VendCurrencyCode;
                    AutoFormatType = 1;
                }
                column(VendBalanceLCY; VendBalanceLCY)
                {
                    AutoFormatType = 1;
                }
                column(VendRemainAmount; VendRemainAmount)
                {
                    AutoFormatExpression = VendCurrencyCode;
                    AutoFormatType = 1;
                }
                column(Vendor_Ledger_Entry__Applies_to_Doc__Type_; "Applies-to Doc. Type")
                {
                }
                column(Vendor_Ledger_Entry__Applies_to_Doc__No__; "Applies-to Doc. No.")
                {
                }
                column(VendEntryDueDate; VendEntryDueDate)
                {
                }
                column(Vendor_Ledger_Entry__Entry_No__; "Entry No.")
                {
                }
                column(VendCurrencyCode; VendCurrencyCode)
                {
                }
                column(StartBalanceLCY____Amount__LCY___Control53; StartBalanceLCY + "Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(ContinuedCaption; ContinuedCaptionLbl)
                {
                }
                column(ContinuedCaption_Control46; ContinuedCaption_Control46Lbl)
                {
                }
                column(Vendor_Ledger_Entry_Vendor_No_; "Vendor No.")
                {
                }
                column(Vendor_Ledger_Entry_Global_Dimension_1_Code; "Global Dimension 1 Code")
                {
                }
                column(Vendor_Ledger_Entry_Global_Dimension_2_Code; "Global Dimension 2 Code")
                {
                }
                column(Vendor_Ledger_Entry_Date_Filter; "Date Filter")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    CalcFields(Amount, "Remaining Amount", "Amount (LCY)", "Remaining Amt. (LCY)");

                    VendLedgEntryExists := true;
                    if PrintAmountsInLCY then begin
                        VendAmount := "Amount (LCY)";
                        VendRemainAmount := "Remaining Amt. (LCY)";
                        VendCurrencyCode := '';
                    end else begin
                        VendAmount := Amount;
                        VendRemainAmount := "Remaining Amount";
                        VendCurrencyCode := "Currency Code";
                    end;
                    VendBalanceLCY := VendBalanceLCY + "Amount (LCY)";
                    if "Document Type" = "Document Type"::Payment then
                        VendEntryDueDate := 0D
                    else
                        VendEntryDueDate := "Due Date";
                end;

                trigger OnPreDataItem()
                begin
                    VendLedgEntryExists := false;
                    CurrReport.CreateTotals(VendAmount, "Amount (LCY)");
                end;
            }
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(Vendor_Name_Control27; Vendor.Name)
                {
                }
                column(StartBalanceLCY____Vendor_Ledger_Entry___Amount__LCY___Control55; StartBalanceLCY + "Vendor Ledger Entry"."Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(Vendor_Name_Control48; Vendor.Name)
                {
                }
                column(VendAmount_Control49; VendAmount)
                {
                    AutoFormatExpression = VendCurrencyCode;
                    AutoFormatType = 1;
                }
                column(StartBalanceLCY____Vendor_Ledger_Entry___Amount__LCY___Control56; StartBalanceLCY + "Vendor Ledger Entry"."Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(Integer_Number; Number)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if not VendLedgEntryExists and ((StartBalanceLCY = 0) or not PrintAllHavingBal) then begin
                        StartBalanceLCY := 0;
                        CurrReport.Skip;
                    end;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                StartBalanceLCY := 0;
                if VendDateFilter <> '' then
                    if GetRangeMin("Date Filter") <> 0D then begin
                        SetRange("Date Filter", 0D, GetRangeMin("Date Filter") - 1);
                        CalcFields("Net Change (LCY)");
                        StartBalanceLCY := -"Net Change (LCY)";
                        SetFilter("Date Filter", VendDateFilter);
                    end;
                CurrReport.PrintOnlyIfDetail := not (PrintAllHavingBal and (StartBalanceLCY <> 0));
                VendBalanceLCY := StartBalanceLCY;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.NewPagePerRecord := PrintOnlyOnePerPage;
                CurrReport.CreateTotals("Vendor Ledger Entry"."Amount (LCY)", StartBalanceLCY);
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
        VendFilter := Vendor.GetFilters;
        VendDateFilter := Vendor.GetFilter("Date Filter");

        with "Vendor Ledger Entry" do
            if PrintAmountsInLCY then begin
                AmountCaption := FieldCaption("Amount (LCY)");
                RemainingAmtCaption := FieldCaption("Remaining Amt. (LCY)");
            end else begin
                AmountCaption := FieldCaption(Amount);
                RemainingAmtCaption := FieldCaption("Remaining Amount");
            end;
    end;

    var
        Text000: Label 'Period: %1';
        VendFilter: Text[250];
        VendDateFilter: Text[30];
        VendAmount: Decimal;
        VendRemainAmount: Decimal;
        VendBalanceLCY: Decimal;
        VendEntryDueDate: Date;
        StartBalanceLCY: Decimal;
        PrintAllHavingBal: Boolean;
        PrintAmountsInLCY: Boolean;
        PrintOnlyOnePerPage: Boolean;
        VendLedgEntryExists: Boolean;
        AmountCaption: Text[30];
        RemainingAmtCaption: Text[30];
        VendCurrencyCode: Code[10];
        Vendor___Detail_Trial_BalanceCaptionLbl: Label 'Vendor - Detail Trial Balance';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        All_amounts_are_in_LCYCaptionLbl: Label 'All amounts are in LCY';
        This_report_also_includes_vendors_that_only_have_balances_CaptionLbl: Label 'This report also includes vendors that only have balances.';
        Vendor_Ledger_Entry__Document_Type_CaptionLbl: Label 'Document Type';
        VendBalanceLCYCaptionLbl: Label 'Balance (LCY)';
        Vendor_Ledger_Entry__Applies_to_Doc__Type_CaptionLbl: Label 'Applies-to Doc. Type';
        Vendor_Ledger_Entry__Applies_to_Doc__No__CaptionLbl: Label 'Applies-to Doc. No.';
        VendEntryDueDateCaptionLbl: Label 'Due Date';
        Total__LCY_CaptionLbl: Label 'Total (LCY)';
        Total__LCY__Before_PeriodCaptionLbl: Label 'Total (LCY) Before Period';
        ContinuedCaptionLbl: Label 'Continued';
        ContinuedCaption_Control46Lbl: Label 'Continued';
}

