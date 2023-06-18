xmlport 50007 "Fising area"
{
    Caption = 'Fising area';
    schema
    {
        textelement(RootNode)
        {
            tableelement("Fishing Area +"; "Fishing Area +")
            {
                XmlName = 'FishingArea';
                fieldelement(n; "Fishing Area +"."No.")
                {
                }
                textelement(a)
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
