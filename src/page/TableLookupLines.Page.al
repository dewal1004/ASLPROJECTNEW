page 50011 "Table Lookup Lines."
{
    PageType = List;
    SaveValues = true;
    SourceTable = "Payroll-Lookup Lines.";
    SourceTableView = SORTING(TableId, "Lower Amount", "Lower Code");

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Lower Amount"; "Lower Amount")
                {
                    ApplicationArea = All;
                }
                field("Upper Amount"; "Upper Amount")
                {
                    ApplicationArea = All;
                }
                field("Lower Code"; "Lower Code")
                {
                    ApplicationArea = All;
                }
                field("Upper Code"; "Upper Code")
                {
                    ApplicationArea = All;
                }
                field("Extract Amount"; "Extract Amount")
                {
                    ApplicationArea = All;
                }
                field("Tax Rate %"; "Tax Rate %")
                {
                    ApplicationArea = All;
                }
                field("Cum. Tax Payable"; "Cum. Tax Payable")
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

