report 99212 "Modify Export Order No"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ModifyExportOrderNo.rdlc';

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
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
            column(Sales_Invoice_Header__No__; "No.")
            {
            }
            column(Sales_Invoice_Header__External_Document_No__; "External Document No.")
            {
            }
            column(Sales_Invoice_Header__Order_No__; "Order No.")
            {
            }
            column(Sales_Invoice_Header__Posting_Date_; "Posting Date")
            {
            }
            column(Sales_Invoice_HeaderCaption; Sales_Invoice_HeaderCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Invoice_Header__No__Caption; FieldCaption("No."))
            {
            }
            column(Sales_Invoice_Header__External_Document_No__Caption; FieldCaption("External Document No."))
            {
            }
            column(Sales_Invoice_Header__Order_No__Caption; FieldCaption("Order No."))
            {
            }
            column(Sales_Invoice_Header__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Evaluate(nos, CopyStr("No.", 13, 3));
                "External Document No." := CopyStr("No.", 1, 12) + Format(nos - 166);
                //MODIFY();
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
        nos: Integer;
        Sales_Invoice_HeaderCaptionLbl: Label 'Sales Invoice Header';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

