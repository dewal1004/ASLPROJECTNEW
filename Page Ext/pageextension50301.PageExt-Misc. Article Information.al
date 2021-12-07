pageextension 50301 pageextension50301 extends "Misc. Article Information"
{
    layout
    {
        addafter("In Use")
        {
            field("Mat Type"; "Mat Type")
            {
            }
            field("Item No."; "Item No.")
            {
            }
            field(Returnable; Returnable)
            {
            }
            field("Default Quantity"; "Default Quantity")
            {
            }
            field("Last Date Collected"; "Last Date Collected")
            {
            }
        }
        addafter(Control1905767507)
        {
            part("Collection History"; "Employee Material Issue")
            {
                SubPageLink = "Claim by Employee" = FIELD ("Employee No."),
                              Processed = CONST (true),
                              "Item No." = FIELD ("Item No.");
            }
        }
    }
}

