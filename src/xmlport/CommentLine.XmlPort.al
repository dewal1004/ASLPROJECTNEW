xmlport 90007 "Comment Line"
{
    Format = VariableText;
    Caption = 'Comment Line';
    schema
    {
        textelement(Rootnode)
        {
            tableelement("Comment Line"; "Comment Line")
            {
                XmlName = 'CommentLine';
                fieldelement(TableName; "Comment Line"."Table Name")
                {
                }
                fieldelement("No."; "Comment Line"."No.")
                {
                }
                fieldelement("LineNo."; "Comment Line"."Line No.")
                {
                }
                fieldelement(Date; "Comment Line".Date)
                {
                }
                fieldelement(Code; "Comment Line".Code)
                {
                }
                fieldelement(Comment; "Comment Line".Comment)
                {
                }
                fieldelement(DayLostCause; "Comment Line"."Day Lost Cause")
                {
                }
                fieldelement(DayLostLocation; "Comment Line"."Day Lost Location")
                {
                }
                fieldelement(DaysLost; "Comment Line"."Days Lost")
                {
                }
                fieldelement(Vessel; "Comment Line".Vessel)
                {
                }
                fieldelement(GlobalDimension1Code; "Comment Line"."Global Dimension 1 Code")
                {
                }
                fieldelement(GlobalDimension2Code; "Comment Line"."Global Dimension 2 Code")
                {
                }
                fieldelement(HoursLost; "Comment Line"."Hours Lost")
                {
                }
                fieldelement(Type; "Comment Line".Type)
                {
                }
                fieldelement("OperationNo."; "Comment Line"."Operation No.")
                {
                }
                fieldelement(Voyage; "Comment Line".Voyage)
                {
                }
                fieldelement(Captain; "Comment Line".Captain)
                {
                }
                fieldelement(DateCode; "Comment Line"."Date Code")
                {
                }
                fieldelement(FrozenWeightWOIC; "Comment Line"."Frozen Weight W/O I/C")
                {
                }
                fieldelement(DrainedWeightKGS; "Comment Line"."Drained Weight (KGS)")
                {
                }
                fieldelement(CountKg; "Comment Line"."Count/Kg")
                {
                }
                fieldelement("TTLNo.PcsSlab"; "Comment Line"."TTL No. Pcs/Slab")
                {
                }
                fieldelement(UpperGradeCount; "Comment Line"."Upper Grade Count")
                {
                }
                fieldelement(LowerGradeCount; "Comment Line"."Lower Grade Count")
                {
                }
                fieldelement(UniformityRatio; "Comment Line"."Uniformity Ratio")
                {
                }
                fieldelement(Dehydration; "Comment Line"."Dehydration%")
                {
                }
                fieldelement(Discolouration; "Comment Line"."Discolouration%")
                {
                }
                fieldelement(BlackSpot; "Comment Line"."Black Spot%")
                {
                }
                fieldelement(Broken; "Comment Line"."Broken%")
                {
                }
                fieldelement(MechDamage; "Comment Line"."Mech Damage%")
                {
                }
                fieldelement(GeneralAppearance; "Comment Line"."General Appearance")
                {
                }
                fieldelement(ForeignMatter; "Comment Line"."Foreign Matter")
                {
                }
                fieldelement(Odour; "Comment Line".Odour)
                {
                }
                fieldelement(OverallRemark; "Comment Line"."Overall Remark")
                {
                }
                fieldelement(Deductible; "Comment Line".Deductible)
                {
                }
                fieldelement(Grade; "Comment Line".Grade)
                {
                }
                fieldelement(PackSize; "Comment Line"."Pack Size")
                {
                }
                fieldelement(Brand; "Comment Line".Brand)
                {
                }
                fieldelement(MixUp; "Comment Line"."Mix Up%")
                {
                }
                fieldelement(LooseShells; "Comment Line"."Loose Shells%")
                {
                }
                fieldelement(LooseNeck; "Comment Line"."Loose Neck%")
                {
                }
                fieldelement(FuelConsumed; "Comment Line"."Fuel Consumed")
                {
                }
                fieldelement(FuelDays; "Comment Line"."Fuel Days")
                {
                }
                fieldelement(FuelAverage; "Comment Line"."Fuel Average")
                {
                }
            }
        }
    }

    requestpage
    {
        layout
        {
        }

        actions
        {
        }
    }
}
