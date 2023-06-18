pageextension 50202 "Countries/RegionsExt" extends "Countries/Regions"
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
