report 50020 "Purchase Returns Register"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PurchaseReturnsRegister.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem("Purch. Cr. Memo Hdr."; "Purch. Cr. Memo Hdr.")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "Buy-from Vendor No.", "No.", "Posting Date";
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
            column(Purch__Cr__Memo_Hdr___GETFILTERS; "Purch. Cr. Memo Hdr.".GetFilters)
            {
            }
            column(AmountCaption; AmountCaption)
            {
            }
            column(AmountCaption_Control1000000005; AmountCaption)
            {
            }
            column(InvAmount; InvAmount)
            {
            }
            column(VatAmount; VatAmount)
            {
            }
            column(InvAmount_Control1000000019; InvAmount)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Purchase_Returns_RegisterCaption; Purchase_Returns_RegisterCaptionLbl)
            {
            }
            column(Unit_CostCaption; Unit_CostCaptionLbl)
            {
            }
            column(QtyCaption; QtyCaptionLbl)
            {
            }
            column(Currency_Code; PurchInvHeader."Currency Code")
            {
            }
            column(DescriptionCaption; DescriptionCaptionLbl)
            {
            }
            column(No_Caption; No_CaptionLbl)
            {
            }
            column(PurchInvHeader__Posting_Date_Caption; PurchInvHeader__Posting_Date_CaptionLbl)
            {
            }
            column(Purch__Cr__Memo_Line__Unit_of_Measure_Caption; Purch__Cr__Memo_Line__Unit_of_Measure_CaptionLbl)
            {
            }
            column(Posted_Invoice_No_Caption; Posted_Invoice_No_CaptionLbl)
            {
            }
            column(Purch__Cr__Memo_Line__Location_Code_Caption; "Purch. Cr. Memo Line".FieldCaption("Location Code"))
            {
            }
            column(Vendor_No_Caption; Vendor_No_CaptionLbl)
            {
            }
            column(Vendor_NameCaption; Vendor_NameCaptionLbl)
            {
            }
            column(VatAmount_Control1000000018Caption; VatAmount_Control1000000018CaptionLbl)
            {
            }
            column(PurchInvHeader__Currency_Code_Caption; PurchInvHeader__Currency_Code_CaptionLbl)
            {
            }
            column(Posting_DateCaption; Posting_DateCaptionLbl)
            {
            }
            column(Vendor_No_Caption_Control1000000010; Vendor_No_Caption_Control1000000010Lbl)
            {
            }
            column(Posted_Invoice_No_Caption_Control1000000011; Posted_Invoice_No_Caption_Control1000000011Lbl)
            {
            }
            column(Vendor_NameCaption_Control1000000025; Vendor_NameCaption_Control1000000025Lbl)
            {
            }
            column(PurchInvHeader__Currency_Code__Control1000000037Caption; PurchInvHeader__Currency_Code__Control1000000037CaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Grand_TotalCaption; Grand_TotalCaptionLbl)
            {
            }
            column(Purch__Cr__Memo_Hdr__No_; "No.")
            {
            }
            column(ShowDetails; ShowDetails)
            {
            }
            dataitem("Purch. Cr. Memo Line"; "Purch. Cr. Memo Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Line No.") WHERE("Amount Including VAT" = FILTER(> 0));
                RequestFilterHeading = 'Purch. Cr. Memo Line';
                column(Purch__Cr__Memo_Line__No__; "No.")
                {
                }
                column(Purch__Cr__Memo_Line_Description; Description)
                {
                }
                column(UnitCost; UnitCost)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(Purch__Cr__Memo_Line_Quantity; Quantity)
                {
                }
                column(InvAmount_Control12; InvAmount)
                {
                }
                column(PurchInvHeader__Posting_Date_; PurchInvHeader."Posting Date")
                {
                }
                column(Purch__Cr__Memo_Line__Unit_of_Measure_; "Unit of Measure")
                {
                }
                column(Vendor_Name; Vendor.Name)
                {
                }
                column(Purch__Cr__Memo_Line__Document_No__; "Document No.")
                {
                }
                column(Purch__Cr__Memo_Line__Location_Code_; "Location Code")
                {
                }
                column(Purch__Cr__Memo_Line__Buy_from_Vendor_No__; "Buy-from Vendor No.")
                {
                }
                column(VatAmount_Control1000000018; VatAmount)
                {
                }
                column(PurchInvHeader__Currency_Code_; PurchInvHeader."Currency Code")
                {
                }
                column(InvAmount_Control1000000006; InvAmount)
                {
                }
                column(VatAmount_Control1000000033; VatAmount)
                {
                }
                column(InvAmount_Control1000000014; InvAmount)
                {
                }
                column(PurchInvHeader__Posting_Date__Control1000000015; PurchInvHeader."Posting Date")
                {
                }
                column(Vendor_Name_Control1000000027; Vendor.Name)
                {
                }
                column(Purch__Cr__Memo_Line__Buy_from_Vendor_No___Control1000000028; "Buy-from Vendor No.")
                {
                }
                column(Purch__Cr__Memo_Line__Document_No___Control1000000026; "Document No.")
                {
                }
                column(PurchInvHeader__Currency_Code__Control1000000037; PurchInvHeader."Currency Code")
                {
                }
                column(Total_for_Vendor_Caption; Total_for_Vendor_CaptionLbl)
                {
                }
                column(Purch__Cr__Memo_Line_Line_No_; "Line No.")
                {
                }
                column(PurchCrMemoLineDocumentNo; "Purch. Cr. Memo Line"."Document No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    UnitCost := 0;


                    if "Purch. Cr. Memo Hdr."."Currency Code" = '' then begin
                        InvAmount := "Purch. Cr. Memo Line"."Amount Including VAT";
                        UnitCost := "Purch. Cr. Memo Line"."Direct Unit Cost";
                        VatAmount := "Purch. Cr. Memo Line"."Amount Including VAT" - "Purch. Cr. Memo Line".Amount;
                        ;
                        TotQty := TotQty + "Purch. Cr. Memo Line".Quantity;
                    end else begin
                        InvAmount :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Purch. Cr. Memo Hdr."."Posting Date", "Purch. Cr. Memo Hdr."."Currency Code",
                            "Purch. Cr. Memo Line"."Amount Including VAT", "Purch. Cr. Memo Hdr."."Currency Factor");
                        UnitCost :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Purch. Cr. Memo Hdr."."Posting Date", "Purch. Cr. Memo Hdr."."Currency Code",
                            "Purch. Cr. Memo Line"."Direct Unit Cost", "Purch. Cr. Memo Hdr."."Currency Factor");
                        VatAmount :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Purch. Cr. Memo Hdr."."Posting Date", "Purch. Cr. Memo Hdr."."Currency Code",
                            ("Purch. Cr. Memo Line"."Amount Including VAT" - "Purch. Cr. Memo Line".Amount), "Purch. Cr. Memo Hdr."."Currency Factor");
                        DiscAmount :=
                          CurrencyExchRate.ExchangeAmtFCYToLCY(
                            "Purch. Cr. Memo Hdr."."Posting Date", "Purch. Cr. Memo Hdr."."Currency Code",
                            "Purch. Cr. Memo Line"."Line Discount Amount", "Purch. Cr. Memo Hdr."."Currency Factor");
                        TotQty := TotQty + "Purch. Cr. Memo Line".Quantity;
                    end;

                    Clear(Vendor);
                    PurchInvHeader.Get("Purch. Cr. Memo Line"."Document No.");
                    CurrReport.ShowOutput(ShowDetails);
                    if Vendor.Get("Purch. Cr. Memo Line"."Buy-from Vendor No.") then;
                end;

                trigger OnPreDataItem()
                begin
                    if ItemFilter <> '' then
                        "Purch. Cr. Memo Line".SetFilter("Purch. Cr. Memo Line"."No.", ItemFilter);
                end;
            }

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(InvAmount, VatAmount);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(OPTIONS)
                {
                    field(ShowDetails; ShowDetails)
                    {
                        ApplicationArea = All;
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

    trigger OnPreReport()
    begin
        if ShowVat then
            AmountCaption := 'Amount Inc. VAT(LCY)'
        else
            AmountCaption := 'Amount(LCY)';
        if "Purch. Cr. Memo Line"."Buy-from Vendor No." = '' then
            CurrReport.Skip;
    end;

    var
        PurchInvHeader: Record "Purch. Cr. Memo Hdr.";
        UserSetup: Record "User Setup";
        ItemRec: Record Item;
        Vendor: Record Vendor;
        CurrencyExchRate: Record "Currency Exchange Rate";
        totalamount: Decimal;
        DiscAmount: Decimal;
        InvDisc: Decimal;
        ItemFilter: Code[250];
        TotQty: Decimal;
        UnitCost: Decimal;
        InvAmount: Decimal;
        VatAmount: Decimal;
        ShowDetails: Boolean;
        ShowVat: Boolean;
        AmountCaption: Text[30];
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Purchase_Returns_RegisterCaptionLbl: Label 'Purchase Returns Register';
        Unit_CostCaptionLbl: Label 'Unit Cost';
        QtyCaptionLbl: Label 'Qty';
        DescriptionCaptionLbl: Label 'Description';
        No_CaptionLbl: Label 'No.';
        PurchInvHeader__Posting_Date_CaptionLbl: Label 'Posting Date';
        Purch__Cr__Memo_Line__Unit_of_Measure_CaptionLbl: Label 'UOM';
        Posted_Invoice_No_CaptionLbl: Label 'Posted Invoice No.';
        Vendor_No_CaptionLbl: Label 'Vendor No.';
        Vendor_NameCaptionLbl: Label 'Vendor Name';
        VatAmount_Control1000000018CaptionLbl: Label 'Vat Amount';
        PurchInvHeader__Currency_Code_CaptionLbl: Label 'Currency Code';
        Posting_DateCaptionLbl: Label 'Posting Date';
        Vendor_No_Caption_Control1000000010Lbl: Label 'Vendor No.';
        Posted_Invoice_No_Caption_Control1000000011Lbl: Label 'Posted Invoice No.';
        Vendor_NameCaption_Control1000000025Lbl: Label 'Vendor Name';
        PurchInvHeader__Currency_Code__Control1000000037CaptionLbl: Label 'Currency Code';
        TotalCaptionLbl: Label 'Total';
        Grand_TotalCaptionLbl: Label 'Grand Total';
        Total_for_Vendor_CaptionLbl: Label 'Total for Vendor:';
}

