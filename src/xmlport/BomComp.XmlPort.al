xmlport 50005 "BomComp"
{
    Direction = Import;
    Format = VariableText;
    Caption = 'BomComp';
    schema
    {
        textelement(ROOT)
        {
            tableelement("BOM Component"; "BOM Component")
            {
                AutoSave = false;
                XmlName = 'BOMComponent';
                textattribute(ItNo)
                {
                }
                textattribute(SN)
                {
                }
                textattribute(Descp)
                {
                }
                textattribute(UOM)
                {
                }
                textattribute(qty)
                {
                }
                textattribute(qty2)
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
