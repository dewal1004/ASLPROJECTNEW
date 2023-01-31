page 50183 "Voyage Catch Default List"
{
    // //

    PageType = Card;
    SourceTable = "Job catch Default";
    SourceTableView = SORTING("S/No.");

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                Editable = false;
                ShowCaption = false;
                field("Table Name"; "Table Name")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Code"; Code)
                {
                    ApplicationArea = All;
                }
                field("Pack Size"; "Pack Size")
                {
                    ApplicationArea = All;
                }
                field(Brand; Brand)
                {
                    ApplicationArea = All;
                }
                field("Budget Quantity"; "Budget Quantity")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("S/No."; "S/No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Set Default")
            {
                Caption = 'Set Default';
                Ellipsis = true;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                var
                    DocPrint: Codeunit "Document-Print";
                begin
                    DefCatch.SetCurrentKey(DefCatch."S/No.");
                    DefCatch.SetRange(DefCatch."In Use", true);
                    if DefCatch.Find('-') then
                        repeat
                            Init;
                            Code := DefCatch."No.";
                            "Pack Size" := DefCatch."Pack Size";
                            Brand := DefCatch.Brand;
                            Description := DefCatch.Description;
                            fine := Evaluate("S/No.", Code);
                            if not Insert then Modify();
                        until DefCatch.Next = 0;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        if "Budget Quantity" = 0 then Validate("Budget Quantity");
    end;

    var
        DefCatch: Record "Catch Default";
        fine: Boolean;
}

