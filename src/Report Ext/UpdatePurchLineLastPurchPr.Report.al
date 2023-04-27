report 90004 "Update PurchLine Last Purch Pr"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdatePurchLineLastPurchPr.rdlc';

    dataset
    {
        dataitem("Purch. Inv. Line"; "Purch. Inv. Line")
        {
            RequestFilterFields = "Document No.";
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
            column(Purch__Inv__Line__Buy_from_Vendor_No__; "Buy-from Vendor No.")
            {
            }
            column(Purch__Inv__Line__Document_No__; "Document No.")
            {
            }
            column(Purch__Inv__Line__Line_No__; "Line No.")
            {
            }
            column(Purch__Inv__LineCaption; Purch__Inv__LineCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Purch__Inv__Line__Buy_from_Vendor_No__Caption; FieldCaption("Buy-from Vendor No."))
            {
            }
            column(Purch__Inv__Line__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Purch__Inv__Line__Line_No__Caption; FieldCaption("Line No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                if itemrec.Get("Purch. Inv. Line"."No.")

                   then
                    "Purch. Inv. Line"."Previous Purchase Price(LCY)" := itemrec."Last Purchase Cost";

                "Purch. Inv. Line".Modify();
            end;
        }
        dataitem("Purch. Rcpt. Line"; "Purch. Rcpt. Line")
        {

            trigger OnAfterGetRecord()
            begin
                if itemrec.Get("Purch. Rcpt. Line"."No.") then
                    "Purch. Rcpt. Line"."Previous Purchase Price(LCY)" := itemrec."Last Purchase Cost";
                "Purch. Rcpt. Line".Modify();
            end;
        }
        dataitem("Purchase Line"; "Purchase Line")
        {

            trigger OnAfterGetRecord()
            begin
                if itemrec.Get("Purchase Line"."No.") then
                    "Purchase Line"."Previous Purchase Price(LCY)" := itemrec."Last Purchase Cost";
                "Purchase Line".Modify();
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
        itemrec: Record Item;
        PurRec: Record "Purch. Rcpt. Line";
        PurOrd: Record "Purchase Line";
        Purch__Inv__LineCaptionLbl: Label 'Purch. Inv. Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

