page 50999 "Fields Overview"
{
    PageType = Card;
    SourceTable = "Field";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(TableNo; TableNo)
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(TableName; TableName)
                {
                    ApplicationArea = All;
                }
                field(FieldName; FieldName)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field(Len; Len)
                {
                    ApplicationArea = All;
                }
                field(Class; Class)
                {
                    ApplicationArea = All;
                }
                field(Enabled; Enabled)
                {
                    ApplicationArea = All;
                }
                field("Type Name"; "Type Name")
                {
                    ApplicationArea = All;
                }
                field("Field Caption"; "Field Caption")
                {
                    ApplicationArea = All;
                }
                field(RelationTableNo; RelationTableNo)
                {
                    ApplicationArea = All;
                }
                field(RelationFieldNo; RelationFieldNo)
                {
                    ApplicationArea = All;
                }
                field(SQLDataType; SQLDataType)
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

