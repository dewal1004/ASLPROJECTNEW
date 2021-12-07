pageextension 50263 pageextension50263 extends "Item Ledger Entries"
{
    layout
    {
        addafter("Remaining Quantity")
        {
            field("Applied Qty  Negative"; "Applied Qty  Negative")
            {
            }
            field("Applied Qty Posistive"; "Applied Qty Posistive")
            {
            }
        }
        addafter("Job Task No.")
        {
            field("Source Code"; "Source Code")
            {
            }
            field("Source No."; "Source No.")
            {
                Visible = false;
            }
            field("External Document No."; "External Document No.")
            {
                Visible = false;
            }
            field("Source Type"; "Source Type")
            {
            }
        }
    }

    //Unsupported feature: Property Insertion (Length) on "GetCaption(PROCEDURE 3).ReturnValue".


    //Unsupported feature: Property Insertion (Length) on "GetCaption(PROCEDURE 3).SourceTableName(Variable 1002)".

}

