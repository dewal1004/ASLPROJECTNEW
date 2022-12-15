xmlport 50998 employee
{
    Format = VariableText;

    schema
    {
        textelement(RootNode)
        {
            tableelement(Employee; Employee)
            {
                XmlName = 'Employee';
                fieldelement("No."; Employee."No.")
                {
                }
                fieldelement(FirstName; Employee."First Name")
                {
                }
                fieldelement(MiddleName; Employee."Middle Name")
                {
                }
                fieldelement(LastName; Employee."Last Name")
                {
                }
                fieldelement(Initials; Employee.Initials)
                {
                }
                fieldelement(JobTitle; Employee."Job Title")
                {
                }
                fieldelement(Address; Employee.Address)
                {
                }
                fieldelement(City; Employee.City)
                {
                }
                fieldelement("PhoneNo."; Employee."Phone No.")
                {
                }
                fieldelement("MobilePhoneNo."; Employee."Mobile Phone No.")
                {
                }
                fieldelement("E-Mail"; Employee."E-Mail")
                {
                }
                fieldelement(Address2; Employee."Address 2")
                {
                }
                fieldelement(BirthDate; Employee."Birth Date")
                {
                }
                fieldelement(Sex; Employee.Gender)
                {
                }
                fieldelement(EmploymentDate; Employee."Employment Date")
                {
                }
                fieldelement(Status; Employee.Status)
                {
                }
                fieldelement(NSITFNumber; Employee."NSITF Number")
                {
                }
                fieldelement(PlaceofBirth; Employee."Place of Birth")
                {
                }
                fieldelement(LeaveDaysTaken; Employee."Leave Days Taken")
                {
                }
                fieldelement(LeaveDays; Employee."Leave Days")
                {
                }
                fieldelement(Married; Employee.Married)
                {
                }
                fieldelement(MPStatus; Employee."MP Status")
                {
                }
                fieldelement(Passportno; Employee."Passport no")
                {
                }
                fieldelement(PlaceofIssue; Employee."Place of Issue")
                {
                }
                fieldelement(DateIssued; Employee."Date Issued")
                {
                }
                fieldelement(Expirydate; Employee."Expiry date")
                {
                }
                fieldelement(CerpacNoCode; Employee."Cerpac No/Code")
                {
                }
                fieldelement(CerpacExpirydate; Employee."Cerpac Expiry date")
                {
                }
                fieldelement(PostingGroup; Employee."Posting Group")
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

