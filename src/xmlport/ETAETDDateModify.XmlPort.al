xmlport 50054 "ETA/ETD Date Modify"
{
    Caption = 'ETA/ETD Date Modify';
    schema
    {
        textelement(RootNode)
        {
            tableelement(Integer; Integer)
            {
                XmlName = 'Integer';
            }
            textelement(xno)
            {
            }
            textelement(xetd)
            {
            }
            textelement(xeta)
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
