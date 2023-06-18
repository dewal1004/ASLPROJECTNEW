report 99978 "Variant Removal"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VariantRemoval.rdlc';
    Caption = 'Variant Removal';
    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            column(Job_Ledger_Entry__No__; "No.")
            {
            }
            column(Job_Ledger_Entry__Variant_Code_; "Variant Code")
            {
            }
            column(Job_Ledger_Entry_Entry_No_; "Job Ledger Entry"."Entry No.")
            {
            }
        }
    }

    requestpage
    {
        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }
}
