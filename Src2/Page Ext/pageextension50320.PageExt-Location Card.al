pageextension 50320 pageextension50320 extends "Location Card"
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
                }
                field("Insurance Rate"; "Insurance Rate")
                {
                }
                field("Depreciation Rate"; "Depreciation Rate")
                {
                }
                field("Budgeted Voyages"; "Budgeted Voyages")
                {
                }
                field("Current Operation"; "Current Operation")
                {
                }
                field("Current Voyage"; "Current Voyage")
                {
                }
                field("Rad Tel"; "Rad Tel")
                {
                }
                field(ExpCode; ExpCode)
                {
                }
                field("Interest Rate"; "Interest Rate")
                {
                }
                field("Vessel Endurance"; "Vessel Endurance")
                {
                }
                field("Port Captain"; "Port Captain")
                {
                }
                field("Vessel Type"; "Vessel Type")
                {
                }
                field("FA Code";"FA Code")
                {}
                field("Sea Days";"Sea Days")
                {}
            }
            group("Vessel Schedules")
            {
                Caption = 'Vessel Schedules';
                field("Lst Ovh"; "Lst Ovh")
                {
                }
                field("Nxt Ovh"; "Nxt Ovh")
                {
                }
                field("Lst Ddk"; "Lst Ddk")
                {
                }
                field("Nxt Ddk"; "Nxt Ddk")
                {
                }
                field("Brnd Pk"; "Brnd Pk")
                {
                }
                field("Inner P"; "Inner P")
                {
                }
                field(Grades; Grades)
                {
                }
                field(Deratg; Deratg)
                {
                }
                field("Crab CW"; "Crab CW")
                {
                }
                field("WT GL/W"; "WT GL/W")
                {
                }
                field(Batch; Batch)
                {
                }
                field("R Flare"; "R Flare")
                {
                }
                field("Str Lic"; "Str Lic")
                {
                }
                field("Fsh Ins"; "Fsh Ins")
                {
                }
                field("Fsh Dst"; "Fsh Dst")
                {
                }
                field("Ins Sur"; "Ins Sur")
                {
                }
                field("Dst Sur"; "Dst Sur")
                {
                }
                field("Pow Ext"; "Pow Ext")
                {
                }
                field("Fom Ext"; "Fom Ext")
                {
                }
                field("CO2 Ext"; "CO2 Ext")
                {
                }
                field("Life Rf"; "Life Rf")
                {
                }
                field(Parchut; Parchut)
                {
                }
                field("E.U. No"; "E.U. No")
                {
                }
            }
        }
    }
}

