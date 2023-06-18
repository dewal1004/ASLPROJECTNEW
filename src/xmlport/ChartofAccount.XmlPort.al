xmlport 50008 "Chart of Account"
{
    Direction = Import;
    Format = VariableText;
    Caption = 'Chart of Account';
    schema
    {
        textelement(Root)
        {
            tableelement("G/L Account"; "G/L Account")
            {
                XmlName = 'GLAccount';
                textattribute(acct)
                {
                }
                textattribute(Desc)
                {
                }
                fieldattribute(typeof; "G/L Account"."Income/Balance")
                {
                }
                textattribute(styles)
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
