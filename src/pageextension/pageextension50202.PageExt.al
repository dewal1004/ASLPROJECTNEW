pageextension 50202 "pageextension50202" extends "Countries/Regions"
{
    layout
    {
        addafter("VAT Scheme")
        {
            field("License Fees Rate"; Rec."License Fees Rate")
            {
                ApplicationArea = All;
            }
        }
    }
}

