report 90032 "Purchase Requisition Approvalx"
{
    // Item."Monthly Consumption"
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/PurchaseRequisitionApprovalx.rdlc';


    dataset
    {
        dataitem("Requisition Wksh. Name"; "Requisition Wksh. Name")
        {
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
                column(Requested_By____ReqStrId; 'Requested By: ' + ReqStrId)
                {
                }
                column(STRSUBSTNO_Text004_CopyText_; StrSubstNo(Text004, CopyText))
                {
                }
                column(dato; dato)
                {
                }
                column(CurrReport_PAGENO; CurrReport.PageNo)
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
                column(Item_Inventory_Item__Qty__on_Purch__Order_; Item.Inventory + Item."Qty. on Purch. Order")
                {
                }
                column(PrPurDate; PrPurDate)
                {
                }
                column(Item__Monthly_Consumption_; Item."Monthly Consumption")
                {
                }
                column(USERID; UserId)
                {
                }
                column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
                {
                }
                column(Requisition_LineCaption; Requisition_LineCaptionLbl)
                {
                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
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
                column(Checked_and_Approved__By_Caption; Checked_and_Approved__By_CaptionLbl)
                {
                }
                column(Requisition_Line_Worksheet_Template_Name; "Worksheet Template Name")
                {
                }
                column(Requisition_Line_Journal_Batch_Name; "Journal Batch Name")
                {
                }
                column(Requisition_Line_Line_No_; "Line No.")
                {
                }
                dataitem("Company Information"; "Company Information")
                {
                    column(Picture; Picture)
                    {
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    ReqStrId := "Requisition Line"."Requester ID";
                    if ItemLedg.SetCurrentKey("Entry Type", "Item No.", "Variant Code", "Drop Shipment", "Location Code", "Posting Date") then;

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
                                PrPurVen := PurcRecpHd."Buy-from Vendor No."
                            else
                                Message(Text001);
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
                        Item.CalcFields(Item.Inventory, Item."Qty. on Purch. Order");
                        Item2.Get("Requisition Line"."No.");
                        Item2.SetRange(Item2."Date Filter", 0D, PrPurDate);
                        Item2.CalcFields(Item2.Inventory, Item2."Qty. on Purch. Order");

                    end;
                end;

                trigger OnPreDataItem()
                begin
                    //"Requisition Line".MARKEDONLY(TRUE);
                end;
            }
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
        CompanyInformation.Get;
        CompanyInformation.CalcFields(Picture);
    end;

    trigger OnPreReport()
    begin
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
        Requisition_LineCaptionLbl: Label 'Requisition Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        DateCaptionLbl: Label 'Date';
        QtyCaptionLbl: Label 'Qty';
        Unit_PriceCaptionLbl: Label 'Unit/Price';
        Present_RequestCaptionLbl: Label 'Present Request';
        VendorCaptionLbl: Label 'Vendor';
        Previous_PurchaseCaptionLbl: Label 'Previous Purchase';
        Stk__Bal___POCaptionLbl: Label 'Stk. Bal + PO';
        Monthly_ConsumptionCaptionLbl: Label 'Monthly Consumption';
        Reorder_QtyCaptionLbl: Label 'Reorder Qty';
        Checked_and_Approved__By_CaptionLbl: Label 'Checked and Approved  By:';
        CompanyInformation: Record "Company Information";
}

