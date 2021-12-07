report 50157 "Short Supply thru Posted Trans"
{
    // There is the possibility that An order is posted more than once in this case it will
    // show because the quantity will not be the same as shipped.
    // 
    // ******To have the accurate quantity, the no of times the Order was shipped would have to be
    // divided into the total calculated quantity.
    // 
    // Shame shipment shout not have item counted twice;
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ShortSupplythruPostedTrans.rdlc';


    dataset
    {
        dataitem(Job; Job)
        {
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
            column(GETFILTERS; GetFilters)
            {
            }
            column(Jobs__No__; "No.")
            {
            }
            column(Jobs__Starting_Date_; "Starting Date")
            {
            }
            column(Jobs__Voyage_No__; "Voyage No.")
            {
            }
            column(Jobs_Vessel; Vessel)
            {
            }
            column(Short_Supply_List_2Caption; Short_Supply_List_2CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(QtyRCaption; QtyRCaptionLbl)
            {
            }
            column(Quantity_Shipped_Caption; Quantity_Shipped_CaptionLbl)
            {
            }
            column(Transfer_Shipment_Line_QuantityCaption; Transfer_Shipment_Line_QuantityCaptionLbl)
            {
            }
            column(Transfer_Shipment_Line__Qty__Reqd__Caption; Transfer_Shipment_Line__Qty__Reqd__CaptionLbl)
            {
            }
            column(Transfer_Shipment_Line__Unit_of_Measure_Caption; "Transfer Shipment Line".FieldCaption("Unit of Measure"))
            {
            }
            column(Transfer_Shipment_Line_DescriptionCaption; "Transfer Shipment Line".FieldCaption(Description))
            {
            }
            column(Transfer_Shipment_Line__Item_No___Control1000000014Caption; "Transfer Shipment Line".FieldCaption("Item No."))
            {
            }
            column(Transfer_Shipment_Line__Document_No__Caption; "Transfer Shipment Line".FieldCaption("Document No."))
            {
            }
            column(Transfer_Shipment_Line__Shipment_Date_Caption; "Transfer Shipment Line".FieldCaption("Shipment Date"))
            {
            }
            column(Jobs__No__Caption; Jobs__No__CaptionLbl)
            {
            }
            column(Jobs__Starting_Date_Caption; FieldCaption("Starting Date"))
            {
            }
            column(Jobs__Voyage_No__Caption; Jobs__Voyage_No__CaptionLbl)
            {
            }
            column(Jobs_VesselCaption; FieldCaption(Vessel))
            {
            }
            dataitem("Transfer Shipment Line"; "Transfer Shipment Line")
            {
                column(Transfer_Shipment_Line__Transfer_Order_No__; "Transfer Order No.")
                {
                }
                column(Transfer_Shipment_Line__Item_No__; "Item No.")
                {
                }
                column(Transfer_Shipment_Line__Transfer_Order_No___Control1000000051; "Transfer Order No.")
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
                column(Quantity_Shipped_; "Quantity Shipped")
                {

                }
                column(Transfer_Shipment_Line__Qty__Reqd__; "Qty. Reqd.")
                {

                }
                column(QtyR; QtyR)
                {

                }
                column(Transfer_Shipment_Line__Document_No__; "Document No.")
                {
                }
                column(Transfer_Shipment_Line__Shipment_Date_; "Shipment Date")
                {
                }
                column(Transfer_Shipment_Line_Description_Control1000000007; Description)
                {
                }
                column(Transfer_Shipment_Line__Item_No___Control1000000010; "Item No.")
                {
                }
                column(QtyR_Control1000000040; QtyR)
                {

                }
                column(Quantity_Shipped__Control1000000046; "Quantity Shipped")
                {

                }
                column(Transfer_Shipment_Line_Quantity_Control1000000047; Quantity)
                {

                }
                column(Transfer_Shipment_Line__Qty__Reqd___Control1000000048; "Qty. Reqd.")
                {

                }
                column(Transfer_Shipment_Line__Unit_of_Measure__Control1000000049; "Unit of Measure")
                {

                }
                column(QtyR_Control1000000052; QtyR)
                {

                }
                column(Quantity_Shipped__Control1000000056; "Quantity Shipped")
                {

                }
                column(Transfer_Shipment_Line_Quantity_Control1000000057; Quantity)
                {

                }
                column(Transfer_Shipment_Line__Qty__Reqd___Control1000000058; "Qty. Reqd.")
                {

                }
                column(Transfer_Shipment_Line__Unit_of_Measure__Control1000000059; "Unit of Measure")
                {

                }
                column(Transfer_Shipment_Line_Description_Control1000000060; Description)
                {
                }
                column(Transfer_Shipment_Line__Item_No___Control1000000061; "Item No.")
                {
                }
                column(Transfer_Shipment_Line__Transfer_Order_No___Control1000000041; "Transfer Order No.")
                {
                }
                column(TrShipHd__Transfer_to_Code_; TrShipHd."Transfer-to Code")
                {
                }
                column(JbNo__; "JbNo.")
                {
                }
                column(TotalFor___FIELDCAPTION__Transfer_Order_No___; TotalFor + FieldCaption("Transfer Order No."))
                {
                }
                column(Transfer_Shipment_Line_Quantity_Control1000000036; Quantity)
                {
                }
                column(Quantity_Shipped__Control1000000037; "Quantity Shipped")
                {
                }
                column(QtyR_Control1000000031; QtyR)
                {
                    DecimalPlaces = 0 : 2;
                }
                column(Transfer_Shipment_Line__Item_No__Caption; FieldCaption("Item No."))
                {
                }
                column(Transfer_Shipment_Line__Transfer_Order_No___Control1000000041Caption; FieldCaption("Transfer Order No."))
                {
                }
                column(Transfer_Shipment_Line_Line_No_; "Line No.")
                {
                }
                column(Transfer_Shipment_Line_Transfer_to_Code; "Transfer-to Code")
                {
                }
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

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        TrShipLn: Record "Transfer Shipment Line";
        TrShipHd: Record "Transfer Shipment Header";
        "JbNo.": Code[20];
        QtyR: Decimal;
        ShowDet: Boolean;
        "Quantity Shipped": Decimal;
        Short_Supply_List_2CaptionLbl: Label 'Short Supply List 2';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        QtyRCaptionLbl: Label 'Short Suplly';
        Quantity_Shipped_CaptionLbl: Label 'Quantity Supplied';
        Transfer_Shipment_Line_QuantityCaptionLbl: Label 'Quantity Approved';
        Transfer_Shipment_Line__Qty__Reqd__CaptionLbl: Label 'Quantity Requested';
        Jobs__No__CaptionLbl: Label 'Job No.';
        Jobs__Voyage_No__CaptionLbl: Label 'Voy. No.';
}

