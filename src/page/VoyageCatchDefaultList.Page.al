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
                field("Table Name"; Rec."Table Name")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field("Pack Size"; Rec."Pack Size")
                {
                    ApplicationArea = All;
                }
                field(Brand; Rec.Brand)
                {
                    ApplicationArea = All;
                }
                field("Budget Quantity"; Rec."Budget Quantity")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("S/No."; Rec."S/No.")
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
                            Rec.Init;
                            Rec.Code := DefCatch."No.";
                            Rec."Pack Size" := DefCatch."Pack Size";
                            Rec.Brand := DefCatch.Brand;
                            Rec.Description := DefCatch.Description;
                            fine := Evaluate(Rec."S/No.", Rec.Code);
                            if not Rec.Insert then Rec.Modify();
                        until DefCatch.Next = 0;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        if Rec."Budget Quantity" = 0 then Rec.Validate("Budget Quantity");
    end;

    var
        DefCatch: Record "Catch Default";
        fine: Boolean;
}

