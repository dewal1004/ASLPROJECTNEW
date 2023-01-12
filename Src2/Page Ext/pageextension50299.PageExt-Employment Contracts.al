pageextension 50299 pageextension50299 extends "Employment Contracts"
{
    layout
    {
        addafter(Description)
        {
            field("Global Dimension 1 Code"; "Global Dimension 1 Code")
            {
                ApplicationArea = All;
            }
            field(ResCode; ResCode)
            {
                ApplicationArea = All;
            }
            field(Group; Group)
            {
                ApplicationArea = All;
            }
            field("Unique Cd No"; "Unique Cd No")
            {
                ApplicationArea = All;
            }
        }
    }
}

