report 88233 "SDFAWE"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/SDFAWE.rdlc';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("Document Type", "Customer Posting Group") WHERE("Document Type" = CONST(Invoice));
            RequestFilterFields = "Document Type", "Customer Posting Group";
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
            column(Sales_Header__Document_Type_; "Document Type")
            {
            }
            column(Sales_Header__Customer_Posting_Group_; "Customer Posting Group")
            {
            }
            column(Sales_Header__Document_Type__Control14; "Document Type")
            {
            }
            column(Sales_Header__No__; "No.")
            {
            }
            column(Sales_Header__Sell_to_Customer_No__; "Sell-to Customer No.")
            {
            }
            column(Sales_Header__Customer_Posting_Group__Control23; "Customer Posting Group")
            {
            }
            column(Sales_HeaderCaption; Sales_HeaderCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Header__Document_Type__Control14Caption; FieldCaption("Document Type"))
            {
            }
            column(Sales_Header__No__Caption; FieldCaption("No."))
            {
            }
            column(Sales_Header__Sell_to_Customer_No__Caption; FieldCaption("Sell-to Customer No."))
            {
            }
            column(Sales_Header__Customer_Posting_Group__Control23Caption; FieldCaption("Customer Posting Group"))
            {
            }
            column(Sales_Header__Document_Type_Caption; FieldCaption("Document Type"))
            {
            }
            column(Sales_Header__Customer_Posting_Group_Caption; FieldCaption("Customer Posting Group"))
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Customer Posting Group");
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
        Sales_HeaderCaptionLbl: Label 'Sales Header';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

