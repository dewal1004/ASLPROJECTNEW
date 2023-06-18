report 98157 "Short Supply thru Posted TranZ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ShortSupplythruPostedTranZ.rdlc';
    Caption = 'Short Supply thru Posted TranZ';
    dataset
    {
        dataitem("Transfer Shipment Line"; "Transfer Shipment Line")
        {
            DataItemTableView = SORTING("Transfer Order No.", "Item No.", "Shipment Date");
            RequestFilterFields = "Transfer Order No.", "Item No.", "Shipment Date";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(USERID; UserId)
            {
            }
            column(Transfer_Shipment_Line__GETFILTERS; "Transfer Shipment Line".GetFilters)
            {
            }
            column(Transfer_Shipment_Line__Transfer_Order_No__; "Transfer Order No.")
            {
            }
            column(TrShipHd__Transfer_to_Code_; TrShipHd."Transfer-to Code")
            {
            }
            column(JbNo__; "JbNo.")
            {
            }
            column(Transfer_Shipment_Line__Item_No__; "Item No.")
            {
            }
            column(Transfer_Shipment_Line__Item_No___Control1000000014; "Item No.")
            {
            }
            column(Transfer_Shipment_Line_Description; Description)
            {
            }
            column(Transfer_Shipment_Line__Unit_of_Measure_; "Unit of Measure")
            {
            }
            column(Transfer_Shipment_Line_Quantity; Quantity)
            {
            }
            column(Transfer_Shipment_Line__Quantity_Shipped_; "Quantity Shipped")
            {
            }
            column(Transfer_Shipment_Line__Qty__Reqd__; "Qty. Reqd.")
            {
            }
            column(Transfer_Shipment_Line_Quantity_Control1000000032; Quantity)
            {
            }
            column(Transfer_Shipment_Line__Quantity_Shipped__Control1000000033; "Quantity Shipped")
            {
            }
            column(Transfer_Shipment_Line__Unit_of_Measure__Control1000000000; "Unit of Measure")
            {
            }
            column(Transfer_Shipment_Line_Description_Control1000000007; Description)
            {
            }
            column(Transfer_Shipment_Line__Item_No___Control1000000010; "Item No.")
            {
            }
            column(QtyR; QtyR)
            {
                DecimalPlaces = 0 : 2;
            }
            column(Transfer_Shipment_Line__Transfer_Order_No___Control1000000041; "Transfer Order No.")
            {
            }
            column(TrShipHd__Transfer_to_Code__Control1000000043; TrShipHd."Transfer-to Code")
            {
            }
            column(JbNo___Control1000000044; "JbNo.")
            {
            }
            column(TotalFor___FIELDCAPTION__Transfer_Order_No___; TotalFor + FieldCaption("Transfer Order No."))
            {
            }
            column(Transfer_Shipment_Line_Quantity_Control1000000036; Quantity)
            {
            }
            column(Transfer_Shipment_Line__Quantity_Shipped__Control1000000037; "Quantity Shipped")
            {
            }
            column(QtyR_Control1000000031; QtyR)
            {
                DecimalPlaces = 0 : 2;
            }
            column(Short_Supply_List_2Caption; Short_Supply_List_2CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Transfer_Shipment_Line__Item_No___Control1000000014Caption; FieldCaption("Item No."))
            {
            }
            column(Transfer_Shipment_Line_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Transfer_Shipment_Line__Unit_of_Measure_Caption; FieldCaption("Unit of Measure"))
            {
            }
            column(Transfer_Shipment_Line_QuantityCaption; Transfer_Shipment_Line_QuantityCaptionLbl)
            {
            }
            column(Transfer_Shipment_Line__Quantity_Shipped_Caption; Transfer_Shipment_Line__Quantity_Shipped_CaptionLbl)
            {
            }
            column(Transfer_Shipment_Line__Qty__Reqd__Caption; Transfer_Shipment_Line__Qty__Reqd__CaptionLbl)
            {
            }
            column(Transfer_Shipment_Line__Transfer_Order_No__Caption; FieldCaption("Transfer Order No."))
            {
            }
            column(Transfer_Shipment_Line__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Transfer_Shipment_Line__Transfer_Order_No___Control1000000041Caption; FieldCaption("Transfer Order No."))
            {
            }
            column(Transfer_Shipment_Line_Document_No_; "Document No.")
            {
            }
            column(Transfer_Shipment_Line_Line_No_; "Line No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Item No.");
                TrShipLn.SetCurrentKey(TrShipLn."Transfer Order No.", TrShipLn."Item No.");
                TrShipHd.SetCurrentKey(TrShipHd."Transfer Order No.");
                Job.SetCurrentKey(Job.Vessel);
                CurrReport.CreateTotals(QtyR);
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
        TotalFor: Label 'Total for ';
        TrShipLn: Record "Transfer Shipment Line";
        TrShipHd: Record "Transfer Shipment Header";
        Job: Record Job;
        "JbNo.": Code[20];
        QtyR: Decimal;
        Short_Supply_List_2CaptionLbl: Label 'Short Supply List 2';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Transfer_Shipment_Line_QuantityCaptionLbl: Label 'Quantity Approved';
        Transfer_Shipment_Line__Quantity_Shipped_CaptionLbl: Label 'Quantity Supplied';
        Transfer_Shipment_Line__Qty__Reqd__CaptionLbl: Label 'Short Supply';
}
