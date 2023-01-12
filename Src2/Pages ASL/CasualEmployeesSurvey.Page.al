page 50047 "Casual Employees Survey"
{
    PageType = Card;
    SourceTable = "Casual Employees";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Employee No Filter"; "Employee No Filter")
                {
                    ApplicationArea = All;
                }
                field("Job Code Filter"; "Job Code Filter")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Filter"; "Global Dimension 2 Filter")
                {
                    ApplicationArea = All;
                }
                field("Date Employed Filter"; "Date Employed Filter")
                {
                    ApplicationArea = All;
                }
                field("Leaving Date Filter"; "Leaving Date Filter")
                {
                    ApplicationArea = All;
                }
                field("Employee Count"; "Employee Count")
                {
                    ApplicationArea = All;
                }
            }
            part("Medical Subform"; "Casual Employees subform")
            {
                SubPageLink = "No." = FIELD("Employee No Filter"),
                              "Job Code" = FIELD("Job Code Filter"),
                              "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                              "Date Employed" = FIELD("Date Employed Filter"),
                              "Leaving Date" = FIELD("Leaving Date Filter");
                SubPageView = SORTING("Global Dimension 2 Code", "Job Code", "Date of Birth", "Leaving Date");
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

    //[Scope('OnPrem')]
    procedure SumCost(): Decimal
    begin
    end;
}

