xmlport 50003 "Vessel as Location"
{
    Direction = Import;
    Format = VariableText;

    schema
    {
        textelement(Root)
        {
            tableelement(Location; Location)
            {
                XmlName = 'Location';
                textattribute(oruko)
                {
                }
                textattribute(aditu)
                {
                }
                textattribute(ileise)
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

