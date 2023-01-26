report 99980 "Update sale line Invt Cat Sort"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/UpdatesalelineInvtCatSort.rdlc';

    dataset
    {
        dataitem("Sales Line"; "Sales Line")
        {
            DataItemTableView = WHERE("Document Type" = CONST(Order));
            RequestFilterFields = "Document Type";
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
            column(Sales_Line__Line_No__; "Line No.")
            {
            }
            column(Sales_Line__No__; "No.")
            {
            }
            column(Sales_Line_Amount; Amount)
            {
            }
            column(Sales_Line__Item_Category_Code_Sort_; "Item Category Code Sort")
            {
            }
            column(Sales_LineCaption; Sales_LineCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Line__Document_Type_Caption; FieldCaption("Document Type"))
            {
            }
            column(Sales_Line__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Sales_Line__Line_No__Caption; FieldCaption("Line No."))
            {
            }
            column(Sales_Line__No__Caption; FieldCaption("No."))
            {
            }
            column(Sales_Line_AmountCaption; FieldCaption(Amount))
            {
            }
            column(Sales_Line__Item_Category_Code_Sort_Caption; FieldCaption("Item Category Code Sort"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*CatSort;
                MODIFY();*///#dik

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
        Sales_LineCaptionLbl: Label 'Sales Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

