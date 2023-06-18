xmlport 50997 "employee grp"
{
    Direction = Export;
    Format = VariableText;
    Caption = 'employee grp';
    schema
    {
        textelement(Rootnode)
        {
            tableelement(Employee; Employee)
            {
                XmlName = 'Employee';
                fieldelement(No; Employee."No.")
                {
                }
                fieldelement(EmploymentGroup; Employee."Employment Group")
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
