xmlport 50001 "Employee csv"
{
    DefaultFieldsValidation = false;
    Direction = Import;
    Format = VariableText;

    schema
    {
        textelement(Node)
        {
            tableelement(Employee; Employee)
            {
                AutoSave = false;
                AutoUpdate = false;
                XmlName = 'Employee';
                fieldelement(No; Employee."No.")
                {
                    FieldValidate = no;
                }
                fieldelement(BirthDate; Employee."Birth Date")
                {
                    FieldValidate = no;
                }
                fieldelement(EmploymentDate; Employee."Employment Date")
                {
                }
                fieldelement(InactiveDate; Employee."Inactive Date")
                {
                    FieldValidate = no;
                }
                fieldelement(TerminationDate; Employee."Termination Date")
                {
                    FieldValidate = no;
                }
                fieldelement(SuspensionModifiedDate; Employee."Suspension Modified Date")
                {
                }
                fieldelement(BlockedModifiedDate; Employee."Employment Group")
                {
                    FieldValidate = no;
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
                fieldelement(JobTitle; Employee."Job Title")
                {
                }
                fieldelement(Address; Employee.Address)
                {
                }
                fieldelement(Address2; Employee."Address 2")
                {
                }
                fieldelement(City; Employee.City)
                {
                }
                fieldelement(PostCode; Employee."Post Code")
                {
                }
                fieldelement(County; Employee.County)
                {
                }
                fieldelement("PhoneNo."; Employee."Phone No.")
                {
                }
                fieldelement(MobilePhoneNo; Employee."Mobile Phone No.")
                {
                }
                fieldelement(Gender; Employee.Gender)
                {
                }
                fieldelement(CountryRegionCode; Employee."Country/Region Code")
                {
                }
                fieldelement(EmplymtContractCode; Employee."Emplymt. Contract Code")
                {
                }
                fieldelement(StatisticsGroupCode; Employee."Statistics Group Code")
                {
                }
                fieldelement(Status; Employee.Status)
                {
                }
                fieldelement(GroundsforTermCode; Employee."Grounds for Term. Code")
                {
                }
                fieldelement(GlobaDimension1Code; Employee."Global Dimension 1 Code")
                {
                }
                fieldelement(GlobalDimension2Code; Employee."Global Dimension 2 Code")
                {
                }
                fieldelement(Bank; Employee.Bank)
                {
                }
                fieldelement(BankAccount; Employee."Bank Account")
                {
                }
                fieldelement(PostingGroup; Employee."Posting Group")
                {
                    MinOccurs = Zero;
                }
                fieldelement(EmployeeGroup; Employee."Employee Group")
                {
                }
                fieldelement(Modeofpayment; Employee."Mode of payment")
                {
                }
                fieldelement(NationalIDNumer; Employee."National ID Number")
                {
                }
                fieldelement(NSITFNumber; Employee."NSITF Number")
                {
                }
                fieldelement("Acct.type"; Employee."Acct. type")
                {
                }
                fieldelement(AcctNo; Employee."Acct. No")
                {
                }
                fieldelement(Blocked; Employee.Blocked)
                {
                }
                fieldelement(ModifiedBY; Employee."Modified By")
                {
                }
                fieldelement(Married; Employee.Married)
                {
                }
                fieldelement(Grade; Employee.Grade)
                {
                }
                fieldelement(Step; Employee.Step)
                {
                }
                fieldelement(MPStatus; Employee."MP Status")
                {
                }
                fieldelement(EmplContrUniCode; Employee."Empl Contr Uni Code")
                {
                }
                fieldelement(Address3; Employee."Address 3")
                {
                }
                fieldelement(Suspended; Employee.Suspended)
                {
                }
                fieldelement(SuspensionModifiedBY; Employee."Suspension Modified By")
                {
                }
                fieldelement(BlockedModifiedBY; Employee."Blocked Modified By")
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

