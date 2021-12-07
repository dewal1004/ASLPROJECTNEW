xmlport 55555 "Employee dates"
{
    Format = VariableText;

    schema
    {
        textelement(Rootnode)
        {
            tableelement(Employee; Employee)
            {
                AutoReplace = false;
                AutoUpdate = true;
                XmlName = 'Employee';
                fieldelement(No; Employee."No.")
                {
                }
                fieldelement(FName; Employee."First Name")
                {
                }
                fieldelement(Lname; Employee."Last Name")
                {
                }
                textelement(tempdate1)
                {
                    XmlName = 'DOB';
                }
                textelement(tempdate2)
                {
                    XmlName = 'EmployementDate';
                }
                textelement(tempdate3)
                {
                    XmlName = 'Inactivedate';
                }
                textelement(tempdate4)
                {
                    XmlName = 'Terminationdate';
                }
                textelement(tempdate5)
                {
                    XmlName = 'Suspensiondate';
                }
                textelement(tempdate6)
                {
                    XmlName = 'blockeddate';
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

