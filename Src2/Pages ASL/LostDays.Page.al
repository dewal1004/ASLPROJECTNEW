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
                    ApplicationArea = All;
                }
                field(Vessel; Vessel)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Day Lost Cause"; "Day Lost Cause")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    Caption = 'Lost Day Description';
                    ApplicationArea = All;
                }
                field(Voyage; Voyage)
                {
                    ApplicationArea = All;
                }
                field("Operation No."; "Operation No.")
                {
                    ApplicationArea = All;
                }
                field("Day Lost Location"; "Day Lost Location")
                {
                    ApplicationArea = All;
                }
                field("Days Lost"; "Days Lost")
                {
                    ApplicationArea = All;
                }
                field("Hours Lost"; "Hours Lost")
                {
                    ApplicationArea = All;
                }
                field(Comment; Comment)
                {
                    ApplicationArea = All;
                }
                field("Code"; Code)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Deductible; Deductible)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
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
                ApplicationArea = All;
            }
            action("Consolidated Narration")
            {
                Caption = 'Consolidated Narration';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report "Consolidated Narration";
                ApplicationArea = All;
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        // SetUpNewLine(xRec);
        Type := Type::Narration;
    end;
}

