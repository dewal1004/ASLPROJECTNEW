xmlport 50019 "Inventory Posting Grp"
{
    Format = VariableText;

    schema
    {
        textelement(RootNode)
        {
            tableelement("Inventory Posting Group"; "Inventory Posting Group")
            {
                XmlName = 'InventoryPostingGroup';
                fieldelement(cod; "Inventory Posting Group".Code)
                {
                }
                fieldelement(des; "Inventory Posting Group".Description)
                {
                }
                fieldelement(sta; "Inventory Posting Group"."Statistics Group")
                {
                }
                fieldelement(cat; "Inventory Posting Group".Category)
                {
                }
                fieldelement(Inu; "Inventory Posting Group"."In Use")
                {
                }
                fieldelement(s; "Inventory Posting Group"."S/No.")
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

