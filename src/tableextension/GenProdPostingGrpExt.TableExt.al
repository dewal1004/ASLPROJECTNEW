tableextension 50253 "Gen. Prod Posting Grp Ext" extends "Gen. Product Posting Group"
{
    fields
    {
        field(50000; "Inventory Value"; Decimal)
        {
            CalcFormula = Sum("Value Entry"."Cost Amount (Actual)" WHERE("Expected Cost" = CONST(false),
                                                                 "Gen. Prod. Posting Group" = FIELD(Code),
                                                                 "Location Code" = FIELD("Location Filter"),
                                                                 "Posting Date" = FIELD("Date Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50001; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(50002; "Location Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = Location.Code WHERE("Location Type" = FILTER(Vessel | Store));
        }
        field(50003; "Show In Inventory Summary"; Boolean)
        {
        }
        field(50004; Inventory; Decimal)
        {
            CalcFormula = Sum("Value Entry"."Valued Quantity" WHERE("Expected Cost" = CONST(false),
                                                                     "Gen. Prod. Posting Group" = FIELD(Code),
                                                                     "Location Code" = FIELD("Location Filter"),
                                                                     "Posting Date" = FIELD("Date Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
    }
}

