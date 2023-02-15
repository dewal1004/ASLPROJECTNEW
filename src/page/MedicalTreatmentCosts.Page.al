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
                    ApplicationArea = All;
                }
                field("Employee Filter"; "Employee Filter")
                {
                    ApplicationArea = All;
                }
                field("Beneficiary Filter"; "Beneficiary Filter")
                {
                    ApplicationArea = All;
                }
                field("Region Filter"; "Region Filter")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Filter"; "Global Dimension 1 Filter")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Filter"; "Global Dimension 2 Filter")
                {
                    ApplicationArea = All;
                }
                field("Transaction  Filter"; "Transaction  Filter")
                {
                    ApplicationArea = All;
                }
                field("Hospital Filter"; "Hospital Filter")
                {
                    ApplicationArea = All;
                }
                field("Clinic Cost"; "Clinic Cost")
                {
                    ApplicationArea = All;
                }
                field("Reimbursed Cost"; "Reimbursed Cost")
                {
                    ApplicationArea = All;
                }
                field("Hospital Cost"; "Hospital Cost")
                {
                    ApplicationArea = All;
                }
                field("Treatment Cost"; "Treatment Cost")
                {
                    ApplicationArea = All;
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
                ApplicationArea = All;
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

    [Scope('OnPrem')]
    procedure UpdateFilter()
    begin
        Rec."Beneficiary Filter" := BenFilter;
        Validate(Rec."Transaction  Filter", TransFilter);

        //CurrForm.UPDATE;
        //MESSAGE(FORMAT("Transaction  Filter"));
    end;
}

