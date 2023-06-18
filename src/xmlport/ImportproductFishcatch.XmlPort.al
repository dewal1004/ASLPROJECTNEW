xmlport 50006 "Import product - Fish catch"
{
    Direction = Import;
    Format = VariableText;
    Caption = 'Import product - Fish catch';
    schema
    {
        textelement(ROOT)
        {
            tableelement(Item; Item)
            {
                AutoSave = false;
                XmlName = 'Item';
                textattribute(cd)
                {
                }
                textattribute(Des1)
                {
                }
                textattribute(Des2)
                {
                }
                textattribute(Des3)
                {
                }
                textattribute(Points)
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
