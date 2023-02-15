xmlport 90402 "FA Import2"
{
    Format = VariableText;

    schema
    {
        textelement(RootNode)
        {
            tableelement("Fixed Asset"; "Fixed Asset")
            {
                XmlName = 'FixedAsset';
                textelement(PG)
                {
                }
                textelement(SUBCLASS)
                {
                }
                fieldelement(DESC; "Fixed Asset".Description)
                {
                }
                fieldelement(SNO; "Fixed Asset"."Serial No.")
                {
                }
                fieldelement(BU; "Fixed Asset"."Budgeted Asset")
                {
                }
                fieldelement(LOC; "Fixed Asset"."Location Code")
                {
                }
                fieldelement(RESPEMP; "Fixed Asset"."Responsible Employee")
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
                textelement(NV)
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

