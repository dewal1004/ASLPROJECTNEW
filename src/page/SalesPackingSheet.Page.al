page 50067 "Sales Packing Sheet"
{
    //  //

    AutoSplitKey = true;
    Caption = 'Comment Sheet';
    DataCaptionFields = "Document Type", "No.";
    DelayedInsert = true;
    UsageCategory = Lists;
    ApplicationArea = All;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = "Sales Comment Line";
    SourceTableView = SORTING("Document Type", "No.", "Line No.")
                      WHERE(Code = FILTER('P'));

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Date; Rec.Date)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;
                }
                field("Code"; Rec.Code)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Weight; Rec.Weight)
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
            group("Pac&king")
            {
                Caption = 'Pac&king';
                action(Print)
                {
                    Caption = 'Print';
                    Image = Print;
                    RunObject = Report "Sales Packing List";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        Rec.SetRange("No.", Rec."No.");
                    end;
                }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec.SetUpNewLine();
    end;
}
