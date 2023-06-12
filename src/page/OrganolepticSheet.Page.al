page 50070 "Organoleptic Sheet"
{
    AutoSplitKey = true;
    DataCaptionFields = "No.";
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = "Comment Line";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field(Vessel; Rec.Vessel)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Operation No."; Rec."Operation No.")
                {
                    ApplicationArea = All;
                }
                field(Voyage; Rec.Voyage)
                {
                    ApplicationArea = All;
                }
                field(ETA; Rec.ETA)
                {
                    Caption = 'ETA';
                    ApplicationArea = All;
                }
                field(ETD; Rec.ETD)
                {
                    Caption = 'ETD';
                    ApplicationArea = All;
                }
                field(Captain; Rec.Captain)
                {
                    ApplicationArea = All;
                }
                field("Date Code"; Rec."Date Code")
                {
                    ApplicationArea = All;
                }
                field("Code"; Rec.Code)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                }
                field("GRADE(Text)"; Rec."GRADE(Text)")
                {
                    Caption = 'GRADE (Text)';
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
                field("Frozen Weight W/O I/C"; Rec."Frozen Weight W/O I/C")
                {
                    ApplicationArea = All;
                }
                field("Drained Weight (KGS)"; Rec."Drained Weight (KGS)")
                {
                    ApplicationArea = All;
                }
                field("Count/Kg"; Rec."Count/Kg")
                {
                    ApplicationArea = All;
                }
                field("TTL No. Pcs/Slab"; Rec."TTL No. Pcs/Slab")
                {
                    ApplicationArea = All;
                }
                field("Upper Grade Count"; Rec."Upper Grade Count")
                {
                    ApplicationArea = All;
                }
                field("Lower Grade Count"; Rec."Lower Grade Count")
                {
                    ApplicationArea = All;
                }
                field("Uniformity Ratio"; Rec."Uniformity Ratio")
                {
                    ApplicationArea = All;
                }
                field("Dehydration%"; Rec."Dehydration%")
                {
                    ApplicationArea = All;
                }
                field("Discolouration%"; Rec."Discolouration%")
                {
                    ApplicationArea = All;
                }
                field("Black Spot%"; Rec."Black Spot%")
                {
                    ApplicationArea = All;
                }
                field("Broken%"; Rec."Broken%")
                {
                    ApplicationArea = All;
                }
                field("Mix Up%"; Rec."Mix Up%")
                {
                    ApplicationArea = All;
                }
                field("Loose Shells%"; Rec."Loose Shells%")
                {
                    Caption = 'Soft Shells';
                    ApplicationArea = All;
                }
                field("Loose Neck%"; Rec."Loose Neck%")
                {
                    ApplicationArea = All;
                }
                field("General Appearance"; Rec."General Appearance")
                {
                    ApplicationArea = All;
                }
                field("Foreign Matter"; Rec."Foreign Matter")
                {
                    ApplicationArea = All;
                }
                field(Odour; Rec.Odour)
                {
                    ApplicationArea = All;
                }
                field("Overall Remark"; Rec."Overall Remark")
                {
                    ApplicationArea = All;
                }
                field(Comment; Rec.Comment)
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
            group("Report")
            {
                Caption = 'Report';
                action("Organoleptic Report")
                {
                    Caption = 'Organoleptic Report';
                    Image = "Report";
                    RunObject = Report Organoleptic0809;
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        //*** SetUpNewLine(Rec);
        Rec.Type := Rec.Type::Organoleptic;
    end;
}

