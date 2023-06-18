xmlport 90999 "ImptCust"
{
    Format = VariableText;
    Caption = 'ImptCust';
    schema
    {
        textelement(RootNode)
        {
            tableelement(Customer; Customer)
            {
                XmlName = 'Customer';
                fieldelement(No; Customer."No.")
                {
                }
                fieldelement(Name; Customer.Name)
                {
                }
                fieldelement(Add; Customer.Address)
                {
                }
                fieldelement(PostCd; Customer."Post Code")
                {
                }
                fieldelement(PostCity; Customer.City)
                {
                }
                fieldelement(CountryCd; Customer."Country/Region Code")
                {
                }
                fieldelement(SalesP; Customer."Salesperson Code")
                {
                }
                fieldelement(GenPg; Customer."Gen. Bus. Posting Group")
                {
                }
                fieldelement(CustPg; Customer."Customer Posting Group")
                {
                }
                fieldelement(PayMetd; Customer."Payment Method Code")
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
