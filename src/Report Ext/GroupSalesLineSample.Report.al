report 90902 "Group Sales Line Sample"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/GroupSalesLineSample.rdlc';
    Caption = 'Group Sales Line Sample';
    dataset
    {
        dataitem("Sales Line"; "Sales Line")
        {
            DataItemTableView = SORTING("Document Type", "Document No.", Type, "Item Category Code", "Posting Group");
            RequestFilterFields = "Document Type", "Document No.", Type, "Item Category Code", "Posting Group";
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
            column(Sales_Line__Document_Type_; "Document Type")
            {
            }
            column(Sales_Line__Document_No__; "Document No.")
            {
            }
            column(Sales_Line_Type; Type)
            {
            }
            column(Sales_Line__Item_Category_Code_; "Item Category Code")
            {
            }
            column(Sales_Line__Posting_Group_; "Posting Group")
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
            column(TotalFor___FIELDCAPTION__Posting_Group__; TotalFor + FieldCaption("Posting Group"))
            {
            }
            column(Sales_Line_Quantity_Control1000000035; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Item_Category_Code__; TotalFor + FieldCaption("Item Category Code"))
            {
            }
            column(Sales_Line_Quantity_Control1000000037; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION_Type_; TotalFor + FieldCaption(Type))
            {
            }
            column(Sales_Line_Quantity_Control1000000039; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Document_No___; TotalFor + FieldCaption("Document No."))
            {
            }
            column(Sales_Line_Quantity_Control1000000041; Quantity)
            {
            }
            column(TotalFor___FIELDCAPTION__Document_Type__; TotalFor + FieldCaption("Document Type"))
            {
            }
            column(Sales_Line_Quantity_Control1000000043; Quantity)
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
            column(Sales_Line__Document_Type_Caption; FieldCaption("Document Type"))
            {
            }
            column(Sales_Line__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Sales_Line_TypeCaption; FieldCaption(Type))
            {
            }
            column(Sales_Line__Item_Category_Code_Caption; FieldCaption("Item Category Code"))
            {
            }
            column(Sales_Line__Posting_Group_Caption; FieldCaption("Posting Group"))
            {
            }
            column(Sales_Line_Line_No_; "Line No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Posting Group");
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
        Sales_LineCaptionLbl: Label 'Sales Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
