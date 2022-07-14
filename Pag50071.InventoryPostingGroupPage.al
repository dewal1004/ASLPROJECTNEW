page 50071 "Inventory Posting Group Page "
{
    Caption = 'Inventory Posting Group Page ';
    PageType = Card;
    SourceTable = "Inventory Posting Group";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the identifier for the inventory posting group.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a description of the inventory posting group.';
                }
                field(Inventory; Rec.Inventory)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory Total field.';
                }
                field("Inventory Incentive"; Rec."Inventory Incentive")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory Incentive field.';
                }
                field("Inventory total1"; Rec."Inventory total1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory Total Vessel field.';
                }
                field("Inventory total2"; Rec."Inventory total2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory Total Fishing Grd field.';
                }
                field("Inventory total3"; Rec."Inventory total3")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory total3 field.';
                }
                field("Inventory total4"; Rec."Inventory total4")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory total4 field.';
                }
                field(Inventory1; Rec.Inventory1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory1 field.';
                }
                field(Inventory2; Rec.Inventory2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory2 field.';
                }
                field(Inventory3; Rec.Inventory3)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory3 field.';
                }
                field(Inventory4; Rec.Inventory4)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory4 field.';
                }
                field(Points; Rec.Points)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Points field.';
                }
                field("Points/KG"; Rec."Points/KG")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Points/KG field.';
                }
                field("S/No."; Rec."S/No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the S/No. field.';
                }
                field("In Use"; Rec."In Use")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the In Use field.';
                }
                field("Value"; Rec."Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Value field.';
                }
            }
        }
    }
}
