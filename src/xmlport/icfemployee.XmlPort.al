xmlport 50025 "icfemployee"
{
    Direction = Export;
    Format = VariableText;

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
                fieldelement(JobTitle; Employee."Job Title")
                {
                }
                fieldelement(FirstName; Employee."First Name")
                {
                }
                fieldelement(LastName; Employee."Last Name")
                {
                }
                fieldelement(MiddleName; Employee."Middle Name")
                {
                }
                fieldelement(Address; Employee.Address)
                {
                }
                fieldelement(Address2; Employee."Address 2")
                {
                }
                fieldelement(Sex; Employee.Gender)
                {
                }
                fieldelement(EmploymentDate; Employee."Employment Date")
                {
                }
                fieldelement(GlobalDimension1Code; Employee."Global Dimension 1 Code")
                {
                }
                fieldelement(GlobalDimension2Code; Employee."Global Dimension 2 Code")
                {
                }
                fieldelement(PostingGroup; Employee."Posting Group")
                {
                }
                fieldelement(BirthDate; Employee."Birth Date")
                {
                }
                fieldelement(Married; Employee.Married)
                {
                }
                fieldelement(NSITFNumber; Employee."NSITF Number")
                {
                }
                fieldelement(EmployeeGroup; Employee."Employee Group")
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

