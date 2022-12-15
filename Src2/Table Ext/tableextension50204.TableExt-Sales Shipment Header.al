tableextension 50204 tableextension50204 extends "Sales Shipment Header"
{
    fields
    {
        field(50380; "Container Code"; Code[10])
        {
        }
        field(50381; "Seal No"; Code[15])
        {
        }
        field(50384; "Shipment Month"; Option)
        {
            OptionMembers = Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec;
        }
        field(50385; "Shipped Quantity"; Decimal)
        {
            CalcFormula = Sum("Sales Shipment Line".Quantity WHERE("Document No." = FIELD("No."),
                                                                    "Item Category Code" = FIELD("Item Category Code filter")));
            DecimalPlaces = 0 : 0;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50386; "Item Category Code filter"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = "Item Category";
        }
    }
    keys
    {
      //  key(ASLKey1; "Shipment Month", "Order No.")
       // {
        //}
    }
}

