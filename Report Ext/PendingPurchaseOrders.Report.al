report 50035 "Pending Purchase Orders"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PendingPurchaseOrders.rdlc';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
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
            column(Purchase_Header__Document_Type_; "Document Type")
            {
            }
            column(Purchase_Header__No__; "No.")
            {
            }
            column(Purchase_Header__Pay_to_Name_; "Pay-to Name")
            {
            }
            column(Purchase_Header__Pay_to_Contact_; "Pay-to Contact")
            {
            }
            column(Purchase_Header__Due_Date_; "Due Date")
            {
            }
            column(Purchase_Header__Line_Amount_; "Line Amount")
            {
            }
            column(Telephone; Telephone)
            {
            }
            column(OverDue; OverDue)
            {
            }
            column(TotalFor___FIELDCAPTION__Document_Type__; TotalFor + FieldCaption("Document Type"))
            {
            }
            column(Purchase_Header__Line_Amount__Control29; "Line Amount")
            {
            }
            column(List_of_Pending_Purchase_OrderCaption; List_of_Pending_Purchase_OrderCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Purchase_Header__No__Caption; FieldCaption("No."))
            {
            }
            column(Purchase_Header__Pay_to_Name_Caption; FieldCaption("Pay-to Name"))
            {
            }
            column(Purchase_Header__Pay_to_Contact_Caption; FieldCaption("Pay-to Contact"))
            {
            }
            column(Purchase_Header__Due_Date_Caption; FieldCaption("Due Date"))
            {
            }
            column(Over_Due_DaysCaption; Over_Due_DaysCaptionLbl)
            {
            }
            column(Purchase_Header__Line_Amount_Caption; FieldCaption("Line Amount"))
            {
            }
            column(Telephone_No_Caption; Telephone_No_CaptionLbl)
            {
            }
            column(Purchase_Header__Document_Type_Caption; FieldCaption("Document Type"))
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        "---": Text[30];
        VendTab: Record Vendor;
        Telephone: Text[30];
        OverDue: Integer;
        List_of_Pending_Purchase_OrderCaptionLbl: Label 'List of Pending Purchase Order';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Over_Due_DaysCaptionLbl: Label 'Over Due Days';
        Telephone_No_CaptionLbl: Label 'Telephone No.';
}

