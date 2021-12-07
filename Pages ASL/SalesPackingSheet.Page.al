page 50067 "Sales Packing Sheet"
{
    //  //

    AutoSplitKey = true;
    Caption = 'Comment Sheet';
    DataCaptionFields = "Document Type", "No.";
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = "Sales Comment Line";
    SourceTableView = SORTING ("Document Type", "No.", "Line No.")
                      WHERE (Code = FILTER ('P'));

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Date; Date)
                {
                    Visible = false;
                }
                field(Quantity; Quantity)
                {
                }
                field(Comment; Comment)
                {
                }
                field("Code"; Code)
                {
                    Visible = false;
                }
                field(Weight; Weight)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Pac&king")
            {
                Caption = 'Pac&king';
                action(Print)
                {
                    Caption = 'Print';
                    Image = Print;
                    RunObject = Report "Sales Packing List";

                    trigger OnAction()
                    begin
                        SetRange("No.", "No.");
                    end;
                }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        SetUpNewLine;
    end;
}

