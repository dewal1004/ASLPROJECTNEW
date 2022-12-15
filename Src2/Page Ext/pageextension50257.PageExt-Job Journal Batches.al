pageextension 50257 pageextension50257 extends "Job Journal Batches"
{

    //Unsupported feature: Property Insertion (Permissions) on ""Job Journal Batches"(Page 276)".
    //Unsupported feature: Property Insertion (SourceTableView) on ""Job Journal Batches"(Page 276)".

    layout
    {
        //Unsupported feature: Property Modification (ImplicitType) on "Name(Control 2)".

        addafter(Name)
        {
            field("Vessel Name"; "Vessel Name")
            {
            }
            field("Job No."; "Job No.")
            {
            }
            field("Voyage No."; "Voyage No.")
            {
            }
            field("Fuel Balance"; "Fuel Balance")
            {
            }
            field("R.P.M."; "R.P.M.")
            {
            }
            field(Speed; Speed)
            {
            }
            field("Sea Temperature"; "Sea Temperature")
            {
            }
            field("Fish Hold Temp"; "Fish Hold Temp")
            {
            }
            field("Fishing Ground"; "Fishing Ground")
            {
            }
            field("Catch Date"; "Catch Date")
            {
            }
        }
        addafter(Description)
        {
            field("Batch Type"; "Batch Type")
            {
            }
        }
        addafter("Reason Code")
        {
            field(Posted; Posted)
            {
            }
            field("Journal Template Name"; "Journal Template Name")
            {
            }
        }
        modify(Name)
        {
            Width = 17;
        }
    }

    actions
    {
        addafter("Edit Journal")
        {
            action("Catch Reconciliation GRN")
            {
                Caption = 'Catch Reconciliation GRN';
                Image = OpenJournal;
                RunObject = Page "Job Journal";
            }
        }
    }
   }

//Unsupported feature: Code Modification on "OnOpenPage".
    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    JobJnlMgt.OpenJnlBatch(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    JobJnlMgt.OpenJnlBatch(Rec);
    CurrPage.Editable(true);
    */
    //end;

