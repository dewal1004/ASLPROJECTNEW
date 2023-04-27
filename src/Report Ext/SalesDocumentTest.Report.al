report 50202 "!Sales Document - Test"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/SalesDocumentTest.rdlc';
    Caption = 'Sales Document - Test';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = WHERE("Document Type" = FILTER(<> Quote));
            RequestFilterFields = "Document Type", "No.";
            RequestFilterHeading = 'Sales Document';
            column(Sales_Header_Document_Type; "Document Type")
            {
            }
            column(Sales_Header_No_; "No.")
            {
            }
            dataitem(PageCounter; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(STRSUBSTNO_Text041_CopyText_; StrSubstNo(Text041, CopyText))
                {
                }
                column(CustAddr_1_; CustAddr[1])
                {
                }
                column(CompanyAddr_1_; CompanyAddr[1])
                {
                }
                column(CustAddr_2_; CustAddr[2])
                {
                }
                column(CompanyAddr_2_; CompanyAddr[2])
                {
                }
                column(CustAddr_3_; CustAddr[3])
                {
                }
                column(CompanyAddr_3_; CompanyAddr[3])
                {
                }
                column(CustAddr_4_; CustAddr[4])
                {
                }
                column(CompanyAddr_4_; CompanyAddr[4])
                {
                }
                column(CustAddr_5_; CustAddr[5])
                {
                }
                column(CompanyAddr_5_; CompanyAddr[5])
                {
                }
                column(CustAddr_6_; CustAddr[6])
                {
                }
                column(CompanyAddr_6_; CompanyAddr[6])
                {
                }
                column(CompanyInfo__Phone_No__; CompanyInfo."Phone No.")
                {
                }
                column(CompanyInfo__Fax_No__; CompanyInfo."Fax No.")
                {
                }
                column(Sales_Header___Bill_to_Customer_No__; "Sales Header"."Bill-to Customer No.")
                {
                }
                column(VATNoText; VATNoText)
                {
                }
                column(Sales_Header___VAT_Registration_No__; "Sales Header"."VAT Registration No.")
                {
                }
                column(Sales_Header___Shipment_Date_; "Sales Header"."Shipment Date")
                {
                }
                column(SalesPersonText; SalesPersonText)
                {
                }
                column(SalesPurchPerson_Name; SalesPurchPerson.Name)
                {
                }
                column(Sales_Header___No__; "Sales Header"."No.")
                {
                }
                column(ReferenceText; ReferenceText)
                {
                }
                column(Sales_Header___Your_Reference_; "Sales Header"."Your Reference")
                {
                }
                column(Sales_Header___Prices_Including_VAT_; "Sales Header"."Prices Including VAT")
                {
                }
                column(CustAddr_2__Control1000000016; CustAddr[2])
                {
                }
                column(FORMAT__Sales_Header___Document_Date__0_4_; Format("Sales Header"."Document Date", 0, 4))
                {
                }
                column(Commt_1_; Commt[1])
                {
                }
                column(Commt_3_; Commt[3])
                {
                }
                column(Commt_4_; Commt[4])
                {
                }
                column(Commt_2_; Commt[2])
                {
                }
                column(SalesHeader__Container_Code_; SalesHeader."Container Code")
                {
                }
                column(SalesHeader__Package_Tracking_No__; SalesHeader."Package Tracking No.")
                {
                }
                column(SalesHeader__Seal_No_; SalesHeader."Seal No")
                {
                }
                column(SalesHeader__Ship_to_Country_Region_Code_; SalesHeader."Ship-to Country/Region Code")
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
                column(STRSUBSTNO_Text014_SalesHeaderFilter_; StrSubstNo(Text014, SalesHeaderFilter))
                {
                }
                column(ShipInvText; ShipInvText)
                {
                }
                column(Sales_Header___Sell_to_Customer_No__; "Sales Header"."Sell-to Customer No.")
                {
                }
                column(ShipToAddr_8_; ShipToAddr[8])
                {
                }
                column(ShipToAddr_7_; ShipToAddr[7])
                {
                }
                column(ShipToAddr_6_; ShipToAddr[6])
                {
                }
                column(ShipToAddr_5_; ShipToAddr[5])
                {
                }
                column(ShipToAddr_4_; ShipToAddr[4])
                {
                }
                column(ShipToAddr_3_; ShipToAddr[3])
                {
                }
                column(ShipToAddr_2_; ShipToAddr[2])
                {
                }
                column(ShipToAddr_1_; ShipToAddr[1])
                {
                }
                column(SellToAddr_8_; SellToAddr[8])
                {
                }
                column(SellToAddr_7_; SellToAddr[7])
                {
                }
                column(SellToAddr_6_; SellToAddr[6])
                {
                }
                column(SellToAddr_5_; SellToAddr[5])
                {
                }
                column(SellToAddr_4_; SellToAddr[4])
                {
                }
                column(SellToAddr_3_; SellToAddr[3])
                {
                }
                column(SellToAddr_2_; SellToAddr[2])
                {
                }
                column(SellToAddr_1_; SellToAddr[1])
                {
                }
                column(Sales_Header___Ship_to_Code_; "Sales Header"."Ship-to Code")
                {
                }
                column(FORMAT__Sales_Header___Document_Type____________Sales_Header___No__; Format("Sales Header"."Document Type") + ' ' + "Sales Header"."No.")
                {
                }
                column(BillToAddr_8_; BillToAddr[8])
                {
                }
                column(BillToAddr_7_; BillToAddr[7])
                {
                }
                column(BillToAddr_6_; BillToAddr[6])
                {
                }
                column(BillToAddr_5_; BillToAddr[5])
                {
                }
                column(BillToAddr_4_; BillToAddr[4])
                {
                }
                column(BillToAddr_3_; BillToAddr[3])
                {
                }
                column(BillToAddr_2_; BillToAddr[2])
                {
                }
                column(BillToAddr_1_; BillToAddr[1])
                {
                }
                column(Sales_Header___Bill_to_Customer_No___Control11; "Sales Header"."Bill-to Customer No.")
                {
                }
                column(Sales_Header___Salesperson_Code_; "Sales Header"."Salesperson Code")
                {
                }
                column(Sales_Header___Your_Reference__Control39; "Sales Header"."Your Reference")
                {
                }
                column(Sales_Header___Customer_Posting_Group_; "Sales Header"."Customer Posting Group")
                {
                }
                column(Sales_Header___Posting_Date_; "Sales Header"."Posting Date")
                {
                }
                column(Sales_Header___Document_Date_; "Sales Header"."Document Date")
                {
                }
                column(Sales_Header___Prices_Including_VAT__Control192; "Sales Header"."Prices Including VAT")
                {
                }
                column(Sales_Header___Payment_Terms_Code_; "Sales Header"."Payment Terms Code")
                {
                }
                column(Sales_Header___Payment_Discount___; "Sales Header"."Payment Discount %")
                {
                }
                column(Sales_Header___Due_Date_; "Sales Header"."Due Date")
                {
                }
                column(Sales_Header___Customer_Disc__Group_; "Sales Header"."Customer Disc. Group")
                {
                }
                column(Sales_Header___Pmt__Discount_Date_; "Sales Header"."Pmt. Discount Date")
                {
                }
                column(Sales_Header___Invoice_Disc__Code_; "Sales Header"."Invoice Disc. Code")
                {
                }
                column(Sales_Header___Shipment_Method_Code_; "Sales Header"."Shipment Method Code")
                {
                }
                column(Sales_Header___Payment_Method_Code_; "Sales Header"."Payment Method Code")
                {
                }
                column(Sales_Header___Customer_Posting_Group__Control104; "Sales Header"."Customer Posting Group")
                {
                }
                column(Sales_Header___Posting_Date__Control105; "Sales Header"."Posting Date")
                {
                }
                column(Sales_Header___Document_Date__Control106; "Sales Header"."Document Date")
                {
                }
                column(Sales_Header___Order_Date_; "Sales Header"."Order Date")
                {
                }
                column(Sales_Header___Shipment_Date__Control45; "Sales Header"."Shipment Date")
                {
                }
                column(Sales_Header___Prices_Including_VAT__Control194; "Sales Header"."Prices Including VAT")
                {
                }
                column(Sales_Header___Payment_Terms_Code__Control18; "Sales Header"."Payment Terms Code")
                {
                }
                column(Sales_Header___Due_Date__Control19; "Sales Header"."Due Date")
                {
                }
                column(Sales_Header___Pmt__Discount_Date__Control22; "Sales Header"."Pmt. Discount Date")
                {
                }
                column(Sales_Header___Payment_Discount____Control23; "Sales Header"."Payment Discount %")
                {
                }
                column(Sales_Header___Payment_Method_Code__Control26; "Sales Header"."Payment Method Code")
                {
                }
                column(Sales_Header___Shipment_Method_Code__Control37; "Sales Header"."Shipment Method Code")
                {
                }
                column(Sales_Header___Customer_Disc__Group__Control100; "Sales Header"."Customer Disc. Group")
                {
                }
                column(Sales_Header___Invoice_Disc__Code__Control102; "Sales Header"."Invoice Disc. Code")
                {
                }
                column(Sales_Header___Customer_Posting_Group__Control130; "Sales Header"."Customer Posting Group")
                {
                }
                column(Sales_Header___Posting_Date__Control131; "Sales Header"."Posting Date")
                {
                }
                column(Sales_Header___Document_Date__Control132; "Sales Header"."Document Date")
                {
                }
                column(Sales_Header___Prices_Including_VAT__Control196; "Sales Header"."Prices Including VAT")
                {
                }
                column(Sales_Header___Applies_to_Doc__Type_; "Sales Header"."Applies-to Doc. Type")
                {
                }
                column(Sales_Header___Applies_to_Doc__No__; "Sales Header"."Applies-to Doc. No.")
                {
                }
                column(Sales_Header___Customer_Posting_Group__Control136; "Sales Header"."Customer Posting Group")
                {
                }
                column(Sales_Header___Posting_Date__Control137; "Sales Header"."Posting Date")
                {
                }
                column(Sales_Header___Document_Date__Control138; "Sales Header"."Document Date")
                {
                }
                column(Sales_Header___Prices_Including_VAT__Control198; "Sales Header"."Prices Including VAT")
                {
                }
                column(CompanyInfo__Phone_No__Caption; CompanyInfo__Phone_No__CaptionLbl)
                {
                }
                column(CompanyInfo__Fax_No__Caption; CompanyInfo__Fax_No__CaptionLbl)
                {
                }
                column(Sales_Header___Bill_to_Customer_No__Caption; Sales_Header___Bill_to_Customer_No__CaptionLbl)
                {
                }
                column(Sales_Header___Shipment_Date_Caption; "Sales Header".FieldCaption("Shipment Date"))
                {
                }
                column(Order_No_Caption; Order_No_CaptionLbl)
                {
                }
                column(Sales_Header___Prices_Including_VAT_Caption; "Sales Header".FieldCaption("Prices Including VAT"))
                {
                }
                column(To_Caption; To_CaptionLbl)
                {
                }
                column(Date_Caption; Date_CaptionLbl)
                {
                }
                column(SalesHeader__Container_Code_Caption; SalesHeader__Container_Code_CaptionLbl)
                {
                }
                column(SalesHeader__Package_Tracking_No__Caption; SalesHeader__Package_Tracking_No__CaptionLbl)
                {
                }
                column(SalesHeader__Seal_No_Caption; SalesHeader__Seal_No_CaptionLbl)
                {
                }
                column(SalesHeader__Ship_to_Country_Region_Code_Caption; SalesHeader__Ship_to_Country_Region_Code_CaptionLbl)
                {
                }
                column(Sales_Document___TestCaption; Sales_Document___TestCaptionLbl)
                {
                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
                {
                }
                column(Sales_Header___Sell_to_Customer_No__Caption; "Sales Header".FieldCaption("Sell-to Customer No."))
                {
                }
                column(Ship_toCaption; Ship_toCaptionLbl)
                {
                }
                column(Sell_toCaption; Sell_toCaptionLbl)
                {
                }
                column(Sales_Header___Ship_to_Code_Caption; "Sales Header".FieldCaption("Ship-to Code"))
                {
                }
                column(Bill_toCaption; Bill_toCaptionLbl)
                {
                }
                column(Sales_Header___Bill_to_Customer_No___Control11Caption; "Sales Header".FieldCaption("Bill-to Customer No."))
                {
                }
                column(Sales_Header___Salesperson_Code_Caption; "Sales Header".FieldCaption("Salesperson Code"))
                {
                }
                column(Sales_Header___Your_Reference__Control39Caption; "Sales Header".FieldCaption("Your Reference"))
                {
                }
                column(Sales_Header___Customer_Posting_Group_Caption; "Sales Header".FieldCaption("Customer Posting Group"))
                {
                }
                column(Sales_Header___Posting_Date_Caption; "Sales Header".FieldCaption("Posting Date"))
                {
                }
                column(Sales_Header___Document_Date_Caption; "Sales Header".FieldCaption("Document Date"))
                {
                }
                column(Sales_Header___Prices_Including_VAT__Control192Caption; "Sales Header".FieldCaption("Prices Including VAT"))
                {
                }
                column(Sales_Header___Payment_Terms_Code_Caption; "Sales Header".FieldCaption("Payment Terms Code"))
                {
                }
                column(Sales_Header___Payment_Discount___Caption; "Sales Header".FieldCaption("Payment Discount %"))
                {
                }
                column(Sales_Header___Due_Date_Caption; "Sales Header".FieldCaption("Due Date"))
                {
                }
                column(Sales_Header___Customer_Disc__Group_Caption; "Sales Header".FieldCaption("Customer Disc. Group"))
                {
                }
                column(Sales_Header___Pmt__Discount_Date_Caption; "Sales Header".FieldCaption("Pmt. Discount Date"))
                {
                }
                column(Sales_Header___Invoice_Disc__Code_Caption; "Sales Header".FieldCaption("Invoice Disc. Code"))
                {
                }
                column(Sales_Header___Shipment_Method_Code_Caption; "Sales Header".FieldCaption("Shipment Method Code"))
                {
                }
                column(Sales_Header___Payment_Method_Code_Caption; "Sales Header".FieldCaption("Payment Method Code"))
                {
                }
                column(Sales_Header___Customer_Posting_Group__Control104Caption; "Sales Header".FieldCaption("Customer Posting Group"))
                {
                }
                column(Sales_Header___Posting_Date__Control105Caption; "Sales Header".FieldCaption("Posting Date"))
                {
                }
                column(Sales_Header___Document_Date__Control106Caption; "Sales Header".FieldCaption("Document Date"))
                {
                }
                column(Sales_Header___Order_Date_Caption; "Sales Header".FieldCaption("Order Date"))
                {
                }
                column(Sales_Header___Shipment_Date__Control45Caption; "Sales Header".FieldCaption("Shipment Date"))
                {
                }
                column(Sales_Header___Prices_Including_VAT__Control194Caption; "Sales Header".FieldCaption("Prices Including VAT"))
                {
                }
                column(Sales_Header___Payment_Terms_Code__Control18Caption; "Sales Header".FieldCaption("Payment Terms Code"))
                {
                }
                column(Sales_Header___Payment_Discount____Control23Caption; "Sales Header".FieldCaption("Payment Discount %"))
                {
                }
                column(Sales_Header___Due_Date__Control19Caption; "Sales Header".FieldCaption("Due Date"))
                {
                }
                column(Sales_Header___Pmt__Discount_Date__Control22Caption; "Sales Header".FieldCaption("Pmt. Discount Date"))
                {
                }
                column(Sales_Header___Shipment_Method_Code__Control37Caption; "Sales Header".FieldCaption("Shipment Method Code"))
                {
                }
                column(Sales_Header___Payment_Method_Code__Control26Caption; "Sales Header".FieldCaption("Payment Method Code"))
                {
                }
                column(Sales_Header___Customer_Disc__Group__Control100Caption; "Sales Header".FieldCaption("Customer Disc. Group"))
                {
                }
                column(Sales_Header___Invoice_Disc__Code__Control102Caption; "Sales Header".FieldCaption("Invoice Disc. Code"))
                {
                }
                column(Sales_Header___Customer_Posting_Group__Control130Caption; "Sales Header".FieldCaption("Customer Posting Group"))
                {
                }
                column(Sales_Header___Posting_Date__Control131Caption; "Sales Header".FieldCaption("Posting Date"))
                {
                }
                column(Sales_Header___Document_Date__Control132Caption; "Sales Header".FieldCaption("Document Date"))
                {
                }
                column(Sales_Header___Prices_Including_VAT__Control196Caption; "Sales Header".FieldCaption("Prices Including VAT"))
                {
                }
                column(Sales_Header___Applies_to_Doc__Type_Caption; "Sales Header".FieldCaption("Applies-to Doc. Type"))
                {
                }
                column(Sales_Header___Applies_to_Doc__No__Caption; "Sales Header".FieldCaption("Applies-to Doc. No."))
                {
                }
                column(Sales_Header___Customer_Posting_Group__Control136Caption; "Sales Header".FieldCaption("Customer Posting Group"))
                {
                }
                column(Sales_Header___Posting_Date__Control137Caption; "Sales Header".FieldCaption("Posting Date"))
                {
                }
                column(Sales_Header___Document_Date__Control138Caption; "Sales Header".FieldCaption("Document Date"))
                {
                }
                column(Sales_Header___Prices_Including_VAT__Control198Caption; "Sales Header".FieldCaption("Prices Including VAT"))
                {
                }
                column(PageCounter_Number; Number)
                {
                }
                dataitem(DimensionLoop1; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                    column(DimText; DimText)
                    {
                    }
                    column(DimText_Control162; DimText)
                    {
                    }
                    column(Header_DimensionsCaption; Header_DimensionsCaptionLbl)
                    {
                    }
                    column(DimensionLoop1_Number; Number)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        if Number = 1 then begin
                            if not DocDim1.Find('-') then
                                CurrReport.Break;
                        end else
                            if not Continue then
                                CurrReport.Break;

                        Clear(DimText);
                        Continue := false;
                        repeat
                            OldDimText := DimText;
                            if DimText = '' then
                                DimText := StrSubstNo('%1 - %2', DocDim1."Dimension Code", DocDim1."Dimension Value Code")
                            else
                                DimText :=
                                  StrSubstNo(
                                    '%1; %2 - %3', DimText, DocDim1."Dimension Code", DocDim1."Dimension Value Code");
                            if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                DimText := OldDimText;
                                Continue := true;
                                exit;
                            end;
                        until (DocDim1.Next = 0);
                    end;

                    trigger OnPreDataItem()
                    begin
                        if not ShowDim then
                            CurrReport.Break;
                    end;
                }
                dataitem(HeaderErrorCounter; "Integer")
                {
                    DataItemTableView = SORTING(Number);
                    column(ErrorText_Number_; ErrorText[Number])
                    {
                    }
                    column(ErrorText_Number_Caption; ErrorText_Number_CaptionLbl)
                    {
                    }
                    column(HeaderErrorCounter_Number; Number)
                    {
                    }

                    trigger OnPostDataItem()
                    begin
                        ErrorCounter := 0;
                    end;

                    trigger OnPreDataItem()
                    begin
                        SetRange(Number, 1, ErrorCounter);
                    end;
                }
                dataitem("Sales Line"; "Sales Line")
                {
                    DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                    DataItemLinkReference = "Sales Header";
                    DataItemTableView = SORTING("Document Type", "Document No.", Type, "Item Category Code", "Posting Group");
                    column(ItcatDesc; ItcatDesc)
                    {
                    }
                    column(Sales_Line_Quantity; Quantity)
                    {
                    }
                    column(Sales_Line_Description; Description)
                    {
                    }
                    column(Sales_Line_Packing; Packing)
                    {
                    }
                    column(Sales_Line_Quantity_Control1000000049; Quantity)
                    {
                    }
                    column(Sales_Line_Quantity_Control1000000064; Quantity)
                    {
                    }
                    column(Inv__Discount_Amount_; -"Inv. Discount Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(Sales_Line__Line_Amount_; "Line Amount")
                    {
                        AutoFormatExpression = "Currency Code";
                        AutoFormatType = 1;
                    }
                    column(TotalText; TotalText)
                    {
                    }
                    column(Line_Amount_____Inv__Discount_Amount_; "Line Amount" - "Inv. Discount Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(Line_Amount_____Inv__Discount_Amount__Control79; "Line Amount" - "Inv. Discount Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmount; VATAmount)
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(TotalExclVATText; TotalExclVATText)
                    {
                    }
                    column(VATAmountLine_VATAmountText; VATAmountLine.VATAmountText)
                    {
                    }
                    column(Line_Amount_____Inv__Discount_Amount____VATAmount; "Line Amount" - "Inv. Discount Amount" + VATAmount)
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(TotalInclVATText; TotalInclVATText)
                    {
                    }
                    column(VATDiscountAmount; -VATDiscountAmount)
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(TotalExclVATText_Control186; TotalExclVATText)
                    {
                    }
                    column(VATBaseAmount___VATAmount; VATBaseAmount + VATAmount)
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmount_Control188; VATAmount)
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine_VATAmountText_Control189; VATAmountLine.VATAmountText)
                    {
                    }
                    column(VATBaseAmount; VATBaseAmount)
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(TotalInclVATText_Control191; TotalInclVATText)
                    {
                    }
                    column(PalletsCaption; PalletsCaptionLbl)
                    {
                    }
                    column(Qty_KgsCaption; Qty_KgsCaptionLbl)
                    {
                    }
                    column(DescriptionCaption; DescriptionCaptionLbl)
                    {
                    }
                    column(TotalCaption; TotalCaptionLbl)
                    {
                    }
                    column(RegardsCaption; RegardsCaptionLbl)
                    {
                    }
                    column(Grand_TotalCaption; Grand_TotalCaptionLbl)
                    {
                    }
                    column(Inv__Discount_Amount_Caption; Inv__Discount_Amount_CaptionLbl)
                    {
                    }
                    column(SubtotalCaption; SubtotalCaptionLbl)
                    {
                    }
                    column(VATDiscountAmountCaption; VATDiscountAmountCaptionLbl)
                    {
                    }
                    column(Sales_Line_Document_Type; "Document Type")
                    {
                    }
                    column(Sales_Line_Document_No_; "Document No.")
                    {
                    }
                    column(Sales_Line_Line_No_; "Line No.")
                    {
                    }
                    column(Sales_Line_Item_Category_Code; "Item Category Code")
                    {
                    }
                    column(Sales_Line_Posting_Group; "Posting Group")
                    {
                    }
                    dataitem(DimensionLoop2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText_Control159; DimText)
                        {
                        }
                        column(DimText_Control161; DimText)
                        {
                        }
                        column(Line_DimensionsCaption; Line_DimensionsCaptionLbl)
                        {
                        }
                        column(DimensionLoop2_Number; Number)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then begin
                                if not DocDim2.Find('-') then
                                    CurrReport.Break;
                            end else
                                if not Continue then
                                    CurrReport.Break;

                            Clear(DimText);
                            Continue := false;
                            repeat
                                OldDimText := DimText;
                                if DimText = '' then
                                    DimText := StrSubstNo('%1 - %2', DocDim2."Dimension Code", DocDim2."Dimension Value Code")
                                else
                                    DimText :=
                                      StrSubstNo(
                                        '%1; %2 - %3', DimText, DocDim2."Dimension Code", DocDim2."Dimension Value Code");
                                if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                    DimText := OldDimText;
                                    Continue := true;
                                    exit;
                                end;
                            until (DocDim2.Next = 0);
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowDim then
                                CurrReport.Break;
                        end;
                    }
                    dataitem(LineErrorCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(ErrorText_Number__Control97; ErrorText[Number])
                        {
                        }
                        column(ErrorText_Number__Control97Caption; ErrorText_Number__Control97CaptionLbl)
                        {
                        }
                        column(LineErrorCounter_Number; Number)
                        {
                        }

                        trigger OnPostDataItem()
                        begin
                            ErrorCounter := 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            SetRange(Number, 1, ErrorCounter);
                        end;
                    }

                    trigger OnAfterGetRecord()
                    var
                        TableID: array[10] of Integer;
                        No: array[10] of Code[20];
                    begin
                        DocDim2.SetRange("Table ID", DATABASE::"Sales Line");
                        //DocDim2.SETRANGE("Document Type","Sales Line"."Document Type");
                        DocDim2.SetRange("No.", "Sales Line"."Document No.");
                        //DocDim2.SETRANGE("Line No.","Sales Line"."Line No.");
                        //DimMgt.CopyDocDimToDocDim(DocDim2,TempDocDim);

                        if "Document Type" = "Document Type"::Invoice then begin
                            if ("Qty. to Ship" <> Quantity) and ("Shipment No." = '') then
                                AddError(StrSubstNo(Text015, FieldCaption("Qty. to Ship"), Quantity));
                            if "Qty. to Invoice" <> Quantity then
                                AddError(StrSubstNo(Text015, FieldCaption("Qty. to Invoice"), Quantity));
                        end;

                        if not "Sales Header".Ship then
                            "Qty. to Ship" := 0;
                        if not "Sales Header".Receive then
                            "Return Qty. to Receive" := 0;

                        if ("Document Type" = "Document Type"::Invoice) and ("Shipment No." <> '') then begin
                            "Quantity Shipped" := Quantity;
                            "Qty. to Ship" := 0;
                        end;

                        if "Sales Header".Invoice then begin
                            if "Document Type" = "Document Type"::"Credit Memo" then
                                MaxQtyToBeInvoiced := "Return Qty. to Receive" + "Return Qty. Received" - "Quantity Invoiced"
                            else
                                MaxQtyToBeInvoiced := "Qty. to Ship" + "Quantity Shipped" - "Quantity Invoiced";
                            if Abs("Qty. to Invoice") > Abs(MaxQtyToBeInvoiced) then
                                "Qty. to Invoice" := MaxQtyToBeInvoiced;
                        end else
                            "Qty. to Invoice" := 0;

                        if "Gen. Prod. Posting Group" <> '' then begin
                            if ("Sales Header"."Document Type" = "Sales Header"."Document Type"::"Credit Memo") and
                               ("Sales Header"."Applies-to Doc. Type" = "Sales Header"."Applies-to Doc. Type"::Invoice) and
                               ("Sales Header"."Applies-to Doc. No." <> '')
                            then begin
                                CustLedgEntry.SetCurrentKey("Document Type", "Document No.", "Customer No.");
                                CustLedgEntry.SetRange("Customer No.", "Sales Header"."Bill-to Customer No.");
                                CustLedgEntry.SetRange("Document Type", CustLedgEntry."Document Type"::Invoice);
                                CustLedgEntry.SetRange("Document No.", "Sales Header"."Applies-to Doc. No.");
                                if (not CustLedgEntry.Find('+')) and (not ApplNoError) then begin
                                    ApplNoError := true;
                                    AddError(
                                      StrSubstNo(
                                        Text016,
                                        "Sales Header".FieldCaption("Applies-to Doc. No."), "Sales Header"."Applies-to Doc. No."));
                                end;
                                VATDate := CustLedgEntry."Posting Date";
                            end else
                                VATDate := "Sales Header"."Posting Date";

                            if not VATPostingSetup.Get("VAT Bus. Posting Group", "VAT Prod. Posting Group") then
                                AddError(
                                  StrSubstNo(
                                    Text017,
                                    VATPostingSetup.TableCaption, "VAT Bus. Posting Group", "VAT Prod. Posting Group"));
                            if VATPostingSetup."VAT Calculation Type" = VATPostingSetup."VAT Calculation Type"::"Reverse Charge VAT" then
                                if ("Sales Header"."VAT Registration No." = '') and (not VATNoError) then begin
                                    VATNoError := true;
                                    AddError(
                                      StrSubstNo(
                                        Text035, "Sales Header".FieldCaption("VAT Registration No.")));
                                end;
                        end;

                        if Quantity <> 0 then begin
                            if "No." = '' then
                                AddError(StrSubstNo(Text019, Type, FieldCaption("No.")));
                            if Type = 0 then
                                AddError(StrSubstNo(Text006, FieldCaption(Type)));
                        end else
                            if Amount <> 0 then
                                AddError(
                                  StrSubstNo(Text020, FieldCaption(Amount), FieldCaption(Quantity)));

                        if "Drop Shipment" then begin
                            if Type <> Type::Item then
                                AddError(Text021);
                            if ("Qty. to Ship" <> 0) and ("Purch. Order Line No." = 0) then begin
                                AddError(StrSubstNo(Text022, "Line No."));
                                AddError(Text023);
                            end;
                        end;

                        SalesLine := "Sales Line";
                        if "Document Type" <> "Document Type"::"Credit Memo" then begin
                            SalesLine."Qty. to Ship" := -SalesLine."Qty. to Ship";
                            SalesLine."Qty. to Invoice" := -SalesLine."Qty. to Invoice";
                        end;

                        RemQtyToBeInvoiced := SalesLine."Qty. to Invoice";

                        case "Document Type" of
                            "Document Type"::"Credit Memo":
                                if Abs(RemQtyToBeInvoiced) > Abs("Return Qty. to Receive") then
                                    CheckRcptLines(SalesLine, "Sales Line");
                            "Document Type"::Order, "Document Type"::Invoice:
                                if Abs(RemQtyToBeInvoiced) > Abs("Qty. to Ship") then
                                    CheckShptLines(SalesLine, "Sales Line");
                        end;

                        if (Type >= Type::"G/L Account") and ("Qty. to Invoice" <> 0) then begin
                            if not GenPostingSetup.Get("Gen. Bus. Posting Group", "Gen. Prod. Posting Group") then
                                AddError(
                                  StrSubstNo(
                                    Text017,
                                    GenPostingSetup.TableCaption, "Gen. Bus. Posting Group", "Gen. Prod. Posting Group"));
                            if not VATPostingSetup.Get("VAT Bus. Posting Group", "VAT Prod. Posting Group") then
                                AddError(
                                  StrSubstNo(
                                    Text017,
                                    VATPostingSetup.TableCaption, "VAT Bus. Posting Group", "VAT Prod. Posting Group"));
                        end;

                        case Type of
                            Type::"G/L Account":
                                begin
                                    if ("No." = '') and (Amount = 0) then
                                        exit;

                                    if "No." <> '' then
                                        if GLAcc.Get("No.") then begin
                                            if GLAcc.Blocked then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    GLAcc.FieldCaption(Blocked), false, GLAcc.TableCaption, "No."));
                                            if not GLAcc."Direct Posting" then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    GLAcc.FieldCaption("Direct Posting"), true, GLAcc.TableCaption, "No."));
                                        end else
                                            AddError(
                                              StrSubstNo(
                                                Text008,
                                                GLAcc.TableCaption, "No."));
                                end;
                            Type::Item:
                                begin
                                    if ("No." = '') and (Quantity = 0) then
                                        exit;

                                    if "No." <> '' then
                                        if Item.Get("No.") then begin
                                            if Item.Blocked then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    Item.FieldCaption(Blocked), false, Item.TableCaption, "No."));
                                            if Item."Costing Method" = Item."Costing Method"::Specific then begin
                                            end;
                                            if Item.Reserve = Item.Reserve::Always then begin
                                                CalcFields("Reserved Quantity");
                                                if "Document Type" = "Document Type"::"Credit Memo" then begin
                                                    if (SignedXX(Quantity) < 0) and (Abs("Reserved Quantity") < Abs("Return Qty. to Receive")) then
                                                        AddError(
                                                          StrSubstNo(
                                                            Text015,
                                                            FieldCaption("Reserved Quantity"), SignedXX("Return Qty. to Receive")));
                                                end else
                                                    if (SignedXX(Quantity) < 0) and (Abs("Reserved Quantity") < Abs("Qty. to Ship")) then
                                                        AddError(
                                                          StrSubstNo(
                                                            Text015,
                                                            FieldCaption("Reserved Quantity"), SignedXX("Qty. to Ship")));
                                            end
                                        end else
                                            AddError(
                                              StrSubstNo(
                                                Text008,
                                                Item.TableCaption, "No."));
                                end;
                            Type::Resource:
                                begin
                                    if ("No." = '') and (Quantity = 0) then
                                        exit;

                                    if "No." <> '' then
                                        if Res.Get("No.") then begin
                                            if Res.Blocked then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    Res.FieldCaption(Blocked), false, Res.TableCaption, "No."));
                                        end else
                                            AddError(
                                              StrSubstNo(
                                                Text008,
                                                Res.TableCaption, "No."));
                                end;
                            Type::"Fixed Asset":
                                begin
                                    if ("No." = '') and (Quantity = 0) then
                                        exit;

                                    if "No." <> '' then
                                        if FA.Get("No.") then begin
                                            if FA.Blocked then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    FA.FieldCaption(Blocked), false, FA.TableCaption, "No."));
                                            if FA.Inactive then
                                                AddError(
                                                  StrSubstNo(
                                                    Text007,
                                                    FA.FieldCaption(Inactive), false, FA.TableCaption, "No."));
                                            if "Depreciation Book Code" = '' then
                                                AddError(StrSubstNo(Text006, FieldCaption("Depreciation Book Code")))
                                            else
                                                if not FADeprBook.Get("No.", "Depreciation Book Code") then
                                                    AddError(
                                                      StrSubstNo(
                                                      Text017,
                                                      FADeprBook.TableCaption, "No.", "Depreciation Book Code"));
                                        end else
                                            AddError(
                                              StrSubstNo(
                                                Text008,
                                                FA.TableCaption, "No."));
                                end;
                        end;

                        //IF NOT DimMgt.CheckDocDimComb(DocDim2) THEN
                        //AddError(DimMgt.GetDimCombErr);

                        TableID[1] := DimMgt.TypeToTableID3(Type);
                        No[1] := "No.";
                        TableID[2] := DATABASE::Job;
                        No[2] := "Job No.";
                        //IF NOT DimMgt.CheckDocDimValuePosting(DocDim2,TableID,No) THEN
                        //AddError(DimMgt.GetDimValuePostingErr);
                    end;

                    trigger OnPreDataItem()
                    var
                        SalesLine: Record "Sales Line";
                    begin
                        VATAmountLine.DeleteAll;
                        SalesLine.CalcVATAmountLines(0, "Sales Header", SalesLine, VATAmountLine);
                        VATAmount := VATAmountLine.GetTotalVATAmount;
                        VATBaseAmount := VATAmountLine.GetTotalVATBase;
                        VATDiscountAmount :=
                          VATAmountLine.GetTotalVATDiscount("Sales Header"."Currency Code", SalesHeader."Prices Including VAT");
                        TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;
                        VATNoError := false;
                        ApplNoError := false;
                        CurrReport.CreateTotals("Line Amount", "Inv. Discount Amount");
                    end;
                }
                dataitem(VATCounter; "Integer")
                {
                    DataItemTableView = SORTING(Number);
                    column(VATAmountLine__VAT_Amount_; VATAmountLine."VAT Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__VAT_Base_; VATAmountLine."VAT Base")
                    {
                        AutoFormatExpression = "Sales Line"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Invoice_Discount_Amount_; VATAmountLine."Invoice Discount Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Inv__Disc__Base_Amount_; VATAmountLine."Inv. Disc. Base Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Line_Amount_; VATAmountLine."Line Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__VAT_Amount__Control150; VATAmountLine."VAT Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__VAT_Base__Control151; VATAmountLine."VAT Base")
                    {
                        AutoFormatExpression = "Sales Line"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__VAT___; VATAmountLine."VAT %")
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(VATAmountLine__VAT_Identifier_; VATAmountLine."VAT Identifier")
                    {
                    }
                    column(VATAmountLine__Invoice_Discount_Amount__Control173; VATAmountLine."Invoice Discount Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Inv__Disc__Base_Amount__Control171; VATAmountLine."Inv. Disc. Base Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Line_Amount__Control169; VATAmountLine."Line Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__VAT_Amount__Control175; VATAmountLine."VAT Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__VAT_Base__Control176; VATAmountLine."VAT Base")
                    {
                        AutoFormatExpression = "Sales Line"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Invoice_Discount_Amount__Control177; VATAmountLine."Invoice Discount Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Inv__Disc__Base_Amount__Control178; VATAmountLine."Inv. Disc. Base Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Line_Amount__Control179; VATAmountLine."Line Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__VAT_Amount__Control181; VATAmountLine."VAT Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__VAT_Base__Control182; VATAmountLine."VAT Base")
                    {
                        AutoFormatExpression = "Sales Line"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Invoice_Discount_Amount__Control183; VATAmountLine."Invoice Discount Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Inv__Disc__Base_Amount__Control184; VATAmountLine."Inv. Disc. Base Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__Line_Amount__Control185; VATAmountLine."Line Amount")
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmountLine__VAT_Amount__Control150Caption; VATAmountLine__VAT_Amount__Control150CaptionLbl)
                    {
                    }
                    column(VATAmountLine__VAT_Base__Control151Caption; VATAmountLine__VAT_Base__Control151CaptionLbl)
                    {
                    }
                    column(VATAmountLine__VAT___Caption; VATAmountLine__VAT___CaptionLbl)
                    {
                    }
                    column(VAT_Amount_SpecificationCaption; VAT_Amount_SpecificationCaptionLbl)
                    {
                    }
                    column(VATAmountLine__VAT_Identifier_Caption; VATAmountLine__VAT_Identifier_CaptionLbl)
                    {
                    }
                    column(VATAmountLine__Invoice_Discount_Amount__Control173Caption; VATAmountLine__Invoice_Discount_Amount__Control173CaptionLbl)
                    {
                    }
                    column(VATAmountLine__Inv__Disc__Base_Amount__Control171Caption; VATAmountLine__Inv__Disc__Base_Amount__Control171CaptionLbl)
                    {
                    }
                    column(VATAmountLine__Line_Amount__Control169Caption; VATAmountLine__Line_Amount__Control169CaptionLbl)
                    {
                    }
                    column(ContinuedCaption; ContinuedCaptionLbl)
                    {
                    }
                    column(ContinuedCaption_Control155; ContinuedCaption_Control155Lbl)
                    {
                    }
                    column(TotalCaption_Control158; TotalCaption_Control158Lbl)
                    {
                    }
                    column(VATCounter_Number; Number)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        VATAmountLine.GetLine(Number);
                    end;

                    trigger OnPreDataItem()
                    begin
                        if VATAmount = 0 then
                            CurrReport.Break;
                        SetRange(Number, 1, VATAmountLine.Count);
                        CurrReport.CreateTotals(
                          VATAmountLine."VAT Base", VATAmountLine."VAT Amount", VATAmountLine."Amount Including VAT",
                          VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                          VATAmountLine."Invoice Discount Amount");
                    end;
                }
                dataitem("Item Charge Assignment (Sales)"; "Item Charge Assignment (Sales)")
                {
                    DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("Document No.");
                    DataItemLinkReference = "Sales Line";
                    DataItemTableView = SORTING("Document Type", "Document No.", "Document Line No.", "Line No.");
                    column(Item_Charge_Assignment__Sales___Qty__to_Assign_; "Qty. to Assign")
                    {
                    }
                    column(Item_Charge_Assignment__Sales___Amount_to_Assign_; "Amount to Assign")
                    {
                    }
                    column(Item_Charge_Assignment__Sales___Item_Charge_No__; "Item Charge No.")
                    {
                    }
                    column(SalesLine2_Description; SalesLine2.Description)
                    {
                    }
                    column(SalesLine2_Quantity; SalesLine2.Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(Item_Charge_Assignment__Sales___Item_No__; "Item No.")
                    {
                    }
                    column(Item_Charge_Assignment__Sales___Qty__to_Assign__Control209; "Qty. to Assign")
                    {
                    }
                    column(Item_Charge_Assignment__Sales___Unit_Cost_; "Unit Cost")
                    {
                    }
                    column(Item_Charge_Assignment__Sales___Amount_to_Assign__Control216; "Amount to Assign")
                    {
                    }
                    column(Item_Charge_Assignment__Sales___Qty__to_Assign__Control221; "Qty. to Assign")
                    {
                    }
                    column(Item_Charge_Assignment__Sales___Amount_to_Assign__Control222; "Amount to Assign")
                    {
                    }
                    column(Item_Charge_Assignment__Sales___Qty__to_Assign__Control224; "Qty. to Assign")
                    {
                    }
                    column(Item_Charge_Assignment__Sales___Amount_to_Assign__Control225; "Amount to Assign")
                    {
                    }
                    column(Item_Charge_SpecificationCaption; Item_Charge_SpecificationCaptionLbl)
                    {
                    }
                    column(SalesLine2_DescriptionCaption; SalesLine2_DescriptionCaptionLbl)
                    {
                    }
                    column(SalesLine2_QuantityCaption; SalesLine2_QuantityCaptionLbl)
                    {
                    }
                    column(ContinuedCaption_Control210; ContinuedCaption_Control210Lbl)
                    {
                    }
                    column(TotalCaption_Control220; TotalCaption_Control220Lbl)
                    {
                    }
                    column(ContinuedCaption_Control223; ContinuedCaption_Control223Lbl)
                    {
                    }
                    column(Item_Charge_Assignment__Sales__Document_Type; "Document Type")
                    {
                    }
                    column(Item_Charge_Assignment__Sales__Document_No_; "Document No.")
                    {
                    }
                    column(Item_Charge_Assignment__Sales__Document_Line_No_; "Document Line No.")
                    {
                    }
                    column(Item_Charge_Assignment__Sales__Line_No_; "Line No.")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        if SalesLine2.Get("Document Type", "Document No.", "Document Line No.") then;
                    end;

                    trigger OnPreDataItem()
                    begin
                        if not ShowCostAssignment then
                            CurrReport.Break;
                        CurrReport.CreateTotals("Amount to Assign", "Qty. to Assign");
                    end;
                }
            }

            trigger OnAfterGetRecord()
            var
                TableID: array[10] of Integer;
                No: array[10] of Code[20];
                ShipQtyExist: Boolean;
                InvtPeriodEndDate: Date;
            begin
                DimSetEntry1.SetRange("Dimension Set ID", "Dimension Set ID");

                FormatAddr.SalesHeaderSellTo(SellToAddr, "Sales Header");
                FormatAddr.SalesHeaderBillTo(BillToAddr, "Sales Header");
                //FormatAddr.SalesHeaderShipTo(ShipToAddr,"Sales Header");

                if "Currency Code" = '' then begin
                    GLSetup.TestField("LCY Code");
                    TotalText := StrSubstNo(Text004, GLSetup."LCY Code");
                    TotalExclVATText := StrSubstNo(Text033, GLSetup."LCY Code");
                    TotalInclVATText := StrSubstNo(Text005, GLSetup."LCY Code");
                end else begin
                    TotalText := StrSubstNo(Text004, "Currency Code");
                    TotalExclVATText := StrSubstNo(Text033, "Currency Code");
                    TotalInclVATText := StrSubstNo(Text005, "Currency Code");
                end;

                Invoice := InvOnNextPostReq;
                Ship := ShipReceiveOnNextPostReq;
                Receive := ShipReceiveOnNextPostReq;

                if "Sell-to Customer No." = '' then
                    AddError(StrSubstNo(Text006, FieldCaption("Sell-to Customer No.")))
                else begin
                    if Cust.Get("Sell-to Customer No.") then begin
                        if Cust.Blocked = Cust.Blocked::All then
                            AddError(
                              StrSubstNo(
                                Text007,
                                Cust.FieldCaption(Blocked), false, Cust.TableCaption, "Sell-to Customer No."));
                    end else
                        AddError(
                          StrSubstNo(
                            Text008,
                            Cust.TableCaption, "Sell-to Customer No."));
                end;

                if "Bill-to Customer No." = '' then
                    AddError(StrSubstNo(Text006, FieldCaption("Bill-to Customer No.")))
                else begin
                    if Cust.Get("Bill-to Customer No.") then begin
                        if Cust.Blocked = Cust.Blocked::All then
                            AddError(
                              StrSubstNo(
                                Text007,
                                Cust.FieldCaption(Blocked), false, Cust.TableCaption, "Bill-to Customer No."));
                    end else
                        AddError(
                          StrSubstNo(
                            Text008,
                            Cust.TableCaption, "Bill-to Customer No."));
                end;

                GLSetup.Get;
                SalesSetup.Get;

                if "Posting Date" = 0D then
                    AddError(StrSubstNo(Text006, FieldCaption("Posting Date")))
                else
                    if "Posting Date" <> NormalDate("Posting Date") then
                        AddError(StrSubstNo(Text009, FieldCaption("Posting Date")))
                    else begin
                        if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
                            if UserId <> '' then
                                if UserSetup.Get(UserId) then begin
                                    AllowPostingFrom := UserSetup."Allow Posting From";
                                    AllowPostingTo := UserSetup."Allow Posting To";
                                end;
                            if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
                                AllowPostingFrom := GLSetup."Allow Posting From";
                                AllowPostingTo := GLSetup."Allow Posting To";
                            end;
                            if AllowPostingTo = 0D then
                                AllowPostingTo := 99991231D;
                        end;
                        if ("Posting Date" < AllowPostingFrom) or ("Posting Date" > AllowPostingTo) then
                            AddError(
                              StrSubstNo(
                                Text010, FieldCaption("Posting Date")));
                    end;

                if ("Document Date" <> 0D) then
                    if ("Document Date" <> NormalDate("Document Date")) then
                        AddError(StrSubstNo(Text009, FieldCaption("Document Date")));

                case "Document Type" of
                    "Document Type"::Order:
                        Receive := false;
                    "Document Type"::Invoice:
                        begin
                            Ship := true;
                            Invoice := true;
                            Receive := false;
                        end else
                                Ship := false;
                end;

                if not (Ship or Invoice or Receive) then
                    AddError(
                      StrSubstNo(
                        Text034,
                        FieldCaption(Ship), FieldCaption(Invoice), FieldCaption(Receive)));

                if Invoice then begin
                    SalesLine.Reset;
                    SalesLine.SetRange("Document Type", "Document Type");
                    SalesLine.SetRange("Document No.", "No.");
                    SalesLine.SetFilter(Quantity, '<>0');
                    if "Document Type" in ["Document Type"::Order, "Document Type"::"Credit Memo"] then
                        SalesLine.SetFilter("Qty. to Invoice", '<>0');
                    Invoice := SalesLine.Find('-');
                    if Invoice and (not Ship) and ("Document Type" = "Document Type"::Order) then begin
                        Invoice := false;
                        repeat
                            Invoice := (SalesLine."Quantity Shipped" - SalesLine."Quantity Invoiced") <> 0;
                        until Invoice or (SalesLine.Next = 0);
                    end else
                        if Invoice and (not Receive) and ("Document Type" = "Document Type"::"Credit Memo") then begin
                            Invoice := false;
                            repeat
                                Invoice := (SalesLine."Return Qty. Received" - SalesLine."Quantity Invoiced") <> 0;
                            until Invoice or (SalesLine.Next = 0);
                        end;
                end;

                if Ship then begin
                    SalesLine.Reset;
                    SalesLine.SetRange("Document Type", "Document Type");
                    SalesLine.SetRange("Document No.", "No.");
                    SalesLine.SetFilter(Quantity, '<>0');
                    if "Document Type" = "Document Type"::Order then
                        SalesLine.SetFilter("Qty. to Ship", '<>0');
                    SalesLine.SetRange("Shipment No.", '');
                    Ship := SalesLine.Find('-');
                end;
                if Receive then begin
                    SalesLine.Reset;
                    SalesLine.SetRange("Document Type", "Document Type");
                    SalesLine.SetRange("Document No.", "No.");
                    SalesLine.SetFilter(Quantity, '<>0');
                    SalesLine.SetFilter("Return Qty. to Receive", '<>0');
                    Receive := SalesLine.Find('-');
                end;

                if not (Ship or Invoice or Receive) then
                    AddError(Text012);

                if Invoice then
                    if "Document Type" <> "Document Type"::"Credit Memo" then
                        if "Due Date" = 0D then
                            AddError(StrSubstNo(Text006, FieldCaption("Due Date")));

                if Ship and ("Shipping No." = '') then // Order,Invoice
                    if ("Document Type" = "Document Type"::Order) or
                       (("Document Type" = "Document Type"::Invoice) and SalesSetup."Shipment on Invoice")
                    then
                        if "Shipping No. Series" = '' then
                            AddError(
                              StrSubstNo(
                                Text006,
                                FieldCaption("Shipping No. Series")));

                if Receive and ("Return Receipt No." = '') then
                    if "Return Receipt No. Series" = '' then
                        AddError(
                          StrSubstNo(
                            Text006,
                            FieldCaption("Return Receipt No. Series")));

                if Invoice and ("Posting No." = '') then
                    if "Document Type" in ["Document Type"::Order, "Document Type"::"Credit Memo"] then
                        if "Posting No. Series" = '' then
                            AddError(
                              StrSubstNo(
                                Text006,
                                FieldCaption("Posting No. Series")));

                SalesLine.Reset;
                SalesLine.SetRange("Document Type", "Document Type");
                SalesLine.SetRange("Document No.", "No.");
                SalesLine.SetFilter("Purch. Order Line No.", '<>0');
                if SalesLine.Find('-') then begin
                    DropShipOrder := true;
                    if Ship then
                        repeat
                            if PurchOrderHeader."No." <> SalesLine."Purchase Order No." then begin
                                PurchOrderHeader.Get(PurchOrderHeader."Document Type"::Order, SalesLine."Purchase Order No.");
                                if PurchOrderHeader."Pay-to Vendor No." = '' then
                                    AddError(
                                      StrSubstNo(
                                        Text013,
                                        PurchOrderHeader.FieldCaption("Pay-to Vendor No.")));
                                if PurchOrderHeader."Receiving No." = '' then
                                    if PurchOrderHeader."Receiving No. Series" = '' then
                                        AddError(
                                          StrSubstNo(
                                            Text013,
                                            PurchOrderHeader.FieldCaption("Receiving No. Series")));
                            end;
                        until SalesLine.Next = 0;
                end;

                if "Document Type" in ["Document Type"::Order, "Document Type"::Invoice] then
                    if SalesSetup."Ext. Doc. No. Mandatory" and ("External Document No." = '') then
                        AddError(StrSubstNo(Text006, FieldCaption("External Document No.")));

                //IF NOT DimMgt.CheckDocDimComb(DocDim1) THEN
                //AddError(DimMgt.GetDimCombErr);

                TableID[1] := DATABASE::Customer;
                No[1] := "Bill-to Customer No.";
                TableID[2] := DATABASE::Job;
                //No[2] := "Job No.";
                TableID[3] := DATABASE::"Salesperson/Purchaser";
                No[3] := "Salesperson Code";
                TableID[4] := DATABASE::Campaign;
                No[4] := "Campaign No.";
                TableID[5] := DATABASE::"Responsibility Center";
                No[5] := "Responsibility Center";
                //IF NOT DimMgt.CheckDocDimValuePosting(DocDim1,TableID,No) THEN
                //AddError(DimMgt.GetDimValuePostingErr);

                if "Salesperson Code" = '' then begin
                    Clear(SalesPurchPerson);
                    SalesPersonText := '';
                end else begin
                    SalesPurchPerson.Get("Salesperson Code");
                    SalesPersonText := Text042;
                end;
                if "Your Reference" = '' then
                    ReferenceText := ''
                else
                    ReferenceText := FieldCaption("Your Reference");
                if "VAT Registration No." = '' then
                    VATNoText := ''
                else
                    VATNoText := FieldCaption("VAT Registration No.");
            end;

            trigger OnPreDataItem()
            begin

                CompanyInfo.Get;
                FormatAddr.Company(CompanyAddr, CompanyInfo);
                FormatAddr.SalesHeaderBillTo(CustAddr, "Sales Header");

                SalesHeader.Copy("Sales Header");
                SalesHeader.FilterGroup := 2;
                SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Order);
                if SalesHeader.Find('-') then begin
                    case true of
                        ShipReceiveOnNextPostReq and InvOnNextPostReq:
                            ShipInvText := Text000;
                        ShipReceiveOnNextPostReq:
                            ShipInvText := Text001;
                        InvOnNextPostReq:
                            ShipInvText := Text002;
                    end;
                    ShipInvText := StrSubstNo(Text003, ShipInvText);
                end;
                SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::"Credit Memo");
                if SalesHeader.Find('-') then begin
                    case true of
                        ShipReceiveOnNextPostReq and InvOnNextPostReq:
                            ReceiveInvText := Text018;
                        ShipReceiveOnNextPostReq:
                            ReceiveInvText := Text031;
                        InvOnNextPostReq:
                            ReceiveInvText := Text002;
                    end;
                    ReceiveInvText := StrSubstNo(Text032, ReceiveInvText);
                end;
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

    trigger OnInitReport()
    begin
        GLSetup.Get;
    end;

    trigger OnPreReport()
    begin
        SalesHeaderFilter := "Sales Header".GetFilters;
    end;

    var
        Text000: Label 'Ship and Invoice';
        Text001: Label 'Ship';
        Text002: Label 'Invoice';
        Text003: Label 'Order Posting: %1';
        Text004: Label 'Total %1';
        Text005: Label 'Total %1 Incl. VAT';
        Text006: Label '%1 must be specified.';
        Text007: Label '%1 must be %2 for %3 %4.';
        Text008: Label '%1 %2 does not exist.';
        Text009: Label '%1 must not be a closing date.';
        Text010: Label '%1 is not within your allowed range of posting dates.';
        Text012: Label 'There is nothing to post.';
        Text013: Label '%1 must be entered on the purchase order header.';
        Text014: Label 'Sales Document: %1';
        Text015: Label '%1 must be %2.';
        Text016: Label '%1 %2 does not exist on customer entries.';
        Text017: Label '%1 %2 %3 does not exist.';
        Text018: Label 'Receive and Invoice';
        Text019: Label '%1 %2 must be specified.';
        Text020: Label '%1 must be 0 when %2 is 0.';
        Text021: Label 'Drop shipments are only possible for items.';
        Text022: Label 'You cannot ship sales order line %1 because the line is marked';
        Text023: Label 'as a drop shipment and is not yet associated with a purchase order.';
        Text024: Label 'The %1 on the shipment is not the same as the %1 on the sales header.';
        Text025: Label '%1 must have the same sign as the shipment.';
        Text026: Label 'Shipment %1 was invoiced after you opened it.';
        Text027: Label 'The shipment lines have been deleted.';
        Text031: Label 'Receive';
        Text032: Label 'Credit Memo Posting: %1';
        Text033: Label 'Total %1 Excl. VAT';
        Text034: Label 'Enter "Yes" in %1 and/or %2 and/or %3.';
        Text035: Label 'You must enter the customer''s %1.';
        Text036: Label 'The quantity you are attempting to invoice ';
        Text037: Label 'is greater than the quantity in shipment %1.';
        Text038: Label 'The %1 on the return receipt is not the same as the %1 on the sales header.';
        Text039: Label '%1 must have the same sign as the return receipt.';
        Text040: Label 'The return receipt lines have been deleted.';
        SalesSetup: Record "Sales & Receivables Setup";
        UserSetup: Record "User Setup";
        Cust: Record Customer;
        SalesHeader: Record "Sales Header";
        SalesLine2: Record "Sales Line";
        GLAcc: Record "G/L Account";
        Item: Record Item;
        Res: Record Resource;
        SaleShptLine: Record "Sales Shipment Line";
        ReturnRcptLine: Record "Return Receipt Line";
        PurchOrderHeader: Record "Purchase Header";
        GenPostingSetup: Record "General Posting Setup";
        VATPostingSetup: Record "VAT Posting Setup";
        CustLedgEntry: Record "Cust. Ledger Entry";
        TempDocDim: Record "Default Dimension" temporary;
        TempDimSetEntry: Record "Dimension Set Entry";
        FA: Record "Fixed Asset";
        FADeprBook: Record "FA Depreciation Book";
        DimMgt: Codeunit DimensionManagement;
        SalesHeaderFilter: Text[250];
        BillToAddr: array[8] of Text[50];
        SellToAddr: array[8] of Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        ShipInvText: Text[50];
        ReceiveInvText: Text[50];
        ErrorText: array[99] of Text[250];
        QtyToHandleCaption: Text[30];
        AllowPostingFrom: Date;
        AllowPostingTo: Date;
        VATDate: Date;
        MaxQtyToBeInvoiced: Decimal;
        RemQtyToBeInvoiced: Decimal;
        QtyToBeInvoiced: Decimal;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        QtyToHandle: Decimal;
        ErrorCounter: Integer;
        DropShipOrder: Boolean;
        InvOnNextPostReq: Boolean;
        ShipReceiveOnNextPostReq: Boolean;
        VATNoError: Boolean;
        ApplNoError: Boolean;
        ShowDim: Boolean;
        Continue: Boolean;
        ShowCostAssignment: Boolean;
        Text041: Label 'Confirmation of Loading';
        VATNoText: Text[30];
        SalesPersonText: Text[30];
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        VATAmountLine: Record "VAT Amount Line" temporary;
        SalesLine: Record "Sales Line" temporary;
        DocDim1: Record "Default Dimension";
        DocDim2: Record "Default Dimension";
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Record Language;
        SalesCountPrinted: Codeunit "Sales-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        CompanyInfo: Record "Company Information";
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        ReferenceText: Text[30];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        TotalText: Text[50];
        "---------------": Text[30];
        SalesComm: Record "Sales Comment Line";
        SalesPers: Record "Salesperson/Purchaser";
        Commt: array[10] of Text[250];
        Text042: Label 'Salesperson';
        Itcat: Record "Item Category";
        ItcatDesc: Text[30];
        CompanyInfo__Phone_No__CaptionLbl: Label 'Phone No.';
        CompanyInfo__Fax_No__CaptionLbl: Label 'Fax No.';
        Sales_Header___Bill_to_Customer_No__CaptionLbl: Label 'Customer No.';
        Order_No_CaptionLbl: Label 'Order No.';
        To_CaptionLbl: Label 'To:';
        Date_CaptionLbl: Label 'Date:';
        SalesHeader__Container_Code_CaptionLbl: Label 'Container Code';
        SalesHeader__Package_Tracking_No__CaptionLbl: Label 'Container No.';
        SalesHeader__Seal_No_CaptionLbl: Label 'Seal No';
        SalesHeader__Ship_to_Country_Region_Code_CaptionLbl: Label 'Destination';
        Sales_Document___TestCaptionLbl: Label 'Sales Document - Test';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Ship_toCaptionLbl: Label 'Ship-to';
        Sell_toCaptionLbl: Label 'Sell-to';
        Bill_toCaptionLbl: Label 'Bill-to';
        Header_DimensionsCaptionLbl: Label 'Header Dimensions';
        ErrorText_Number_CaptionLbl: Label 'Warning!';
        PalletsCaptionLbl: Label 'Pallets';
        Qty_KgsCaptionLbl: Label 'Qty/Kgs';
        DescriptionCaptionLbl: Label 'Description';
        TotalCaptionLbl: Label 'Total';
        RegardsCaptionLbl: Label 'Regards';
        Grand_TotalCaptionLbl: Label 'Grand Total';
        Inv__Discount_Amount_CaptionLbl: Label 'Inv. Discount Amount';
        SubtotalCaptionLbl: Label 'Subtotal';
        VATDiscountAmountCaptionLbl: Label 'Payment Discount on VAT';
        Line_DimensionsCaptionLbl: Label 'Line Dimensions';
        ErrorText_Number__Control97CaptionLbl: Label 'Warning!';
        VATAmountLine__VAT_Amount__Control150CaptionLbl: Label 'VAT Amount';
        VATAmountLine__VAT_Base__Control151CaptionLbl: Label 'VAT Base';
        VATAmountLine__VAT___CaptionLbl: Label 'VAT %';
        VAT_Amount_SpecificationCaptionLbl: Label 'VAT Amount Specification';
        VATAmountLine__VAT_Identifier_CaptionLbl: Label 'VAT Identifier';
        VATAmountLine__Invoice_Discount_Amount__Control173CaptionLbl: Label 'Invoice Discount Amount';
        VATAmountLine__Inv__Disc__Base_Amount__Control171CaptionLbl: Label 'Inv. Disc. Base Amount';
        VATAmountLine__Line_Amount__Control169CaptionLbl: Label 'Line Amount';
        ContinuedCaptionLbl: Label 'Continued';
        ContinuedCaption_Control155Lbl: Label 'Continued';
        TotalCaption_Control158Lbl: Label 'Total';
        Item_Charge_SpecificationCaptionLbl: Label 'Item Charge Specification';
        SalesLine2_DescriptionCaptionLbl: Label 'Description';
        SalesLine2_QuantityCaptionLbl: Label 'Assignable Qty';
        ContinuedCaption_Control210Lbl: Label 'Continued';
        TotalCaption_Control220Lbl: Label 'Total';
        ContinuedCaption_Control223Lbl: Label 'Continued';
        PrepmtDimSetEntry: Record "Dimension Set Entry";
        Text045: Label '%1 must not be %2 for %3 %4.';

    local procedure AddError(Text: Text[250])
    begin
        ErrorCounter := ErrorCounter + 1;
        ErrorText[ErrorCounter] := Text;
    end;

    local procedure CheckShptLines(SalesLine: Record "Sales Line"; SalesLine2: Record "Sales Line")
    var
        PostedDocDim: Record "Dimension Set Entry";
        TempPostedDimSetEntry: Record "Dimension Set Entry" temporary;
    begin
        with SalesLine2 do begin
            if Abs(RemQtyToBeInvoiced) > Abs("Qty. to Ship") then begin
                SaleShptLine.Reset;
                case "Document Type" of
                    "Document Type"::Order:
                        begin
                            SaleShptLine.SetCurrentKey("Order No.", "Order Line No.");
                            SaleShptLine.SetRange("Order No.", "Document No.");
                            SaleShptLine.SetRange("Order Line No.", "Line No.");
                        end;
                    "Document Type"::Invoice:
                        begin
                            SaleShptLine.SetRange("Document No.", "Shipment No.");
                            SaleShptLine.SetRange("Line No.", "Shipment Line No.");
                        end;
                end;

                SaleShptLine.SetFilter("Qty. Shipped Not Invoiced", '<>0');
                if SaleShptLine.Find('-') then
                    repeat
                        DimMgt.GetDimensionSet(TempPostedDimSetEntry, SaleShptLine."Dimension Set ID");
                        if not DimMgt.CheckDimIDConsistency(
                             TempDimSetEntry, TempPostedDimSetEntry, DATABASE::"Sales Line", DATABASE::"Sales Shipment Line")
                        then
                            AddError(DimMgt.GetDocDimConsistencyErr);
                        if SaleShptLine."Sell-to Customer No." <> "Sell-to Customer No." then
                            AddError(
                              StrSubstNo(
                                Text024,
                                FieldCaption("Sell-to Customer No.")));
                        if SaleShptLine.Type <> Type then
                            AddError(
                              StrSubstNo(
                                Text024,
                                FieldCaption(Type)));
                        if SaleShptLine."No." <> "No." then
                            AddError(
                              StrSubstNo(
                                Text024,
                                FieldCaption("No.")));
                        if SaleShptLine."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" then
                            AddError(
                              StrSubstNo(
                                Text024,
                                FieldCaption("Gen. Bus. Posting Group")));
                        if SaleShptLine."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" then
                            AddError(
                              StrSubstNo(
                                Text024,
                                FieldCaption("Gen. Prod. Posting Group")));
                        if SaleShptLine."Location Code" <> "Location Code" then
                            AddError(
                              StrSubstNo(
                                Text024,
                                FieldCaption("Location Code")));
                        if SaleShptLine."Job No." <> "Job No." then
                            AddError(
                              StrSubstNo(
                                Text024,
                                FieldCaption("Job No.")));

                        if -SalesLine."Qty. to Invoice" * SaleShptLine.Quantity < 0 then
                            AddError(
                              StrSubstNo(
                                Text027, FieldCaption("Qty. to Invoice")));

                        QtyToBeInvoiced := RemQtyToBeInvoiced - SalesLine."Qty. to Ship";
                        if Abs(QtyToBeInvoiced) > Abs(SaleShptLine.Quantity - SaleShptLine."Quantity Invoiced") then
                            QtyToBeInvoiced := -(SaleShptLine.Quantity - SaleShptLine."Quantity Invoiced");
                        RemQtyToBeInvoiced := RemQtyToBeInvoiced - QtyToBeInvoiced;
                        SaleShptLine."Quantity Invoiced" := SaleShptLine."Quantity Invoiced" - QtyToBeInvoiced;
                        SaleShptLine."Qty. Shipped Not Invoiced" :=
                          SaleShptLine.Quantity - SaleShptLine."Quantity Invoiced"
                    until (SaleShptLine.Next = 0) or (Abs(RemQtyToBeInvoiced) <= Abs("Qty. to Ship"))
                else
                    AddError(
                      StrSubstNo(
                        Text026,
                        "Shipment Line No.",
                        "Shipment No."));
            end;

            if Abs(RemQtyToBeInvoiced) > Abs("Qty. to Ship") then
                if "Document Type" = "Document Type"::Invoice then
                    AddError(
                      StrSubstNo(
                        Text036,
                        "Shipment No."));
        end;
    end;

    local procedure CheckRcptLines(SalesLine: Record "Sales Line"; SalesLine2: Record "Sales Line")
    var
        PostedDocDim: Record "Dimension Set Entry";
        TempPostedDocDim: Record "Dimension Set Entry" temporary;
        TempPostedDimSetEntry: Record "Dimension Set Entry";
    begin
        with SalesLine2 do begin
            if Abs(RemQtyToBeInvoiced) > Abs("Return Qty. to Receive") then begin
                ReturnRcptLine.Reset;
                case "Document Type" of
                    "Document Type"::"Return Order":
                        begin
                            ReturnRcptLine.SetCurrentKey("Return Order No.", "Return Order Line No.");
                            ReturnRcptLine.SetRange("Return Order No.", "Document No.");
                            ReturnRcptLine.SetRange("Return Order Line No.", "Line No.");
                        end;
                    "Document Type"::"Credit Memo":
                        begin
                            ReturnRcptLine.SetRange("Document No.", "Return Receipt No.");
                            ReturnRcptLine.SetRange("Line No.", "Return Receipt Line No.");
                        end;
                end;

                ReturnRcptLine.SetFilter("Return Qty. Rcd. Not Invd.", '<>0');
                if ReturnRcptLine.Find('-') then
                    repeat
                        DimMgt.GetDimensionSet(TempPostedDimSetEntry, ReturnRcptLine."Dimension Set ID");
                        if not DimMgt.CheckDimIDConsistency(
                             TempDimSetEntry, TempPostedDimSetEntry, DATABASE::"Sales Line", DATABASE::"Return Receipt Line")
                        then
                            AddError(DimMgt.GetDocDimConsistencyErr);
                        if ReturnRcptLine."Sell-to Customer No." <> "Sell-to Customer No." then
                            AddError(
                              StrSubstNo(
                                Text038,
                                FieldCaption("Sell-to Customer No.")));
                        if ReturnRcptLine.Type <> Type then
                            AddError(
                              StrSubstNo(
                                Text038,
                                FieldCaption(Type)));
                        if ReturnRcptLine."No." <> "No." then
                            AddError(
                              StrSubstNo(
                                Text038,
                                FieldCaption("No.")));
                        if ReturnRcptLine."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" then
                            AddError(
                              StrSubstNo(
                                Text038,
                                FieldCaption("Gen. Bus. Posting Group")));
                        if ReturnRcptLine."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" then
                            AddError(
                              StrSubstNo(
                                Text038,
                                FieldCaption("Gen. Prod. Posting Group")));
                        if ReturnRcptLine."Location Code" <> "Location Code" then
                            AddError(
                              StrSubstNo(
                                Text038,
                                FieldCaption("Location Code")));
                        if ReturnRcptLine."Job No." <> "Job No." then
                            AddError(
                              StrSubstNo(
                                Text038,
                                FieldCaption("Job No.")));

                        if SalesLine."Qty. to Invoice" * ReturnRcptLine.Quantity < 0 then
                            AddError(
                              StrSubstNo(
                                Text039, FieldCaption("Qty. to Invoice")));
                        QtyToBeInvoiced := RemQtyToBeInvoiced - SalesLine."Return Qty. to Receive";
                        if Abs(QtyToBeInvoiced) > Abs(ReturnRcptLine.Quantity - ReturnRcptLine."Quantity Invoiced") then
                            QtyToBeInvoiced := ReturnRcptLine.Quantity - ReturnRcptLine."Quantity Invoiced";
                        RemQtyToBeInvoiced := RemQtyToBeInvoiced - QtyToBeInvoiced;
                        ReturnRcptLine."Quantity Invoiced" := ReturnRcptLine."Quantity Invoiced" + QtyToBeInvoiced;
                        ReturnRcptLine."Return Qty. Rcd. Not Invd." :=
                          ReturnRcptLine.Quantity - ReturnRcptLine."Quantity Invoiced";
                    until (ReturnRcptLine.Next = 0) or (Abs(RemQtyToBeInvoiced) <= Abs("Return Qty. to Receive"))
                else
                    AddError(
                      StrSubstNo(
                        Text025,
                        "Return Receipt Line No.",
                        "Return Receipt No."));
            end;

            if Abs(RemQtyToBeInvoiced) > Abs("Return Qty. to Receive") then
                if "Document Type" = "Document Type"::"Credit Memo" then
                    AddError(
                      StrSubstNo(
                        Text037,
                        "Return Receipt No."));
        end;
    end;
}

