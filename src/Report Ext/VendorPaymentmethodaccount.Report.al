report 99992 "Vendor Payment method=account;"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VendorPaymentmethodaccount.rdlc';
    Caption = 'Vendor Payment method=account;';
    dataset
    {
        dataitem(Vendor; Vendor)
        {
            RequestFilterFields = "No.";
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
            column(Vendor__No__; "No.")
            {
            }
            column(Vendor_Name; Name)
            {
            }
            column(Vendor__Payment_Method_Code_; "Payment Method Code")
            {
            }
            column(VendorCaption; VendorCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Vendor__No__Caption; FieldCaption("No."))
            {
            }
            column(Vendor_NameCaption; FieldCaption(Name))
            {
            }
            column(Vendor__Payment_Method_Code_Caption; FieldCaption("Payment Method Code"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if "Payment Method Code" <> 'BANK' then "Payment Method Code" := 'ACCOUNT';
                Modify();
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
        VendorCaptionLbl: Label 'Vendor';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
