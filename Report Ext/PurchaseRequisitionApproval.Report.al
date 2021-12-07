report 50177 "Purchase Requisition Approval"
{
    // To print specific lines you have to tick Print line field and set print line request filter to yes
    // RespCenter.Code
    // "Requisition Line"."Journal Batch Name"
    // "Requisition Line"."Worksheet Template Name"
    // Item."CRM / STR"
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PurchaseRequisitionApproval.rdlc';


    dataset
    {
        dataitem("Requisition Wksh. Name"; "Requisition Wksh. Name")
        {
            //The property 'DataItemTableView' shouldn't have an empty value.
            //DataItemTableView = '';
            RequestFilterFields = "Worksheet Template Name", Name;
            column(Requisition_Wksh__Name_Worksheet_Template_Name; "Worksheet Template Name")
            {
            }
            column(Requisition_Wksh__Name_Name; Name)
            {
            }
            dataitem("Requisition Line"; "Requisition Line")
            {
                DataItemLink = "Worksheet Template Name" = FIELD("Worksheet Template Name"), "Journal Batch Name" = FIELD(Name);
                DataItemTableView = SORTING("Worksheet Template Name", "Journal Batch Name", "Line No.");
                RequestFilterFields = "Worksheet Template Name", "Journal Batch Name", "Gen. Prod. Posting Group", "Print Line";
                column(Requisition_Line__Requisition_Line___Worksheet_Template_Name_; "Requisition Line"."Worksheet Template Name")
                {
                }
                column(Requested_By____ReqStrId; 'Requested By: ' + ReqStrId)
                {
                }
                column(STRSUBSTNO_Text004_CopyText_; StrSubstNo(Text004, CopyText))
                {
                }
                column(Requisition_Line__Requisition_Line___Journal_Batch_Name_; "Requisition Line"."Journal Batch Name")
                {
                }
                column(CurrReport_PAGENO; CurrReport.PageNo)
                {
                }
                column(TODAY; Today)
                {
                }
                column(COMPANYNAME; CompanyName)
                {
                }
                column(Requisition_Line__No__; "No.")
                {
                }
                column(Requisition_Line_Description; Description)
                {
                }
                column(Requisition_Line_Quantity; Quantity)
                {
                }
                column(PrPurQty; PrPurQty)
                {
                }
                column(PrPurPri; PrPurPri)
                {
                }
                column(PrPurVenNam; PrPurVenNam)
                {
                }
                column(Item__Reorder_Quantity_; Item."Reorder Quantity")
                {
                    DecimalPlaces = 0 : 5;
                }
                column(Item__CRM___STR__Item__Qty__on_Purch__Order_; Item."CRM / STR" + Item."Qty. on Purch. Order")
                {
                    DecimalPlaces = 0 : 0;
                }
                column(PrPurDate; PrPurDate)
                {
                }
                column(Item__Monthly_Consumption_; Item."Monthly Consumption")
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Requisition_Line__Due_Date_; "Due Date")
                {
                }
                column(Item__Maximum_Order_Quantity_; Item."Maximum Order Quantity")
                {
                    DecimalPlaces = 0 : 0;
                }
                column(USERID; UserId)
                {
                }
                column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
                {
                }
                column(Requisition_Line__Requisition_Line___Worksheet_Template_Name_Caption; FieldCaption("Worksheet Template Name"))
                {
                }
                column(Requisition_No___Caption; Requisition_No___CaptionLbl)
                {
                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
                {
                }
                column(Date_Caption; Date_CaptionLbl)
                {
                }
                column(Requisition_LineCaption; Requisition_LineCaptionLbl)
                {
                }
                column(Requisition_Line__No__Caption; FieldCaption("No."))
                {
                }
                column(Requisition_Line_DescriptionCaption; FieldCaption(Description))
                {
                }
                column(Requisition_Line_QuantityCaption; FieldCaption(Quantity))
                {
                }
                column(DateCaption; DateCaptionLbl)
                {
                }
                column(QtyCaption; QtyCaptionLbl)
                {
                }
                column(Unit_PriceCaption; Unit_PriceCaptionLbl)
                {
                }
                column(Present_RequestCaption; Present_RequestCaptionLbl)
                {
                }
                column(VendorCaption; VendorCaptionLbl)
                {
                }
                column(Previous_PurchaseCaption; Previous_PurchaseCaptionLbl)
                {
                }
                column(Stk__Bal___POCaption; Stk__Bal___POCaptionLbl)
                {
                }
                column(Monthly_ConsumptionCaption; Monthly_ConsumptionCaptionLbl)
                {
                }
                column(Reorder_QtyCaption; Reorder_QtyCaptionLbl)
                {
                }
                column(Expected_Arrival_DateCaption; Expected_Arrival_DateCaptionLbl)
                {
                }
                column(Container_CapacityCaption; Container_CapacityCaptionLbl)
                {
                }
                column(Checked_and_Approved__By_Caption; Checked_and_Approved__By_CaptionLbl)
                {
                }
                column(Requisition_Line_Line_No_; "Line No.")
                {
                }
                column(Picture; CompanyInfo.Picture)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    ReqStrId := "Requisition Line"."Requester ID";
                    //IF ItemLedg.SETCURRENTKEY("Entry Type","Item No.","Variant Code","Drop Shipment","Location Code","Bin Code","Posting Date") THEN;

                    if "Requisition Line".Type > 1 then begin
                        ItemLedg.SetRange(ItemLedg."Entry Type", 0);
                        ItemLedg.SetRange(ItemLedg."Item No.", "Requisition Line"."No.");
                        if ItemLedg.Find('+') then begin
                            PrPurDate := ItemLedg."Posting Date";
                            PrPurQty := ItemLedg.Quantity;
                            ItemLedg.CalcFields(ItemLedg."Cost Amount (Actual)");
                            if PrPurQty <> 0 then PrPurPri := ItemLedg."Cost Amount (Actual)" / PrPurQty;

                            //Find vendor for the Last Purchase
                            PurcRecpHd.SetRange(PurcRecpHd."No.", ItemLedg."Document No.");
                            if PurcRecpHd.Find('-') then
                                PrPurVen := PurcRecpHd."Buy-from Vendor No.";
                            /* ELSE
                               MESSAGE(Text001);*/
                            if PrPurVen <> '' then
                                if VendTab.Get(PurcRecpHd."Buy-from Vendor No.") then
                                    PrPurVenNam := VendTab.Name;
                            //PrPurVenNam:= PrPurVen+' '+PrPurVenNam;            // Name + Number
                        end
                        else begin
                            PrPurDate := 0D;
                            PrPurQty := 0;
                            PrPurPri := 0;
                            PrPurVenNam := '';
                        end;
                        Item.Get("Requisition Line"."No.");
                        Item.CalcFields(Item.Inventory, Item."Qty. on Purch. Order", Item."CRM / STR");
                        Item2.Get("Requisition Line"."No.");
                        Item2.SetRange(Item2."Date Filter", 0D, PrPurDate);
                        Item2.CalcFields(Item2.Inventory, Item2."Qty. on Purch. Order", Item2."CRM / STR");

                    end;

                end;
            }

            trigger OnPreDataItem()
            begin
                Filt[1] := "Requisition Wksh. Name".GetFilter("Requisition Wksh. Name"."Worksheet Template Name");
                Filt[2] := "Requisition Wksh. Name".GetFilter("Requisition Wksh. Name".Name);

                ReqStrId := "Requisition Line"."Requester ID";
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
        CompanyInfo.Get;
        CompanyInfo.CalcFields(CompanyInfo.Picture);

        JTempNm := "Requisition Line".GetFilter("Requisition Line"."Worksheet Template Name");
        JBatcNm := "Requisition Line".GetFilter("Requisition Line"."Journal Batch Name");
    end;

    var
        Text004: Label 'Purchase Requisition Approval';
        CompanyInfo: Record "Company Information";
        RespCenter: Record "Responsibility Center";
        Language: Record Language;
        FormatAddr: Codeunit "Format Address";
        CompanyAddr: array[8] of Text[50];
        BuyFromAddr: array[8] of Text[50];
        ReqNo: Text[50];
        dato: Text[50];
        CopyText: Text[50];
        "-------": Text[30];
        ItemLedg: Record "Item Ledger Entry";
        PurcRecpHd: Record "Purch. Rcpt. Header";
        VendTab: Record Vendor;
        LetterHd: Boolean;
        ReqStrId: Code[20];
        Text000: Label 'The key was successfully selected! ';
        Text001: Label 'Sorry, the key could not be found.. ';
        PrPurDate: Date;
        PrPurQty: Decimal;
        PrPurPri: Decimal;
        PrPurVen: Code[20];
        PrPurVenNam: Code[80];
        Item: Record Item;
        Item2: Record Item;
        Filt: array[2] of Code[20];
        JTempNm: Code[20];
        JBatcNm: Code[20];
        "------": Text[30];
        RespCent: Record "Responsibility Center";
        Requisition_No___CaptionLbl: Label 'Requisition No. :';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Date_CaptionLbl: Label 'Date:';
        Requisition_LineCaptionLbl: Label 'Requisition Line';
        DateCaptionLbl: Label 'Date';
        QtyCaptionLbl: Label 'Qty';
        Unit_PriceCaptionLbl: Label 'Unit/Price';
        Present_RequestCaptionLbl: Label 'Present Request';
        VendorCaptionLbl: Label 'Vendor';
        Previous_PurchaseCaptionLbl: Label 'Previous Purchase';
        Stk__Bal___POCaptionLbl: Label 'Stk. Bal + PO';
        Monthly_ConsumptionCaptionLbl: Label 'Monthly Consumption';
        Reorder_QtyCaptionLbl: Label 'Reorder Qty';
        Expected_Arrival_DateCaptionLbl: Label 'Expected Arrival Date';
        Container_CapacityCaptionLbl: Label 'Container Capacity';
        Checked_and_Approved__By_CaptionLbl: Label 'Checked and Approved  By:';
}

