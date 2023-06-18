page 50011 "Table Lookup Lines."
{
    PageType = List;
    SaveValues = true;
    SourceTable = "Payroll-Lookup Lines.";
    SourceTableView = SORTING(TableId, "Lower Amount", "Lower Code");
    Caption = 'Table Lookup Lines.';
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Lower Amount"; Rec."Lower Amount")
                {
                    ApplicationArea = All;
                }
                field("Upper Amount"; Rec."Upper Amount")
                {
                    ApplicationArea = All;
                }
                field("Lower Code"; Rec."Lower Code")
                {
                    ApplicationArea = All;
                }
                field("Upper Code"; Rec."Upper Code")
                {
                    ApplicationArea = All;
                }
                field("Extract Amount"; Rec."Extract Amount")
                {
                    ApplicationArea = All;
                }
                field("Tax Rate %"; Rec."Tax Rate %")
                {
                    ApplicationArea = All;
                }
                field("Cum. Tax Payable"; Rec."Cum. Tax Payable")
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
