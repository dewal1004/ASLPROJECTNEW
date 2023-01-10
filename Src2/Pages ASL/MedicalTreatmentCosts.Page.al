page 50040 "Medical Treatment Costs"
{
    PageType = Card;
    SourceTable = "Medical Record";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Date Filter"; "Date Filter")
                {
                }
                field("Employee Filter"; "Employee Filter")
                {
                }
                field("Beneficiary Filter"; "Beneficiary Filter")
                {
                }
                field("Region Filter"; "Region Filter")
                {
                }
                field("Global Dimension 1 Filter"; "Global Dimension 1 Filter")
                {
                }
                field("Global Dimension 2 Filter"; "Global Dimension 2 Filter")
                {
                }
                field("Transaction  Filter"; "Transaction  Filter")
                {
                }
                field("Hospital Filter"; "Hospital Filter")
                {
                }
                field("Clinic Cost"; "Clinic Cost")
                {
                }
                field("Reimbursed Cost"; "Reimbursed Cost")
                {
                }
                field("Hospital Cost"; "Hospital Cost")
                {
                }
                field("Treatment Cost"; "Treatment Cost")
                {
                }
            }
            part("Hospital Treatments"; "Medical Record List")
            {
                SubPageLink = "Region Code" = FIELD("Region Filter"),
                              "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                              "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                              "Employee No" = FIELD("Employee Filter"),
                              Beneficiary = FIELD("Beneficiary Filter"),
                              "Transaction Type" = FIELD("Transaction  Filter"),
                              "Transaction Date" = FIELD("Date Filter"),
                              "Hospital Code" = FIELD("Hospital Filter");
            }
        }
    }

    actions
    {
    }

    var
        VendRec: Record Vendor;
        HospName: Text[60];
        MediRec: Record "Medical Record";
        BenFilter: Option " ",Self,Dependant;
        TransFilter: Option " ",C,R,H;

    //[Scope('OnPrem')]
    procedure UpdateFilter()
    begin
        Rec."Beneficiary Filter" := BenFilter;
        Validate(Rec."Transaction  Filter", TransFilter);

        //CurrForm.UPDATE;
        //MESSAGE(FORMAT("Transaction  Filter"));
    end;
}

