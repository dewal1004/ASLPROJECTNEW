xmlport 50051 "fixed assets"
{
    Caption = 'fixed assets';
    schema
    {
        textelement(Rootnode)
        {
            tableelement(Integer; Integer)
            {
                XmlName = 'Integer';
            }
            textelement(xcode)
            {
            }
            textelement(type)
            {
            }
            textelement(depdate)
            {
            }
            textelement(amt)
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
}
