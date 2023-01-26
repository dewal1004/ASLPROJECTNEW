report 50045 "Sales Register"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/SalesRegister.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "Sell-to Customer No.", "No.", "Posting Date";
            RequestFilterHeading = 'Sales Invoice Filter';
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
            column(Sales_Invoice_Header__GETFILTERS; "Sales Invoice Header".GetFilters)
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
            column(Sales_RegisterCaption; Sales_RegisterCaptionLbl)
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
            column(Order_No_Caption; Order_No_CaptionLbl)
            {
            }
            column(Sales_Invoice_Line__Unit_of_Measure_Caption; Sales_Invoice_Line__Unit_of_Measure_CaptionLbl)
            {
            }
            column(QtyCaption; QtyCaptionLbl)
            {
            }
            column(DiscAmount_Control1000000012Caption; DiscAmount_Control1000000012CaptionLbl)
            {
            }
            column(Posted_Invoice_No_Caption; Posted_Invoice_No_CaptionLbl)
            {
            }
            column(Sales_Invoice_Line__Location_Code_Caption; "Sales Invoice Line".FieldCaption("Location Code"))
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
            column(Order_No_Caption_Control1000000023; Order_No_Caption_Control1000000023Lbl)
            {
            }
            column(Posted_Invoice_No_Caption_Control1000000011; Posted_Invoice_No_Caption_Control1000000011Lbl)
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
            column(Sales_Invoice_Header_No_; "No.")
            {
            }
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Line No.");
                column(Sales_Invoice_Line__No__; "No.")
                {
                }
                column(InvAmount_Control12; InvAmount)
                {
                }
                column(SalesInvHeader__Posting_Date_; SalesInvHeader."Posting Date")
                {
                }
                column(SalesInvHeader__Order_No__; SalesInvHeader."Order No.")
                {
                }
                column(Sales_Invoice_Line__Unit_of_Measure_; "Unit of Measure")
                {
                }
                column(Sales_Invoice_Line_Quantity; Quantity)
                {
                }
                column(UnitPrice; UnitPrice)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(DiscAmount_Control1000000012; DiscAmount)
                {
                }
                column(Customaer_Name; Customer.Name)
                {
                }
                column(Sales_Invoice_Line__Location_Code_; "Location Code")
                {
                }
                column(Sales_Invoice_Line_Description; Description)
                {
                }
                column(VatAmount_Control1000000000; VatAmount)
                {
                }
                column(Sales_Invoice_Line__Document_No__; "Document No.")
                {
                }
                column(Sales_Invoice_Line__Sell_to_Customer_No__; "Sell-to Customer No.")
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
                column(DiscAmount_Control1000000038; DiscAmount)
                {
                }
                column(InvAmount_Control1000000014; InvAmount)
                {
                }
                column(SalesInvHeader__Posting_Date__Control1000000015; SalesInvHeader."Posting Date")
                {
                }
                column(SalesInvHeader__Order_No___Control1000000017; SalesInvHeader."Order No.")
                {
                }
                column(Sales_Invoice_Line__Document_No___Control1000000026; "Document No.")
                {
                }
                column(Customer_Name_Control1000000027; Customer.Name)
                {
                }
                column(Sales_Invoice_Line__Sell_to_Customer_No___Control1000000028; "Sell-to Customer No.")
                {
                }
                column(SalesInvHeader__Currency_Code__Control1000000036; SalesInvHeader."Currency Code")
                {
                }
                column(Total_for_Customer_Caption; Total_for_Customer_CaptionLbl)
                {
                }
                column(Sales_Invoice_Line_Line_No_; "Line No.")
                {
                }
                column(Sales_Invoice_Line_Amount_Including_VAT; "Amount Including VAT")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    UnitPrice := 0;
                    //IF Customer.GET("Sales Invoice Line"."Sell-to Customer No.") THEN ;
                    if "Sales Invoice Header"."Currency Code" = '' then begin
                        InvAmount := "Sales Invoice Line"."Amount Including VAT";

                        UnitPrice := "Sales Invoice Line"."Unit Price";
                        VatAmount := "Sales Invoice Line"."Amount Including VAT" - "Sales Invoice Line".Amount;
                        DiscAmount := "Sales Invoice Line"."Line Discount Amount";
                        TotQty := TotQty + "Sales Invoice Line".Quantity;
                    end else begin
                        InvAmount :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                            "Sales Invoice Line"."Amount Including VAT", "Sales Invoice Header"."Currency Factor");
                        UnitPrice :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                            "Sales Invoice Line"."Unit Price", "Sales Invoice Header"."Currency Factor");
                        VatAmount :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                            ("Sales Invoice Line"."Amount Including VAT" - "Sales Invoice Line".Amount), "Sales Invoice Header"."Currency Factor");
                        DiscAmount :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                            "Sales Invoice Line"."Line Discount Amount", "Sales Invoice Header"."Currency Factor");
                        TotQty := TotQty + "Sales Invoice Line".Quantity;
                    end;

                    if Customer.Get("Sales Invoice Line"."Sell-to Customer No.") then;
                    if "Sales Invoice Header".Get("Sales Invoice Line"."Document No.") then begin
                        OrderNo := "Sales Invoice Header"."Order No.";
                        CurrancyCode := "Sales Invoice Header"."Currency Code";
                    end;
                    locationcode := SalesInvHeader."Location Code";
                    GenBusPstngrup := "Sales Invoice Line"."Gen. Bus. Posting Group";
                    GenPrdtPstngrup := "Sales Invoice Line"."Gen. Prod. Posting Group";
                end;

                trigger OnPreDataItem()
                begin
                    if ItemFilter <> '' then
                        "Sales Invoice Line".SetFilter("Sales Invoice Line"."No.", ItemFilter);
                    CurrReport.CreateTotals(InvAmount, VatAmount, DiscAmount);

                    SalesInvHeader := "Sales Invoice Header";
                end;
            }

            trigger OnAfterGetRecord()
            begin
                //SalesInvHeader := "Sales Invoice Header";
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(InvAmount, VatAmount, DiscAmount);
                //IF Customer.GET("Sales Invoice Header"."Sell-to Customer No.") THEN ;
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
        SalesInvHeader: Record "Sales Invoice Header";
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
        Sales_RegisterCaptionLbl: Label 'Sales Register';
        Unit_PriceCaptionLbl: Label 'Unit Price';
        DescriptionCaptionLbl: Label 'Description';
        No_CaptionLbl: Label 'No.';
        SalesInvHeader__Posting_Date_CaptionLbl: Label 'Posting Date';
        Order_No_CaptionLbl: Label 'Order No.';
        Sales_Invoice_Line__Unit_of_Measure_CaptionLbl: Label 'UOM';
        QtyCaptionLbl: Label 'Qty';
        DiscAmount_Control1000000012CaptionLbl: Label 'Discount Amt';
        Posted_Invoice_No_CaptionLbl: Label 'Posted Invoice No.';
        Customer_NameCaptionLbl: Label 'Customer Name';
        Customer_No_CaptionLbl: Label 'Customer No.';
        VatAmount_Control1000000000CaptionLbl: Label 'Vat Amount';
        SalesInvHeader__Currency_Code_CaptionLbl: Label 'Curr';
        Posting_DateCaptionLbl: Label 'Posting Date';
        Order_No_Caption_Control1000000023Lbl: Label 'Order No.';
        Posted_Invoice_No_Caption_Control1000000011Lbl: Label 'Posted Invoice No.';
        Customer_No_Caption_Control1000000010Lbl: Label 'Customer No.';
        Customer_NameCaption_Control1000000025Lbl: Label 'Customer Name';
        SalesInvHeader__Currency_Code__Control1000000036CaptionLbl: Label 'Curr';
        TotalCaptionLbl: Label 'Total';
        Grand_TotalCaptionLbl: Label 'Grand Total';
        Total_for_Customer_CaptionLbl: Label 'Total for Customer:';
        OrderNo: Code[10];
        CurrancyCode: Code[10];
        locationcode: Code[10];
        GenPrdtPstngrup: Code[10];
        GenBusPstngrup: Code[10];
}

