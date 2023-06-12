page 50093 "list of depreciation books"
{
    PageType = Card;
    SourceTable = "FA Depreciation Book";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("FA No."; Rec."FA No.")
                {
                    ApplicationArea = All;
                }
                field("FA Posting Group"; Rec."FA Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Book Code"; Rec."Depreciation Book Code")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Method"; Rec."Depreciation Method")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Starting Date"; Rec."Depreciation Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Straight-Line %"; Rec."Straight-Line %")
                {
                    ApplicationArea = All;
                }
                field("No. of Depreciation Years"; Rec."No. of Depreciation Years")
                {
                    ApplicationArea = All;
                }
                field("Acquisition Cost"; Rec."Acquisition Cost")
                {
                    ApplicationArea = All;
                }
                field(Depreciation; Rec.Depreciation)
                {
                    ApplicationArea = All;
                }
                field("Book Value"; Rec."Book Value")
                {
                    ApplicationArea = All;
                }
                field("Acquisition Date"; Rec."Acquisition Date")
                {
                    ApplicationArea = All;
                }
                field("Last Acquisition Cost Date"; Rec."Last Acquisition Cost Date")
                {
                    ApplicationArea = All;
                }
                field("Last Depreciation Date"; Rec."Last Depreciation Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Line")
            {
                Caption = '&Line';
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50094. Unsupported part was commented. Please check it.
                        /*CurrPage.AppraisalLines.FORM.*/
                        //ShowDimensions;

                    end;
                }
                action("Item &Tracking Entries")
                {
                    Caption = 'Item &Tracking Entries';
                    Image = ItemTrackingLedger;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //This functionality was copied from page #50094. Unsupported part was commented. Please check it.
                        /*CurrPage.AppraisalLines.FORM.*/
                        //ShowItemTrackingLines;

                    end;
                }
            }
        }
    }
}

