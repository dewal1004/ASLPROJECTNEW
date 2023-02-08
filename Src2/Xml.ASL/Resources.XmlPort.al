xmlport 50026 "Resources"
{
    Direction = Export;
    Format = VariableText;

    schema
    {
        textelement(Rootnode)
        {
            tableelement(Resource; Resource)
            {
                XmlName = 'Resource';
                fieldelement("No.Series"; Resource."No. Series")
                {
                }
                fieldelement(Title; Resource."Job Title")
                {
                }
                fieldelement("No."; Resource."No.")
                {
                }
                fieldelement(Name; Resource.Name)
                {
                }
                fieldelement(SearchName; Resource."Search Name")
                {
                }
                fieldelement(Address; Resource.Address)
                {
                }
                fieldelement(Address2; Resource."Address 2")
                {
                }
                fieldelement(EmploymentDate; Resource."Employment Date")
                {
                }
                fieldelement(GlobalDimension1Code; Resource."Global Dimension 1 Code")
                {
                }
                fieldelement(GlobalDimension2Code; Resource."Global Dimension 2 Code")
                {
                }
                fieldelement(Type; Resource.Type)
                {
                }
                fieldelement(City; Resource.City)
                {
                }
                fieldelement(UnitofMeasureCode; Resource."Unit of Measure Filter")
                {
                }
                fieldelement("Gen.Prod.PostingGroup"; Resource."Gen. Prod. Posting Group")
                {
                }
                fieldelement(CountryCode; Resource."Country/Region Code")
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

