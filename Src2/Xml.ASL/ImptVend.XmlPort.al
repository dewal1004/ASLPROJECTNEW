xmlport 90998 "ImptVend"
{
    Format = VariableText;

    schema
    {
        textelement(Rootnode)
        {
            tableelement(Vendor; Vendor)
            {
                XmlName = 'Vendor';
                fieldelement(NoA; Vendor."No.")
                {
                }
                fieldelement(NameA; Vendor.Name)
                {
                }
                fieldelement(Add; Vendor.Address)
                {
                }
                fieldelement(Add2; Vendor."Address 2")
                {
                }
                fieldelement(PostCd; Vendor."Post Code")
                {
                }
                fieldelement(PostCity; Vendor.City)
                {
                }
                fieldelement(CountryCd; Vendor."Currency Code")
                {
                }
                fieldelement(phone; Vendor."Phone No.")
                {
                }
                fieldelement(PurchCode; Vendor."Purchaser Code")
                {
                }
                fieldelement(GenPg; Vendor."Gen. Bus. Posting Group")
                {
                }
                fieldelement(VatPg; Vendor."VAT Bus. Posting Group")
                {
                }
                fieldelement(VendPg; Vendor."Vendor Posting Group")
                {
                }
                fieldelement(ApplicMeth; Vendor."Application Method")
                {
                }
                fieldelement(PayTerm; Vendor."Payment Terms Code")
                {
                }
                fieldelement(PayMeth; Vendor."Payment Method Code")
                {
                }
                fieldelement(ShipmentCd; Vendor."Shipment Method Code")
                {
                }
                fieldelement(LeadTCalc; Vendor."Lead Time Calculation")
                {
                }
                fieldelement(Faxno; Vendor."Fax No.")
                {
                }
                fieldelement(Contact; Vendor.Contact)
                {
                }
                fieldelement(PriceTax; Vendor."Prices Including VAT")
                {
                }
                textelement(BU)
                {
                }
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
}

