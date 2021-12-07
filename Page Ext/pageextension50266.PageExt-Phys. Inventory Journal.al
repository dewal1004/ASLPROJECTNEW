pageextension 50266 pageextension50266 extends "Phys. Inventory Journal"
{
    layout
    {
        // modify(ShortcutDimCode8)
        // {
        //     Visible = false;
        // }
        Moveafter(ShortcutDimCode7; ShortcutDimCode8)

        modify(ShortcutDimCode8)
        {
            ApplicationArea = Dimensions;
            CaptionClass = '1,2,8';
            Visible = DimVisible8;

            trigger OnAfterValidate()
            begin
                ValidateShortcutDimCode(8, ShortcutDimCode[8]);

                //*** OnAfterValidateShortcutDimCode(Rec, ShortcutDimCode, 8);
            end;
        }

    }
    actions
    {
        addafter("Phys. In&ventory Ledger Entries")
        {
            action("Item &Tracking Entries")
            {
                RunObject = Page "Item Tracking Entries";
            }
        }
    }
}

