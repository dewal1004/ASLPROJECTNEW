pageextension 50257 "pageextension50257" extends "Job Journal Batches"
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
                ApplicationArea = All;
            }
            field("Job No."; "Job No.")
            {
                ApplicationArea = All;
            }
            field("Voyage No."; "Voyage No.")
            {
                ApplicationArea = All;
            }
            field("Fuel Balance"; "Fuel Balance")
            {
                ApplicationArea = All;
            }
            field("R.P.M."; "R.P.M.")
            {
                ApplicationArea = All;
            }
            field(Speed; Speed)
            {
                ApplicationArea = All;
            }
            field("Sea Temperature"; "Sea Temperature")
            {
                ApplicationArea = All;
            }
            field("Fish Hold Temp"; "Fish Hold Temp")
            {
                ApplicationArea = All;
            }
            field("Fishing Ground"; "Fishing Ground")
            {
                ApplicationArea = All;
            }
            field("Catch Date"; "Catch Date")
            {
                ApplicationArea = All;
            }
        }
        addafter(Description)
        {
            field("Batch Type"; "Batch Type")
            {
                ApplicationArea = All;
            }
        }
        addafter("Reason Code")
        {
            field(Posted; Posted)
            {
                ApplicationArea = All;
            }
            field("Journal Template Name"; "Journal Template Name")
            {
                ApplicationArea = All;
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
                ApplicationArea = All;
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

