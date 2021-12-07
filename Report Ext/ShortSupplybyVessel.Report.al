report 50076 "Short Supply by Vessel"
{
    // "Transfer Line".GETFILTERS
    // "Transfer Line"."Qty. Reqd."
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ShortSupplybyVessel.rdlc';


    dataset
    {
        dataitem("Transfer Line"; "Transfer Line")
        {
            DataItemTableView = SORTING("Transfer-to Code", "Item No.", "Shipment Date");
            RequestFilterFields = "Transfer-to Code", "Item No.", "Shipment Date";
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
            column(Transfer_Line__GETFILTERS; "Transfer Line".GetFilters)
            {
            }
            column(Transfer_Line__Transfer_to_Code_; "Transfer-to Code")
            {
            }
            column(Transfer_Line__Item_No__; "Item No.")
            {
            }
            column(TotalFor___FIELDCAPTION__Item_No___; TotalFor + FieldCaption("Item No."))
            {
            }
            column(Transfer_Line__Document_No__; "Document No.")
            {
            }
            column(Transfer_Line__Item_No___Control1000000017; "Item No.")
            {
            }
            column(Transfer_Line_Description; Description)
            {
            }
            column(Transfer_Line__Unit_of_Measure_; "Unit of Measure")
            {
            }
            column(Transfer_Line_Quantity; Quantity)
            {
            }
            column(Transfer_Line__Quantity_Shipped_; "Quantity Shipped")
            {
            }
            column(Transfer_Line__Outstanding_Quantity_; "Outstanding Quantity")
            {
            }
            column(Transfer_Line__Qty__Reqd__; "Qty. Reqd.")
            {
            }
            column(Transfer_Line_Quantity_Control1000000035; Quantity)
            {
            }
            column(Transfer_Line__Quantity_Shipped__Control1000000036; "Quantity Shipped")
            {
            }
            column(Transfer_Line__Outstanding_Quantity__Control1000000037; "Outstanding Quantity")
            {
            }
            column(Transfer_Line_Description_Control1000000000; Description)
            {
            }
            column(Transfer_Line__Item_No___Control1000000007; "Item No.")
            {
            }
            column(Transfer_Line__Unit_of_Measure__Control1000000010; "Unit of Measure")
            {
            }
            column(Transfer_Line__Document_No___Control1000000013; "Document No.")
            {
            }
            column(Transfer_Line__Qty__Reqd___Control1000000022; "Qty. Reqd.")
            {
            }
            column(TotalFor___FIELDCAPTION__Transfer_to_Code__; TotalFor + FieldCaption("Transfer-to Code"))
            {
            }
            column(Transfer_Line_Quantity_Control1000000039; Quantity)
            {
            }
            column(Transfer_Line__Quantity_Shipped__Control1000000040; "Quantity Shipped")
            {
            }
            column(Transfer_Line__Outstanding_Quantity__Control1000000041; "Outstanding Quantity")
            {
            }
            column(Transfer_Line__Qty__Reqd___Control1000000028; "Qty. Reqd.")
            {
            }
            column(Short_Supply_by_VesselCaption; Short_Supply_by_VesselCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Transfer_Line__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Transfer_Line__Item_No___Control1000000017Caption; FieldCaption("Item No."))
            {
            }
            column(Transfer_Line_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Transfer_Line__Unit_of_Measure_Caption; FieldCaption("Unit of Measure"))
            {
            }
            column(Transfer_Line_QuantityCaption; Transfer_Line_QuantityCaptionLbl)
            {
            }
            column(Transfer_Line__Quantity_Shipped_Caption; FieldCaption("Quantity Shipped"))
            {
            }
            column(Transfer_Line__Outstanding_Quantity_Caption; FieldCaption("Outstanding Quantity"))
            {
            }
            column(Transfer_Line__Qty__Reqd__Caption; Transfer_Line__Qty__Reqd__CaptionLbl)
            {
            }
            column(Transfer_Line__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Transfer_Line__Transfer_to_Code_Caption; FieldCaption("Transfer-to Code"))
            {
            }
            column(Transfer_Line_Line_No_; "Line No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Item No.");
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
        TotalFor: Label 'Total for ';
        Shorts: Boolean;
        Short_Supply_by_VesselCaptionLbl: Label 'Short Supply by Vessel';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Transfer_Line_QuantityCaptionLbl: Label 'Quantity Approved';
        Transfer_Line__Qty__Reqd__CaptionLbl: Label 'Quantity Requested';
}

