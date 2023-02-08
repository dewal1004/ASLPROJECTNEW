pageextension 50301 "pageextension50301" extends "Misc. Article Information"
{
    layout
    {
        addafter("In Use")
        {
            field("Mat Type"; "Mat Type")
            {
                ApplicationArea = All;
            }
            field("Item No."; "Item No.")
            {
                ApplicationArea = All;
            }
            field(Returnable; Returnable)
            {
                ApplicationArea = All;
            }
            field("Default Quantity"; "Default Quantity")
            {
                ApplicationArea = All;
            }
            field("Last Date Collected"; "Last Date Collected")
            {
                ApplicationArea = All;
            }
        }
        addafter(Control1905767507)
        {
            part("Collection History"; "Employee Material Issue")
            {
                SubPageLink = "Claim by Employee" = FIELD("Employee No."),
                              Processed = CONST(true),
                              "Item No." = FIELD("Item No.");
                ApplicationArea = All;
            }
        }
    }
}

