page 50086 "Lost Days"
{
    // Description

    AutoSplitKey = true;
    Caption = 'Lost Days';
    DataCaptionFields = "No.";
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = List;
    SourceTable = "Comment Line";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Date; Date)
                {
                }
                field(Vessel; Vessel)
                {
                    Visible = false;
                }
                field("Day Lost Cause"; "Day Lost Cause")
                {
                }
                field(Description; Description)
                {
                    Caption = 'Lost Day Description';
                }
                field(Voyage; Voyage)
                {
                }
                field("Operation No."; "Operation No.")
                {
                }
                field("Day Lost Location"; "Day Lost Location")
                {
                }
                field("Days Lost"; "Days Lost")
                {
                }
                field("Hours Lost"; "Hours Lost")
                {
                }
                field(Comment; Comment)
                {
                }
                field("Code"; Code)
                {
                    Visible = false;
                }
                field(Deductible; Deductible)
                {
                }
                field(Type; Type)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action("Voyage Narration")
            {
                Caption = 'Voyage Narration';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report "Voyage Narration";
            }
            action("Consolidated Narration")
            {
                Caption = 'Consolidated Narration';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report "Consolidated Narration";
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
       // SetUpNewLine(xRec);
        Type := Type::Narration;
    end;
}

