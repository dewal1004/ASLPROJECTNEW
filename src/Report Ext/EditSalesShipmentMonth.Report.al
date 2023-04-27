report 99508 "Edit Sales Shipment Month"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/EditSalesShipmentMonth.rdlc';

    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            DataItemTableView = SORTING("No.");
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
            column(Sales_Shipment_Header__No__; "No.")
            {
            }
            column(Sales_Shipment_Header__Sell_to_Customer_No__; "Sell-to Customer No.")
            {
            }
            column(Sales_Shipment_Header__Currency_Code_; "Currency Code")
            {
            }
            column(Sales_Shipment_Header__Order_No__; "Order No.")
            {
            }
            column(Sales_Shipment_Header__Posting_Date_; "Posting Date")
            {
            }
            column(Sales_Shipment_Header__Shipment_Month_; "Shipment Month")
            {
            }
            column(Sales_Shipment_HeaderCaption; Sales_Shipment_HeaderCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Shipment_Header__No__Caption; FieldCaption("No."))
            {
            }
            column(Sales_Shipment_Header__Sell_to_Customer_No__Caption; FieldCaption("Sell-to Customer No."))
            {
            }
            column(Sales_Shipment_Header__Currency_Code_Caption; FieldCaption("Currency Code"))
            {
            }
            column(Sales_Shipment_Header__Order_No__Caption; FieldCaption("Order No."))
            {
            }
            column(Sales_Shipment_Header__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Sales_Shipment_Header__Shipment_Month_Caption; FieldCaption("Shipment Month"))
            {
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
        Sales_Shipment_HeaderCaptionLbl: Label 'Sales Shipment Header';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

