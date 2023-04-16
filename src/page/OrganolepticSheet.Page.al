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
                    ApplicationArea = All;
                }
                field(Vessel; Vessel)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Operation No."; "Operation No.")
                {
                    ApplicationArea = All;
                }
                field(Voyage; Voyage)
                {
                    ApplicationArea = All;
                }
                field(ETA; ETA)
                {
                    Caption = 'ETA';
                    ApplicationArea = All;
                }
                field(ETD; ETD)
                {
                    Caption = 'ETD';
                    ApplicationArea = All;
                }
                field(Captain; Captain)
                {
                    ApplicationArea = All;
                }
                field("Date Code"; "Date Code")
                {
                    ApplicationArea = All;
                }
                field("Code"; Code)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Grade; Grade)
                {
                    ApplicationArea = All;
                }
                field("GRADE(Text)"; "GRADE(Text)")
                {
                    Caption = 'GRADE (Text)';
                    ApplicationArea = All;
                }
                field("Pack Size"; "Pack Size")
                {
                    ApplicationArea = All;
                }
                field(Brand; Brand)
                {
                    ApplicationArea = All;
                }
                field("Frozen Weight W/O I/C"; "Frozen Weight W/O I/C")
                {
                    ApplicationArea = All;
                }
                field("Drained Weight (KGS)"; "Drained Weight (KGS)")
                {
                    ApplicationArea = All;
                }
                field("Count/Kg"; "Count/Kg")
                {
                    ApplicationArea = All;
                }
                field("TTL No. Pcs/Slab"; "TTL No. Pcs/Slab")
                {
                    ApplicationArea = All;
                }
                field("Upper Grade Count"; "Upper Grade Count")
                {
                    ApplicationArea = All;
                }
                field("Lower Grade Count"; "Lower Grade Count")
                {
                    ApplicationArea = All;
                }
                field("Uniformity Ratio"; "Uniformity Ratio")
                {
                    ApplicationArea = All;
                }
                field("Dehydration%"; "Dehydration%")
                {
                    ApplicationArea = All;
                }
                field("Discolouration%"; "Discolouration%")
                {
                    ApplicationArea = All;
                }
                field("Black Spot%"; "Black Spot%")
                {
                    ApplicationArea = All;
                }
                field("Broken%"; "Broken%")
                {
                    ApplicationArea = All;
                }
                field("Mix Up%"; "Mix Up%")
                {
                    ApplicationArea = All;
                }
                field("Loose Shells%"; "Loose Shells%")
                {
                    Caption = 'Soft Shells';
                    ApplicationArea = All;
                }
                field("Loose Neck%"; "Loose Neck%")
                {
                    ApplicationArea = All;
                }
                field("General Appearance"; "General Appearance")
                {
                    ApplicationArea = All;
                }
                field("Foreign Matter"; "Foreign Matter")
                {
                    ApplicationArea = All;
                }
                field(Odour; Odour)
                {
                    ApplicationArea = All;
                }
                field("Overall Remark"; "Overall Remark")
                {
                    ApplicationArea = All;
                }
                field(Comment; Comment)
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
        Type := Type::Organoleptic;
    end;
}

