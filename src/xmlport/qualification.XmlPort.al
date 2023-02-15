xmlport 50027 "qualification"
{
    Direction = Export;
    Format = VariableText;

    schema
    {
        textelement(Rootnode)
        {
            tableelement(Qualification; Qualification)
            {
                XmlName = 'Qualification';
                fieldelement(Code; Qualification.Code)
                {
                }
                fieldelement(Description; Qualification.Description)
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

