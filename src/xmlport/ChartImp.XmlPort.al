xmlport 50009 "ChartImp"
{
    Caption = 'ChartImp';
    schema
    {
        textelement(RootNode)
        {
            tableelement("G/L Account"; "G/L Account")
            {
                XmlName = 'GLAccount';
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
