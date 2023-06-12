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
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("Company Name"; Rec."Company Name")
                {
                    ApplicationArea = All;
                }
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Modified; Rec.Modified)
                {
                    ApplicationArea = All;
                }
                field(Compiled; Rec.Compiled)
                {
                    ApplicationArea = All;
                }
                field("BLOB Reference"; Rec."BLOB Reference")
                {
                    ApplicationArea = All;
                }
                field("BLOB Size"; Rec."BLOB Size")
                {
                    ApplicationArea = All;
                }
                field("DBM Table No."; Rec."DBM Table No.")
                {
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field(Time; Rec.Time)
                {
                    ApplicationArea = All;
                }
                field("Version List"; Rec."Version List")
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

