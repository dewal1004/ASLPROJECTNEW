page 83921 "Object Menu"
{
    PageType = Card;
    SourceTable = "Object";
    UsageCategory = Administration;
    ApplicationArea = All,Basic;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Type; Type)
                {
                }
                field("Company Name"; "Company Name")
                {
                }
                field(ID; ID)
                {
                }
                field(Name; Name)
                {
                }
                field(Modified; Modified)
                {
                }
                field(Compiled; Compiled)
                {
                }
                field("BLOB Reference"; "BLOB Reference")
                {
                }
                field("BLOB Size"; "BLOB Size")
                {
                }
                field("DBM Table No."; "DBM Table No.")
                {
                }
                field(Date; Date)
                {
                }
                field(Time; Time)
                {
                }
                field("Version List"; "Version List")
                {
                }
            }
        }
    }

    actions
    {
    }
}

