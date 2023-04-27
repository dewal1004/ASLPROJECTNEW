report 50101 "Customer Balance At Dates"
{
    // BalAtDat
    // BalB4Per
    //  "Debit Amount (LCY)"
    //  "Credit Amount (LCY)"
    // Customer.SETFILTER(Customer."Customer Posting Group",'STAFF');
    // Customer."Date Filter":=0D;
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/CustomerBalanceAtDates.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem(Customer; Customer)
        {
            CalcFields = "Net Change", "Net Change (LCY)";
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Customer Posting Group", "Date Filter", "Gen. Bus. Posting Group";
            column(No_; Customer."No.")
            {
            }
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
            column(Filters_________GETFILTERS__; 'Filters  := ' + GetFilters())
            {
            }
            column(Customer__No__; "No.")
            {
            }
            column(Customer_Name; Name)
            {
            }
            column(BalAtDat; BalAtDat)
            {
            }
            column(Customer___Credit_Amount__LCY__; "Credit Amount (LCY)")
            {
            }
            column(BalB4Per; BalB4Per)
            {
            }
            column(Customer__Debit_Amount__LCY__; "Debit Amount (LCY)")
            {
            }
            column(CurrReport_PAGENO_Control1000000056; CurrReport.PageNo)
            {
            }
            column(USERID_Control1000000058; UserId)
            {
            }
            column(Totals___; 'Totals :')
            {
            }
            column(BalAtDat_Control1000000003; BalAtDat)
            {
            }
            column(Customer___Credit_Amount__LCY___Control1000000010; "Credit Amount (LCY)")
            {
            }
            column(Customer__Debit_Amount__LCY___Control1000000011; "Debit Amount (LCY)")
            {
            }
            column(BalB4Per_Control1000000012; BalB4Per)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Balance_At_DateCaption; Balance_At_DateCaptionLbl)
            {
            }
            column(Customer_Balance_At_DateCaption; Customer_Balance_At_DateCaptionLbl)
            {
            }
            column(Customer__No__Caption; FieldCaption("No."))
            {
            }
            column(Customer_NameCaption; FieldCaption(Name))
            {
            }
            column(Balance_At_DateCaption_Control18; Balance_At_DateCaption_Control18Lbl)
            {
            }
            column(Opening_Balance_Caption; Opening_Balance_CaptionLbl)
            {
            }
            column(DebitCaption; DebitCaptionLbl)
            {
            }
            column(CreditCaption; CreditCaptionLbl)
            {
            }
            column(Balance_At_DateCaption_Control1000000049; Balance_At_DateCaption_Control1000000049Lbl)
            {
            }
            column(CreditCaption_Control1000000050; CreditCaption_Control1000000050Lbl)
            {
            }
            column(DebitCaption_Control1000000051; DebitCaption_Control1000000051Lbl)
            {
            }
            column(Opening_Balance_Caption_Control1000000052; Opening_Balance_Caption_Control1000000052Lbl)
            {
            }
            column(Customer_NameCaption_Control1000000053; FieldCaption(Name))
            {
            }
            column(Customer__No__Caption_Control1000000054; FieldCaption("No."))
            {
            }
            column(CurrReport_PAGENO_Control1000000056Caption; CurrReport_PAGENO_Control1000000056CaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                if (Output = 1) then CurrReport.Break;

                SetRange("Date Filter", 0D, ToDate);
                CalcFields("Net Change (LCY)");
                BalAtDat := "Net Change (LCY)";

                SetRange("Date Filter", 0D, FrDate);
                CalcFields("Net Change (LCY)");
                BalB4Per := "Net Change (LCY)";

                SetRange("Date Filter", FrDate, ToDate);
                CurrReport.CreateTotals(BalAtDat, BalB4Per, "Debit Amount (LCY)", "Credit Amount (LCY)");

                if (("Net Change (LCY)" = 0) and (not ShowZero)) then CurrReport.Skip;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("No.");
                if (Output <> 1) then begin
                    ToDate := GetRangeMax(Customer."Date Filter");
                    FrDate := GetRangeMin(Customer."Date Filter");
                end;
                if ToDate = 0D then ToDate := Today;
                if Output <> 1 then CurrReport.Skip;
            end;
        }
        dataitem(Vendor; Vendor)
        {
            RequestFilterFields = "No.", "Vendor Posting Group", "Date Filter", "Gen. Bus. Posting Group";
            column(FORMAT_TODAY_0_4__Control1000000044; Format(Today, 0, 4))
            {
            }
            column(CurrReport_PAGENO_Control1000000045; CurrReport.PageNo)
            {
            }
            column(USERID_Control1000000047; UserId)
            {
            }
            column(Filters_________GETFILTERS___Control1000000048; 'Filters  := ' + GetFilters())
            {
            }
            column(BalAtDat_Control1000000024; BalAtDat)
            {
            }
            column(Vendor___Credit_Amount__LCY__; "Credit Amount (LCY)")
            {
            }
            column(Vendor__Debit_Amount__LCY__; "Debit Amount (LCY)")
            {
            }
            column(BalB4Per_Control1000000027; BalB4Per)
            {
            }
            column(Vendor_Name; Name)
            {
            }
            column(Vendor__No__; "No.")
            {
            }
            column(CurrReport_PAGENO_Control1000000060; CurrReport.PageNo)
            {
            }
            column(USERID_Control1000000061; UserId)
            {
            }
            column(BalAtDat_Control1000000032; BalAtDat)
            {
            }
            column(Vendor___Credit_Amount__LCY___Control1000000033; "Credit Amount (LCY)")
            {
            }
            column(Vendor__Debit_Amount__LCY___Control1000000034; "Debit Amount (LCY)")
            {
            }
            column(BalB4Per_Control1000000035; BalB4Per)
            {
            }
            column(Totals____Control1000000036; 'Totals :')
            {
            }
            column(Vendor_Balance_At_DateCaption; Vendor_Balance_At_DateCaptionLbl)
            {
            }
            column(CurrReport_PAGENO_Control1000000045Caption; CurrReport_PAGENO_Control1000000045CaptionLbl)
            {
            }
            column(Balance_At_DateCaption_Control1000000017; Balance_At_DateCaption_Control1000000017Lbl)
            {
            }
            column(CreditCaption_Control1000000018; CreditCaption_Control1000000018Lbl)
            {
            }
            column(DebitCaption_Control1000000020; DebitCaption_Control1000000020Lbl)
            {
            }
            column(Opening_Balance_Caption_Control1000000021; Opening_Balance_Caption_Control1000000021Lbl)
            {
            }
            column(Vendor_NameCaption; FieldCaption(Name))
            {
            }
            column(Vendor__No__Caption; FieldCaption("No."))
            {
            }
            column(Balance_At_DateCaption_Control1000000037; Balance_At_DateCaption_Control1000000037Lbl)
            {
            }
            column(CreditCaption_Control1000000038; CreditCaption_Control1000000038Lbl)
            {
            }
            column(DebitCaption_Control1000000039; DebitCaption_Control1000000039Lbl)
            {
            }
            column(Opening_Balance_Caption_Control1000000040; Opening_Balance_Caption_Control1000000040Lbl)
            {
            }
            column(Vendor_NameCaption_Control1000000041; FieldCaption(Name))
            {
            }
            column(Vendor__No__Caption_Control1000000043; FieldCaption("No."))
            {
            }
            column(CurrReport_PAGENO_Control1000000060Caption; CurrReport_PAGENO_Control1000000060CaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                if (Output = 0) then CurrReport.Break;

                SetRange("Date Filter", 0D, ToDate);
                CalcFields("Net Change (LCY)");
                BalAtDat := "Net Change (LCY)";

                SetRange("Date Filter", 0D, FrDate);
                CalcFields("Net Change (LCY)");
                BalB4Per := "Net Change (LCY)";

                SetRange("Date Filter", FrDate, ToDate);
                CurrReport.CreateTotals(BalAtDat, BalB4Per, "Debit Amount (LCY)", "Credit Amount (LCY)");

                if (("Net Change (LCY)" = 0) and (not ShowZero)) then CurrReport.Skip;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("No.");
                if (Output <> 0) then begin
                    ToDate := GetRangeMax(Vendor."Date Filter");
                    FrDate := GetRangeMin(Vendor."Date Filter");
                end;
                if ToDate = 0D then ToDate := Today;
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
        ToDate: Date;
        ShowZero: Boolean;
        "-----------": Integer;
        FrDate: Date;
        BalAtDat: Decimal;
        BalB4Per: Decimal;
        Output: Option Customer,Vendor,Both;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Balance_At_DateCaptionLbl: Label 'Balance At Date';
        Customer_Balance_At_DateCaptionLbl: Label 'Customer Balance At Date';
        Balance_At_DateCaption_Control18Lbl: Label 'Balance At Date';
        Opening_Balance_CaptionLbl: Label 'Opening Balance ';
        DebitCaptionLbl: Label 'Debit';
        CreditCaptionLbl: Label 'Credit';
        Balance_At_DateCaption_Control1000000049Lbl: Label 'Balance At Date';
        CreditCaption_Control1000000050Lbl: Label 'Credit';
        DebitCaption_Control1000000051Lbl: Label 'Debit';
        Opening_Balance_Caption_Control1000000052Lbl: Label 'Opening Balance ';
        CurrReport_PAGENO_Control1000000056CaptionLbl: Label 'Page';
        Vendor_Balance_At_DateCaptionLbl: Label 'Vendor Balance At Date';
        CurrReport_PAGENO_Control1000000045CaptionLbl: Label 'Page';
        Balance_At_DateCaption_Control1000000017Lbl: Label 'Balance At Date';
        CreditCaption_Control1000000018Lbl: Label 'Credit';
        DebitCaption_Control1000000020Lbl: Label 'Debit';
        Opening_Balance_Caption_Control1000000021Lbl: Label 'Opening Balance ';
        Balance_At_DateCaption_Control1000000037Lbl: Label 'Balance At Date';
        CreditCaption_Control1000000038Lbl: Label 'Credit';
        DebitCaption_Control1000000039Lbl: Label 'Debit';
        Opening_Balance_Caption_Control1000000040Lbl: Label 'Opening Balance ';
        CurrReport_PAGENO_Control1000000060CaptionLbl: Label 'Page';
}

