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
                field(Date; Date)
                {
                }
                field(Vessel; Vessel)
                {
                }
                field(Type; Type)
                {
                    Visible = false;
                }
                field("Operation No."; "Operation No.")
                {
                }
                field(Voyage; Voyage)
                {
                }
                field(ETA; ETA)
                {
                    Caption = 'ETA';
                }
                field(ETD; ETD)
                {
                    Caption = 'ETD';
                }
                field(Captain; Captain)
                {
                }
                field("Date Code"; "Date Code")
                {
                }
                field("Code"; Code)
                {
                    Visible = false;
                }
                field(Grade; Grade)
                {
                }
                field("GRADE(Text)"; "GRADE(Text)")
                {
                    Caption = 'GRADE (Text)';
                }
                field("Pack Size"; "Pack Size")
                {
                }
                field(Brand; Brand)
                {
                }
                field("Frozen Weight W/O I/C"; "Frozen Weight W/O I/C")
                {
                }
                field("Drained Weight (KGS)"; "Drained Weight (KGS)")
                {
                }
                field("Count/Kg"; "Count/Kg")
                {
                }
                field("TTL No. Pcs/Slab"; "TTL No. Pcs/Slab")
                {
                }
                field("Upper Grade Count"; "Upper Grade Count")
                {
                }
                field("Lower Grade Count"; "Lower Grade Count")
                {
                }
                field("Uniformity Ratio"; "Uniformity Ratio")
                {
                }
                field("Dehydration%"; "Dehydration%")
                {
                }
                field("Discolouration%"; "Discolouration%")
                {
                }
                field("Black Spot%"; "Black Spot%")
                {
                }
                field("Broken%"; "Broken%")
                {
                }
                field("Mix Up%"; "Mix Up%")
                {
                }
                field("Loose Shells%"; "Loose Shells%")
                {
                    Caption = 'Soft Shells';
                }
                field("Loose Neck%"; "Loose Neck%")
                {
                }
                field("General Appearance"; "General Appearance")
                {
                }
                field("Foreign Matter"; "Foreign Matter")
                {
                }
                field(Odour; Odour)
                {
                }
                field("Overall Remark"; "Overall Remark")
                {
                }
                field(Comment; Comment)
                {
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
                }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
       //*** SetUpNewLine(Rec);
        Type := Type::Organoleptic;
    end;
}

