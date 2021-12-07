pageextension 50250 pageextension50250 extends "General Journal Batches"
{
    layout
    {
        addfirst(Control1)
        {
            field("Journal Template Name"; "Journal Template Name")
            {
                Visible = true;

                // #region HideValidationDialog
                // procedure HideValidationDialog(HideDialog: Boolean);
                // begin
                //      HideValidationDialog := HideDialog;
                // end;
                
                // procedure GetHideValidationDialog():Boolean;
                // begin
                //     exit(HideValidationDialog);
                // end;
                // #endregion HideValidationDialog
                // var
                //     HideValidationDialog: Booleans;
            }
            field("Template Type"; "Template Type")
            {
                Visible = true;
            }
            field(Recurring; Recurring)
            {
                Visible = true;
            }

        }
        addafter(Name)
        {
            field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
            {
                Visible = true;
            }
            field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
            {
                Visible = true;
            }
        }
        
        moveafter("Journal Template Name"; Name, "Reason Code", "Bal. Account Type", "Bal. Account No.", "No. Series", "Posting No. Series")
        moveafter("Posting No. Series"; "Copy VAT Setup to Jnl. Lines", "Allow VAT Difference", "Allow Payment Export", "Bank Statement Import Format")

        modify(Name) {Visible = true;}
        modify(Description) {Visible = false;}
        modify("No. Series") {Visible = false;}
        modify("Posting No. Series") {Visible = false;}
        modify("Reason Code") {Visible = false;}
        modify("Copy VAT Setup to Jnl. Lines") {Visible = false; }
        modify("Allow VAT Difference") {Visible = false;}
        modify("Allow Payment Export") {Visible = false; }
        modify("Bank Statement Import Format") {Visible = false;}
    }
    actions
    {
        //  Unsupported feature: Property Modification (Name) on "TestReport(Action 16)".

    }
}

        //  Unsupported feature: Property Modification (Name) on "Name(Control 2)".
        //  Unsupported feature: Property Modification (SourceExpr) on "Name(Control 2)".
        //  Unsupported feature: Property Modification (ImplicitType) on "Name(Control 2)".

