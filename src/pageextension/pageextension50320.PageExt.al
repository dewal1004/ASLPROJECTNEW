pageextension 50320 "pageextension50320" extends "Location Card"
{
    layout
    {
        addafter("Bin Policies")
        {
            group(Vessel)
            {
                Caption = 'Vessel';
                field("Location Type"; "Location Type")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        UpdateEnabled;
                    end;
                }
                // field(Captain; Captain)  //Revisit
                // {
                // }
                field("Ves Age"; "Ves Age")
                {
                    ApplicationArea = All;
                }
                field("Insurance Rate"; "Insurance Rate")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Rate"; "Depreciation Rate")
                {
                    ApplicationArea = All;
                }
                field("Budgeted Voyages"; "Budgeted Voyages")
                {
                    ApplicationArea = All;
                }
                field("Current Operation"; "Current Operation")
                {
                    ApplicationArea = All;
                }
                field("Current Voyage"; "Current Voyage")
                {
                    ApplicationArea = All;
                }
                field("Rad Tel"; "Rad Tel")
                {
                    ApplicationArea = All;
                }
                field(ExpCode; ExpCode)
                {
                    ApplicationArea = All;
                }
                field("Interest Rate"; "Interest Rate")
                {
                    ApplicationArea = All;
                }
                field("Vessel Endurance"; "Vessel Endurance")
                {
                    ApplicationArea = All;
                }
                field("Port Captain"; "Port Captain")
                {
                    ApplicationArea = All;
                }
                field("Vessel Type"; "Vessel Type")
                {
                    ApplicationArea = All;
                }
                field("FA Code"; "FA Code")
                {
                    ApplicationArea = All;
                }
                field("Sea Days"; "Sea Days")
                {
                    ApplicationArea = All;
                }
            }
            group("Vessel Schedules")
            {
                Caption = 'Vessel Schedules';
                field("Lst Ovh"; "Lst Ovh")
                {
                    ApplicationArea = All;
                }
                field("Nxt Ovh"; "Nxt Ovh")
                {
                    ApplicationArea = All;
                }
                field("Lst Ddk"; "Lst Ddk")
                {
                    ApplicationArea = All;
                }
                field("Nxt Ddk"; "Nxt Ddk")
                {
                    ApplicationArea = All;
                }
                field("Brnd Pk"; "Brnd Pk")
                {
                    ApplicationArea = All;
                }
                field("Inner P"; "Inner P")
                {
                    ApplicationArea = All;
                }
                field(Grades; Grades)
                {
                    ApplicationArea = All;
                }
                field(Deratg; Deratg)
                {
                    ApplicationArea = All;
                }
                field("Crab CW"; "Crab CW")
                {
                    ApplicationArea = All;
                }
                field("WT GL/W"; "WT GL/W")
                {
                    ApplicationArea = All;
                }
                field(Batch; Batch)
                {
                    ApplicationArea = All;
                }
                field("R Flare"; "R Flare")
                {
                    ApplicationArea = All;
                }
                field("Str Lic"; "Str Lic")
                {
                    ApplicationArea = All;
                }
                field("Fsh Ins"; "Fsh Ins")
                {
                    ApplicationArea = All;
                }
                field("Fsh Dst"; "Fsh Dst")
                {
                    ApplicationArea = All;
                }
                field("Ins Sur"; "Ins Sur")
                {
                    ApplicationArea = All;
                }
                field("Dst Sur"; "Dst Sur")
                {
                    ApplicationArea = All;
                }
                field("Pow Ext"; "Pow Ext")
                {
                    ApplicationArea = All;
                }
                field("Fom Ext"; "Fom Ext")
                {
                    ApplicationArea = All;
                }
                field("CO2 Ext"; "CO2 Ext")
                {
                    ApplicationArea = All;
                }
                field("Life Rf"; "Life Rf")
                {
                    ApplicationArea = All;
                }
                field(Parchut; Parchut)
                {
                    ApplicationArea = All;
                }
                field("E.U. No"; "E.U. No")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

