page 83921 "Object Menu"
{
    PageType = Card;
    SourceTable = "Object";
    UsageCategory = Administration;
    ApplicationArea = All, Basic;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field("Company Name"; "Company Name")
                {
                    ApplicationArea = All;
                }
                field(ID; ID)
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Modified; Modified)
                {
                    ApplicationArea = All;
                }
                field(Compiled; Compiled)
                {
                    ApplicationArea = All;
                }
                field("BLOB Reference"; "BLOB Reference")
                {
                    ApplicationArea = All;
                }
                field("BLOB Size"; "BLOB Size")
                {
                    ApplicationArea = All;
                }
                field("DBM Table No."; "DBM Table No.")
                {
                    ApplicationArea = All;
                }
                field(Date; Date)
                {
                    ApplicationArea = All;
                }
                field(Time; Time)
                {
                    ApplicationArea = All;
                }
                field("Version List"; "Version List")
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

