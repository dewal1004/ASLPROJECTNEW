xmlport 90301 "Import product - Invt Postg Gr"
{
    Format = VariableText;

    schema
    {
        textelement(Rootnode)
        {
            tableelement("Inventory Posting Group"; "Inventory Posting Group")
            {
                XmlName = 'InventoryPostingGroup';
                fieldelement(cd; "Inventory Posting Group".Code)
                {
                }
                fieldelement(cat; "Inventory Posting Group".Category)
                {
                }
                fieldelement(Desc; "Inventory Posting Group".Description)
                {
                }
                fieldelement(PGrpCd; "Inventory Posting Group"."Group Code")
                {
                }
                textelement(StatCd)
                {
                }
                fieldelement(Pts; "Inventory Posting Group".Points)
                {
                }
                textelement(Class)
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

