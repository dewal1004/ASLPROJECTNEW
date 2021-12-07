page 50011 "Table Lookup Lines."
{
    PageType = List;
    SaveValues = true;
    SourceTable = "Payroll-Lookup Lines.";
    SourceTableView = SORTING (TableId, "Lower Amount", "Lower Code");

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Lower Amount"; "Lower Amount")
                {
                }
                field("Upper Amount"; "Upper Amount")
                {
                }
                field("Lower Code"; "Lower Code")
                {
                }
                field("Upper Code"; "Upper Code")
                {
                }
                field("Extract Amount"; "Extract Amount")
                {
                }
                field("Tax Rate %"; "Tax Rate %")
                {
                }
                field("Cum. Tax Payable"; "Cum. Tax Payable")
                {
                }
            }
        }
    }

    actions
    {
    }
}

