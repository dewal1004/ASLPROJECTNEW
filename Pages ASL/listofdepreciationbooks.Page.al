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
                }
                field("FA Posting Group"; "FA Posting Group")
                {
                }
                field("Depreciation Book Code"; "Depreciation Book Code")
                {
                }
                field("Depreciation Method"; "Depreciation Method")
                {
                }
                field("Depreciation Starting Date"; "Depreciation Starting Date")
                {
                }
                field("Straight-Line %"; "Straight-Line %")
                {
                }
                field("No. of Depreciation Years"; "No. of Depreciation Years")
                {
                }
                field("Acquisition Cost"; "Acquisition Cost")
                {
                }
                field(Depreciation; Depreciation)
                {
                }
                field("Book Value"; "Book Value")
                {
                }
                field("Acquisition Date"; "Acquisition Date")
                {
                }
                field("Last Acquisition Cost Date"; "Last Acquisition Cost Date")
                {
                }
                field("Last Depreciation Date"; "Last Depreciation Date")
                {
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

