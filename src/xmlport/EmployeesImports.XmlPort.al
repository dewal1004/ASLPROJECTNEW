xmlport 99999 "Employees Imports"
{
    Format = VariableText;
    Caption = 'Employees Imports';
    schema
    {
        textelement(Rootnode)
        {
            tableelement(Employee; Employee)
            {
                AutoReplace = false;
                AutoUpdate = true;
                XmlName = 'Employee';
                fieldelement(a; Employee."No.")
                {
                }
                fieldelement(p; Employee."Birth Date")
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
