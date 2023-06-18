page 50047 "Casual Employees Survey"
{
    PageType = Card;
    SourceTable = "Casual Employees";
    Caption = 'Casual Employees Survey';
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Employee No Filter"; Rec."Employee No Filter")
                {
                    ApplicationArea = All;
                }
                field("Job Code Filter"; Rec."Job Code Filter")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Filter"; Rec."Global Dimension 2 Filter")
                {
                    ApplicationArea = All;
                }
                field("Date Employed Filter"; Rec."Date Employed Filter")
                {
                    ApplicationArea = All;
                }
                field("Leaving Date Filter"; Rec."Leaving Date Filter")
                {
                    ApplicationArea = All;
                }
                field("Employee Count"; Rec."Employee Count")
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

    [Scope('OnPrem')]
    procedure SumCost(): Decimal
    begin
    end;
}
