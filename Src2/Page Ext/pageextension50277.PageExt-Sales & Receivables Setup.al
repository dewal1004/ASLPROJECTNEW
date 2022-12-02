pageextension 50277 pageextension50277 extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Posted Prepmt. Cr. Memo Nos.")
        {
            field("Appraisal No."; "Appraisal No.")
            {
            }
            field("Posted Appraisal No."; "Posted Appraisal No.")
            {
            }
            field("Posted Exp. Invoice Nos."; "Posted Exp. Invoice Nos.")
            {
            }
        }
        addafter("Freight G/L Acc. No.")
        {
            field("Default Off Loading Account"; "Default Off Loading Account")
            {
            }
            field("Default Off Loading Charge"; "Default Off Loading Charge")
            {
            }
        }
    }
}

