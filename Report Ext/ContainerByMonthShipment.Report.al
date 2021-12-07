report 50087 "Container By Month Shipment"
{
    // LastFieldNo := FIELDNO(Category);
    // "Sales Shipment Header".GETFILTERS
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ContainerByMonthShipment.rdlc';


    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            DataItemTableView = SORTING("Shipment Month", "Order No.") WHERE("Currency Code" = FILTER(<> ''));
            RequestFilterFields = "Shipment Month", "Order No.", "Shipment Date";
            column(SelltoCustomerNo; "Sales Shipment Header"."Sell-to Customer No.")
            {
            }
            column(Billtoname; "Sales Shipment Header"."Bill-to Name")
            {
            }
            column(Order_No; "Sales Shipment Header"."Order No.")
            {
            }
            column(TL; 1)
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
            column(Sales_Shipment_Header__GETFILTERS; "Sales Shipment Header".GetFilters)
            {
            }
            column(CatRange_1_; CatRange[1])
            {
            }
            column(CatRange_2_; CatRange[2])
            {
            }
            column(CatRange_3_; CatRange[3])
            {
            }
            column(CatRange_4_; CatRange[4])
            {
            }
            column(CatRange_5_; CatRange[5])
            {
            }
            column(CatRange_6_; CatRange[6])
            {
            }
            column(CatRange_7_; CatRange[7])
            {
            }
            column(CatRange_8_; CatRange[8])
            {
            }
            column(CatRange_9_; CatRange[9])
            {
            }
            column(CatRange_10_; CatRange[10])
            {
            }
            column(CatRange_11_; CatRange[11])
            {
            }
            column(CatRange_12_; CatRange[12])
            {
            }
            column(Sales_Shipment_Header__Shipment_Month_; "Shipment Month")
            {
            }
            column(Sales_Shipment_Header__Order_No__; "Order No.")
            {
            }
            column(Sales_Shipment_Header__Order_No___Control1000000014; "Order No.")
            {
            }
            column(Sales_Shipment_Header__Shipped_Quantity_; "Shipped Quantity")
            {
            }
            column(Sales_Shipment_Header__Shipped_Quantity__Control1000000020; "Shipped Quantity")
            {
            }
            column(Sales_Shipment_Header__Order_No___Control1000000000; "Order No.")
            {
            }
            column(CatRangeQ_1_; CatRangeQ[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_2_; CatRangeQ[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_3_; CatRangeQ[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_4_; CatRangeQ[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_5_; CatRangeQ[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_6_; CatRangeQ[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_7_; CatRangeQ[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_8_; CatRangeQ[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_9_; CatRangeQ[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_10_; CatRangeQ[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_11_; CatRangeQ[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_12_; CatRangeQ[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotalFor; TotalFor)
            {
            }
            column(Sales_Shipment_Header__Shipped_Quantity__Control1000000022; "Shipped Quantity")
            {
            }
            column(CatRangeQ_1__Control1000000044; CatRangeQ[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_2__Control1000000045; CatRangeQ[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_3__Control1000000046; CatRangeQ[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_4__Control1000000047; CatRangeQ[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_5__Control1000000048; CatRangeQ[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_6__Control1000000049; CatRangeQ[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_7__Control1000000050; CatRangeQ[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_8__Control1000000051; CatRangeQ[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_9__Control1000000052; CatRangeQ[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_10__Control1000000053; CatRangeQ[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_11__Control1000000054; CatRangeQ[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_12__Control1000000055; CatRangeQ[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Sales_Shipment_Header__Shipped_Quantity__Control1000000007; "Shipped Quantity")
            {
            }
            column(GrdTot; GrdTot)
            {
            }
            column(CatRangeQ_1__Control1000000058; CatRangeQ[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_2__Control1000000060; CatRangeQ[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_3__Control1000000061; CatRangeQ[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_4__Control1000000062; CatRangeQ[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_5__Control1000000063; CatRangeQ[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_6__Control1000000064; CatRangeQ[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_7__Control1000000065; CatRangeQ[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_8__Control1000000066; CatRangeQ[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_9__Control1000000067; CatRangeQ[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_10__Control1000000068; CatRangeQ[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_11__Control1000000069; CatRangeQ[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(CatRangeQ_12__Control1000000070; CatRangeQ[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Export_Order_StatisticCaption; Export_Order_StatisticCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Shipment_Header__Order_No___Control1000000014Caption; FieldCaption("Order No."))
            {
            }
            column(Sales_Shipment_Header__Shipped_Quantity_Caption; FieldCaption("Shipped Quantity"))
            {
            }
            column(Sales_Shipment_Header__Shipment_Month_Caption; FieldCaption("Shipment Month"))
            {
            }
            column(Sales_Shipment_Header__Order_No__Caption; FieldCaption("Order No."))
            {
            }
            column(Sales_Shipment_Header_No_; "No.")
            {
            }
            column(BillTo_CustomerNo; "Sales Shipment Header"."Bill-to Customer No.")
            {
            }
            column(BillTo_Name; "Sales Shipment Header"."Bill-to Name")
            {
            }

            trigger OnAfterGetRecord()
            begin
                Level := TotLoc;
                repeat
                    SetFilter("Item Category Code filter", CatRange[Level]);
                    CalcFields("Shipped Quantity");
                    //SCM Inserted By Shod begin
                    SCMhead.SetFilter(SCMhead."Item Category Code filter", CatRange[Level]);
                    SCMhead.CalcFields(SCMhead."Return Quantity");
                    CatRangeQ[Level] := "Shipped Quantity" + SCMhead."Return Quantity"; //modify by Shod end
                    Level := Level - 1;
                until Level = 0;
                SetFilter("Item Category Code filter", '');
                CalcFields("Shipped Quantity");
                SCMhead.SetFilter(SCMhead."Item Category Code filter", '');
                SCMhead.CalcFields(SCMhead."Return Quantity");
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Order No.");
                //AAA - June 2004
                ItCat.SetCurrentKey(ItCat."No.");
                ItCat.SetRange(ItCat.Type, 0);
                ItCat.SetFilter(ItCat."Date Filter", "Sales Shipment Header".GetFilter("Sales Shipment Header"."Shipment Date"));
                ItCat.CalcFields(ItCat."Shipped Quantity");
                ItCat.SetFilter(ItCat."Shipped Quantity", '>0');

                TotLoc := ItCat.Count;
                if ItCat.Find('-') then;
                Countx := 1;
                repeat
                    CatRange[Countx] := ItCat.Code;
                    Countx := Countx + 1;
                until ItCat.Next = 0;
                Countx := 1;//coment removed//
                repeat
                    CurrReport.CreateTotals(CatRangeQ[Countx]);
                    Countx := Countx + 1;
                until Countx = TotLoc + 1;//
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
        ItCat: Record "Item Category";
        CatRange: array[25] of Code[20];
        CatRangeQ: array[25] of Decimal;
        TotLoc: Integer;
        Countx: Integer;
        Level: Integer;
        TotalFor: Label 'Total';
        GrdTot: Label 'Grand Total';
        Export_Order_StatisticCaptionLbl: Label 'Export Order Statistic';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        SCMhead: Record "Sales Cr.Memo Header";
}

