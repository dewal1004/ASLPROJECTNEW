page 50201 "Costing Sheet"
{
    Caption = 'Costing Sheet';
    PageType = CardPart;
    SourceTable = "Purchase Line";

    layout
    {
        area(content)
        {
            group(Landed_Cost)
            {
                field("Indirect Cost %"; Rec."Indirect Cost %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the percentage of the item''s last purchase cost that includes indirect costs, such as freight that is associated with the purchase of the item.';
                }
                field("Outstanding Amount (LCY)"; Rec."Outstanding Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount for the items on the order that have not yet been received in LCY.';
                }
                field("Qty. to Receive"; Rec."Qty. to Receive")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of items that remains to be received.';
                }
                field("Unit Cost (LCY)"; Rec."Unit Cost (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the cost, in LCY, of one unit of the item or resource on the line.';
                }
                field("ActualLandedAmount(LCY)"; rec."ActualLandedAmount(LCY)")
                {
                    ApplicationArea = all;
                }
                field("ActualFreight(LCY)"; Rec."ActualFreight(LCY)")
                {
                    ApplicationArea = all;
                }
                field("ActualClearing(LCY)"; Rec."ActualClearing(LCY)")
                {
                    ApplicationArea = all;
                }
                field("ActualDuty(LCY)"; Rec."ActualDuty(LCY)")
                {
                    ApplicationArea = All;
                }
                field("Actual Interest(LCY)"; Rec."ActualInterest(LCY)")
                {
                    ApplicationArea = All;
                }
                field("Actual Insurance(LCY)"; Rec."ActualInsurance(LCY)")
                {
                    ApplicationArea = All;
                }
                field("Actual Surcharge Duty(LCY)"; Rec."ActualSurcharge Duty(LCY)")
                {
                    ApplicationArea = all;
                }
                field("Actual CISS(LCY)"; Rec."ActualCISS(LCY)")
                {
                    ApplicationArea = all;
                }
                field("Actual Ancillary(LCY)"; Rec."ActualAncillary(LCY)")
                {
                    ApplicationArea = all;
                }
                field("Actual Ecowas Duty(LCY)"; Rec."ActualEcowas Duty(LCY)")
                {
                    ApplicationArea = all;
                }
                field("Actual Vat (LCY)"; Rec."ActualVat (LCY)")
                {
                    ApplicationArea = all;
                }
                field("Actual Total Overhead(LCY)"; Rec."ActualTotal Overhead(LCY)")
                {
                    ApplicationArea = All;
                }
                field("Landed Amount(LCY)"; Rec."LandedAmount(LCY)")
                {
                    ApplicationArea = all;
                }
                field("Qty to Receive Amount(LCY)"; Rec."QtytoReceiveAmount(LCY)")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}
