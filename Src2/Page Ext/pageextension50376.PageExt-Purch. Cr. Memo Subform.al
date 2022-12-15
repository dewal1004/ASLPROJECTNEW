pageextension 50376 pageextension50376 extends "Purch. Cr. Memo Subform"
{
    layout
    {
        addafter(ShortcutDimCode8)
        {
            field("External Document No."; "External Document No.")
            {
                Visible = false;
            }
            // field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
            // {
            // }
        }
    }
}

