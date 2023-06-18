xmlport 50052 "inv jnl"
{
    Caption = 'inv jnl';
    schema
    {
        textelement(Rootnode)
        {
            tableelement(Integer; Integer)
            {
                XmlName = 'Integer';
            }
            textelement(code)
            {
            }
            textelement(qty)
            {
            }
            textelement(loc)
            {
            }
            textelement(unitcost)
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
