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
                field("FA No."; "FA No.")
                {
                    ApplicationArea = All;
                }
                field("FA Posting Group"; "FA Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Book Code"; "Depreciation Book Code")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Method"; "Depreciation Method")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Starting Date"; "Depreciation Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Straight-Line %"; "Straight-Line %")
                {
                    ApplicationArea = All;
                }
                field("No. of Depreciation Years"; "No. of Depreciation Years")
                {
                    ApplicationArea = All;
                }
                field("Acquisition Cost"; "Acquisition Cost")
                {
                    ApplicationArea = All;
                }
                field(Depreciation; Depreciation)
                {
                    ApplicationArea = All;
                }
                field("Book Value"; "Book Value")
                {
                    ApplicationArea = All;
                }
                field("Acquisition Date"; "Acquisition Date")
                {
                    ApplicationArea = All;
                }
                field("Last Acquisition Cost Date"; "Last Acquisition Cost Date")
                {
                    ApplicationArea = All;
                }
                field("Last Depreciation Date"; "Last Depreciation Date")
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

