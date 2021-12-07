page 50030 "MP Budget Entries"
{
    DataCaptionFields = "Employee Grp", "Budget Name";
    DeleteAllowed = false;
    Editable = true;
    InsertAllowed = false;
    PageType = Card;
    SourceTable = "MP Budget Entry";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Budget Name"; "Budget Name")
                {
                    Editable = false;
                }
                field(Date; Date)
                {
                    Editable = false;
                }
                field("Employee Grp"; "Employee Grp")
                {
                    Editable = false;
                }
                field(Description; Description)
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    Editable = false;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Editable = false;
                }
                field("Region Code"; "Region Code")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Employee Count"; "Employee Count")
                {
                    DecimalPlaces = 0 : 0;
                    Editable = false;
                }
                field("Entry No."; "Entry No.")
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }
}

