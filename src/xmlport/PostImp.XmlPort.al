xmlport 50010 "Post Imp"
{
    Format = VariableText;
    Caption = 'Post Imp';
    schema
    {
        textelement(RootNode)
        {
            tableelement("Employment Contract"; "Employment Contract")
            {
                XmlName = 'EmploymentContract';
                textelement(a)
                {
                }
                textelement(b)
                {
                }
                textelement(c)
                {
                }
                textelement(d)
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
