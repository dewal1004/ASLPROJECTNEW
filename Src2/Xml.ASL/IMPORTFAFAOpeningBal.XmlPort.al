xmlport 99009 "IMPORT FA & FA Opening Bal"
{
    Format = VariableText;

    schema
    {
        textelement(RootNode)
        {
            tableelement("Fixed Asset"; "Fixed Asset")
            {
                XmlName = 'FixedAsset';
                textelement(DEPT)
                {
                }
                fieldelement(RESPONSIBLE; "Fixed Asset"."Responsible Employee")
                {
                }
                textelement(ASSETCAT)
                {
                }
                textelement(D1)
                {
                }
                textelement(D2)
                {
                }
                textelement(D3)
                {
                }
                textelement(D4)
                {
                }
                textelement(D5)
                {
                }
                fieldelement(SNO; "Fixed Asset"."Serial No.")
                {
                }
                textelement(D6)
                {
                }
                textelement(SYS)
                {
                }
                textelement(QTY)
                {
                }
                textelement(ASSNO)
                {
                }
                textelement(ACQDAT)
                {
                }
                textelement(COST)
                {
                }
                textelement(PROJ)
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

