page 50048 "Casual Employees subform"
{
    Editable = false;
    PageType = ListPart;
    SourceTable = "Casual Employees";
    Caption = 'Casual Employees subform';
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                Editable = false;
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Employee name"; Rec."Employee name")
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field(Sex; Rec.Sex)
                {
                    ApplicationArea = All;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                }
                field("Job Code"; Rec."Job Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Date Employed"; Rec."Date Employed")
                {
                    ApplicationArea = All;
                }
                field("Leaving Date"; Rec."Leaving Date")
                {
                    ApplicationArea = All;
                }
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
            }
        }
    }

    actions
    {
    }
}
