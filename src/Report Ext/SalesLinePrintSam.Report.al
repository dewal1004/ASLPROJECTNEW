report 55807 "Sales Line Print Sam"
{
    // "Sales Line".
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/SalesLinePrintSam.rdlc';


    dataset
    {
        dataitem("Sales Line"; "Sales Line")
        {
            DataItemTableView = SORTING("Document Type", "Document No.", Type, "Item Category Code Sort", "Pack Size", Brand);
            RequestFilterFields = "Document Type", "Document No.", Type, "Item Category Code Sort", "Pack Size", Brand;
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
            column(Sales_Line__Document_Type_; "Document Type")
            {
            }
            column(Sales_Line__Document_No__; "Document No.")
            {
            }
            column(Sales_Line_Type; Type)
            {
            }
            column(Item_Category_Code_Sort_______Brand______Pack_Size_; "Item Category Code Sort" + ' ' + Brand + ' ' + "Pack Size")
            {
            }
            column(Sales_Line_Description; Description)
            {
            }
            column(Sales_Line_Quantity; Quantity)
            {
            }
            column(Sales_Line_Numbers; Numbers)
            {
            }
            column(Sales_Line_Packing; Packing)
            {
            }
            column(Sales_Line__On_Pallet_; "On Pallet")
            {
            }
            column(TotalFor; TotalFor)
            {
            }
            column(Sales_Line_Quantity_Control41; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Pack_Size__; TotalFor + FieldCaption("Pack Size"))
            {
            }
            column(Sales_Line_Quantity_Control43; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Item_Category_Code_Sort__; TotalFor + FieldCaption("Item Category Code Sort"))
            {
            }
            column(Sales_Line_Quantity_Control45; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION_Type_; TotalFor + FieldCaption(Type))
            {
            }
            column(Sales_Line_Quantity_Control47; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Document_No___; TotalFor + FieldCaption("Document No."))
            {
            }
            column(Sales_Line_Quantity_Control49; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Document_Type__; TotalFor + FieldCaption("Document Type"))
            {
            }
            column(Sales_Line_Quantity_Control51; Quantity)
            {
            }
            column(Sales_LineCaption; Sales_LineCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Line_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Sales_Line_QuantityCaption; FieldCaption(Quantity))
            {
            }
            column(Sales_Line_NumbersCaption; FieldCaption(Numbers))
            {
            }
            column(Sales_Line_PackingCaption; FieldCaption(Packing))
            {
            }
            column(Sales_Line__On_Pallet_Caption; FieldCaption("On Pallet"))
            {
            }
            column(Sales_Line__Document_Type_Caption; FieldCaption("Document Type"))
            {
            }
            column(Sales_Line__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Sales_Line_TypeCaption; FieldCaption(Type))
            {
            }
            column(Item_Category_Code_Sort_______Brand______Pack_Size_Caption; Item_Category_Code_Sort_______Brand______Pack_Size_CaptionLbl)
            {
            }
            column(Control21Caption; Control21CaptionLbl)
            {
            }
            column(Sales_Line_Line_No_; "Line No.")
            {
            }
            column(Sales_Line_Item_Category_Code_Sort; "Item Category Code Sort")
            {
            }
            column(Sales_Line_Pack_Size; "Pack Size")
            {
            }
            column(Sales_Line_Brand; Brand)
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo(Brand);
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
        TotalFor: Label 'Total:';
        Sales_LineCaptionLbl: Label 'Sales Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Item_Category_Code_Sort_______Brand______Pack_Size_CaptionLbl: Label 'Label18';
        Control21CaptionLbl: Label 'Label21';
}

