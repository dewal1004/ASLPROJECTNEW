report 50147 "Sales Returns Register"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/SalesReturnsRegister.50147.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "Sell-to Customer No.", "No.", "Posting Date";
            RequestFilterHeading = 'Sales Returns Filter';
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(Sales_Cr_Memo_Header__GETFILTERS; "Sales Cr.Memo Header".GetFilters)
            {
            }
            column(AmountCaption; AmountCaption)
            {
            }
            column(AmountCaption_Control1000000005; AmountCaption)
            {
            }
            column(VatAmount; VatAmount)
            {
            }
            column(InvAmount; InvAmount)
            {
            }
            column(DiscAmount; DiscAmount)
            {
            }
            column(InvAmount_Control1000000019; InvAmount)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Returns_RegisterCaption; Sales_Returns_RegisterCaptionLbl)
            {
            }
            column(Unit_PriceCaption; Unit_PriceCaptionLbl)
            {
            }
            column(DescriptionCaption; DescriptionCaptionLbl)
            {
            }
            column(No_Caption; No_CaptionLbl)
            {
            }
            column(SalesInvHeader__Posting_Date_Caption; SalesInvHeader__Posting_Date_CaptionLbl)
            {
            }
            column(Sales_Cr_Memo_Line__Unit_of_Measure_Caption; Sales_Cr_Memo_Line__Unit_of_Measure_CaptionLbl)
            {
            }
            column(QtyCaption; QtyCaptionLbl)
            {
            }
            column(DiscAmount_Control1000000012Caption; DiscAmount_Control1000000012CaptionLbl)
            {
            }
            column(Posted_Returns_No_Caption; Posted_Returns_No_CaptionLbl)
            {
            }
            column(Sales_Cr_Memo_Line__Location_Code_Caption; "Sales Cr.Memo Line".FieldCaption("Location Code"))
            {
            }
            column(Customer_NameCaption; Customer_NameCaptionLbl)
            {
            }
            column(Customer_No_Caption; Customer_No_CaptionLbl)
            {
            }
            column(VatAmount_Control1000000000Caption; VatAmount_Control1000000000CaptionLbl)
            {
            }
            column(SalesInvHeader__Currency_Code_Caption; SalesInvHeader__Currency_Code_CaptionLbl)
            {
            }
            column(Posting_DateCaption; Posting_DateCaptionLbl)
            {
            }
            column(Posted_Invoice_No_Caption; Posted_Invoice_No_CaptionLbl)
            {
            }
            column(Customer_No_Caption_Control1000000010; Customer_No_Caption_Control1000000010Lbl)
            {
            }
            column(Customer_NameCaption_Control1000000025; Customer_NameCaption_Control1000000025Lbl)
            {
            }
            column(SalesInvHeader__Currency_Code__Control1000000036Caption; SalesInvHeader__Currency_Code__Control1000000036CaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Grand_TotalCaption; Grand_TotalCaptionLbl)
            {
            }
            column(Sales_Cr_Memo_Header_No_; "No.")
            {
            }
            dataitem("Sales Cr.Memo Line"; "Sales Cr.Memo Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Line No.");
                column(Sales_Cr_Memo_Line__No__; "No.")
                {
                }
                column(InvAmount_Control12; InvAmount)
                {
                }
                column(SalesInvHeader__Posting_Date_; SalesInvHeader."Posting Date")
                {
                }
                column(Sales_Cr_Memo_Line__Unit_of_Measure_; "Unit of Measure")
                {
                }
                column(Sales_Cr_Memo_Line_Quantity; Quantity)
                {
                }
                column(UnitPrice; UnitPrice)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(DiscAmount_Control1000000012; DiscAmount)
                {
                }
                column(Customer_Name; Customer.Name)
                {
                }
                column(Sales_Cr_Memo_Line__Location_Code_; "Location Code")
                {
                }
                column(Sales_Cr_Memo_Line_Description; Description)
                {
                }
                column(VatAmount_Control1000000000; VatAmount)
                {
                }
                column(Sales_Cr_Memo_Line__Document_No__; "Document No.")
                {
                }
                column(Sales_Cr_Memo_Line__Sell_to_Customer_No__; "Sell-to Customer No.")
                {
                }
                column(SalesInvHeader__Currency_Code_; SalesInvHeader."Currency Code")
                {
                }
                column(InvAmount_Control1000000006; InvAmount)
                {
                }
                column(VatAmount_Control1000000032; VatAmount)
                {
                }
                column(DiscAmount_Control1000000002; DiscAmount)
                {
                }
                column(InvAmount_Control1000000014; InvAmount)
                {
                }
                column(SalesInvHeader__Posting_Date__Control1000000015; SalesInvHeader."Posting Date")
                {
                }
                column(Sales_Cr_Memo_Line__Document_No___Control1000000026; "Document No.")
                {
                }
                column(Customer_Name_Control1000000027; Customer.Name)
                {
                }
                column(Sales_Cr_Memo_Line__Sell_to_Customer_No___Control1000000028; "Sell-to Customer No.")
                {
                }
                column(SalesInvHeader__Currency_Code__Control1000000036; SalesInvHeader."Currency Code")
                {
                }
                column(Total_for_Customer_Caption; Total_for_Customer_CaptionLbl)
                {
                }
                column(Sales_Cr_Memo_Line_Line_No_; "Line No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    UnitPrice := 0;

                    if "Sales Cr.Memo Header"."Currency Code" = '' then begin
                        InvAmount := "Sales Cr.Memo Line"."Amount Including VAT";
                        UnitPrice := "Sales Cr.Memo Line"."Unit Price";
                        VatAmount := "Sales Cr.Memo Line"."Amount Including VAT" - "Sales Cr.Memo Line".Amount;
                        DiscAmount := "Sales Cr.Memo Line"."Line Discount Amount";
                        TotQty := TotQty + "Sales Cr.Memo Line".Quantity;
                    end else begin
                        InvAmount :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code",
                            "Sales Cr.Memo Line"."Amount Including VAT", "Sales Cr.Memo Header"."Currency Factor");
                        UnitPrice :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code",
                            "Sales Cr.Memo Line"."Unit Price", "Sales Cr.Memo Header"."Currency Factor");
                        VatAmount :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code",
                            ("Sales Cr.Memo Line"."Amount Including VAT" - "Sales Cr.Memo Line".Amount), "Sales Cr.Memo Header"."Currency Factor");
                        DiscAmount :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code",
                            "Sales Cr.Memo Line"."Line Discount Amount", "Sales Cr.Memo Header"."Currency Factor");
                        TotQty := TotQty + "Sales Cr.Memo Line".Quantity;
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    if ItemFilter <> '' then
                        "Sales Cr.Memo Line".SetFilter("Sales Cr.Memo Line"."No.", ItemFilter);
                    CurrReport.CreateTotals(InvAmount, VatAmount, DiscAmount);
                end;
            }

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(InvAmount, VatAmount, DiscAmount);
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
        if ShowVat then
            AmountCaption := 'Amount Inc. VAT(LCY)'
        else
            AmountCaption := 'Amount(LCY)';
    end;

    var
        SalesInvHeader: Record "Sales Cr.Memo Header";
        UserSetup: Record "User Setup";
        ItemRec: Record Item;
        Customer: Record Customer;
        CurrencyExchRate: Record "Currency Exchange Rate";
        totalamount: Decimal;
        DiscAmount: Decimal;
        InvDisc: Decimal;
        ItemFilter: Code[250];
        TotQty: Decimal;
        UnitPrice: Decimal;
        InvAmount: Decimal;
        VatAmount: Decimal;
        ShowDetails: Boolean;
        ShowVat: Boolean;
        AmountCaption: Text[30];
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Sales_Returns_RegisterCaptionLbl: Label 'Sales Returns Register';
        Unit_PriceCaptionLbl: Label 'Unit Price';
        DescriptionCaptionLbl: Label 'Description';
        No_CaptionLbl: Label 'No.';
        SalesInvHeader__Posting_Date_CaptionLbl: Label 'Posting Date';
        Sales_Cr_Memo_Line__Unit_of_Measure_CaptionLbl: Label 'UOM';
        QtyCaptionLbl: Label 'Qty';
        DiscAmount_Control1000000012CaptionLbl: Label 'Discount Amt';
        Posted_Returns_No_CaptionLbl: Label 'Posted Returns No.';
        Customer_NameCaptionLbl: Label 'Customer Name';
        Customer_No_CaptionLbl: Label 'Customer No.';
        VatAmount_Control1000000000CaptionLbl: Label 'Vat Amount';
        SalesInvHeader__Currency_Code_CaptionLbl: Label 'Curr';
        Posting_DateCaptionLbl: Label 'Posting Date';
        Posted_Invoice_No_CaptionLbl: Label 'Posted Invoice No.';
        Customer_No_Caption_Control1000000010Lbl: Label 'Customer No.';
        Customer_NameCaption_Control1000000025Lbl: Label 'Customer Name';
        SalesInvHeader__Currency_Code__Control1000000036CaptionLbl: Label 'Curr';
        TotalCaptionLbl: Label 'Total';
        Grand_TotalCaptionLbl: Label 'Grand Total';
        Total_for_Customer_CaptionLbl: Label 'Total for Customer:';
}

