xmlport 90302 "FA Import"
{
    Format = VariableText;

    schema
    {
        textelement(RootNode)
        {
            tableelement("Fixed Asset"; "Fixed Asset")
            {
                XmlName = 'FixedAsset';
                fieldelement(NOS; "Fixed Asset"."No. Series")
                {
                }
                textelement(CODE)
                {
                }
                fieldelement(DESC; "Fixed Asset".Description)
                {
                }
                fieldelement(RESPEMP; "Fixed Asset"."Responsible Employee")
                {
                }
                textelement(CLASS)
                {
                }
                textelement(SUBCLASS)
                {
                }
                fieldelement(LOC; "Fixed Asset"."Location Code")
                {
                }
                textelement(DEPSTAD)
                {
                }
                textelement(DEPEND)
                {
                }
                textelement(ACQDATE)
                {
                }
                textelement(ACQCOST)
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

