report 50186 "Purch var"
{
    // ItemRec."VReceived Qty"
    // ItemRec."VSupplimentary Qty"
    // ItemRec."VOrdered Qty"
    // ItemRec.Description
    // Trecev
    // "Purch. Rcpt. Header"."Waybill No."
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/Purchvar.rdlc';


    dataset
    {
        dataitem(PageLoop; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
        }
        dataitem("Purchase Variance (Item)"; "Purchase Variance (Item)")
        {
            DataItemTableView = SORTING(OrderNo, ItemNo);
            RequestFilterFields = OrderNo;
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
            column(STRSUBSTNO_Text002_CopyText_; StrSubstNo(Text002, CopyText))
            {
            }
            column(FORMAT__Purch__Rcpt__Header___Document_Date__0_4_; Format("Purch. Rcpt. Header"."Document Date", 0, 4))
            {
            }
            column(Purch__Rcpt__Header___Ship_to_Address_; "Purch. Rcpt. Header"."Ship-to Address")
            {
            }
            column(VendAddr_1_; VendAddr[1])
            {
            }
            column(PurInvHd__No__; PurInvHd."No.")
            {
            }
            column(Purch__Rcpt__Header___Order_No__; "Purch. Rcpt. Header"."Order No.")
            {
            }
            column(Purch__Rcpt__Header___No__; "Purch. Rcpt. Header"."No.")
            {
            }
            column(Purchase_Variance__Item__ItemNo; ItemNo)
            {
            }
            column(ItemRec__VReceived_Qty__ItemRec__VSupplimentary_Qty_; ItemRec."VReceived Qty" + ItemRec."VSupplimentary Qty")
            {
            }
            column(ItemRec__VOrdered_Qty__Trecev; ItemRec."VOrdered Qty" - Trecev)
            {
            }
            column(ItemRec_Description; ItemRec.Description)
            {
            }
            column(ItemRec__VOrdered_Qty_; ItemRec."VOrdered Qty")
            {
            }
            column(Purchase_Variance__Item_Caption; Purchase_Variance__Item_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Date_Caption; Date_CaptionLbl)
            {
            }
            column(Way_Bill_No_Caption; Way_Bill_No_CaptionLbl)
            {
            }
            column(Invoice_No__Caption; Invoice_No__CaptionLbl)
            {
            }
            column(Order_No_Caption; Order_No_CaptionLbl)
            {
            }
            column(GRN_No__Caption; GRN_No__CaptionLbl)
            {
            }
            column(Vendor_Name_Caption; Vendor_Name_CaptionLbl)
            {
            }
            column(Purchase_Variance__Item__ItemNoCaption; FieldCaption(ItemNo))
            {
            }
            column(ItemRec__VReceived_Qty__ItemRec__VSupplimentary_Qty_Caption; ItemRec__VReceived_Qty__ItemRec__VSupplimentary_Qty_CaptionLbl)
            {
            }
            column(Item_DescriptionCaption; Item_DescriptionCaptionLbl)
            {
            }
            column(Quantity_OrderedCaption; Quantity_OrderedCaptionLbl)
            {
            }
            column(Short__Excess__SupplyCaption; Short__Excess__SupplyCaptionLbl)
            {
            }
            column(Purchase_Variance__Item__OrderNo; OrderNo)
            {
            }
            column(ItemNo; ItemNo)
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*
                ItemRec.GET("Purchase Variance (Item)".ItemNo);
                Ordernumber:="Purchase Variance (Item)".GETFILTER("Purchase Variance (Item)".OrderNo);
                "Purch. Rcpt. Header".SETCURRENTKEY("Purch. Rcpt. Header"."Order No.");
                "Purch. Rcpt. Header".SETFILTER("Purch. Rcpt. Header"."Order No.",Ordernumber);
                "Purch. Rcpt. Header".FIND('-');
                
                FormatAddr.PurchRcptPayTo(VendAddr,"Purch. Rcpt. Header");
                
                ItemRec.SETRANGE(ItemRec."Order Fillter", Ordernumber);
                ItemRec.CALCFIELDS(ItemRec."VReceived Qty",ItemRec."VSupplimentary Qty",ItemRec."VOrdered Qty");
                Trecev:=ItemRec."VReceived Qty"+ItemRec."VSupplimentary Qty";
                
                PurInvHd.SETCURRENTKEY(PurInvHd."Order No.");
                PurInvHd.SETRANGE(PurInvHd."Order No.","Purch. Rcpt. Header"."Order No.");
                IF PurInvHd.FIND('-') THEN;
                */

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
        ItemRec: Record Item;
        Ordernumber: Code[20];
        Trecev: Decimal;
        Text002: Label 'Variance On Goods Received %1';
        CopyText: Text[30];
        "Purch. Rcpt. Header": Record "Purch. Rcpt. Header";
        PurInvHd: Record "Purch. Inv. Header";
        VendAddr: array[8] of Text[50];
        FormatAddr: Codeunit "Format Address";
        Purchase_Variance__Item_CaptionLbl: Label 'Purchase Variance (Item)';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Date_CaptionLbl: Label 'Date:';
        Way_Bill_No_CaptionLbl: Label 'Way Bill No.';
        Invoice_No__CaptionLbl: Label 'Invoice No.:';
        Order_No_CaptionLbl: Label 'Order No.';
        GRN_No__CaptionLbl: Label 'GRN No.:';
        Vendor_Name_CaptionLbl: Label 'Vendor Name:';
        ItemRec__VReceived_Qty__ItemRec__VSupplimentary_Qty_CaptionLbl: Label 'Quantity Received';
        Item_DescriptionCaptionLbl: Label 'Item Description';
        Quantity_OrderedCaptionLbl: Label 'Quantity Ordered';
        Short__Excess__SupplyCaptionLbl: Label 'Short\(Excess) Supply';
}

