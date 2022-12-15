xmlport 50031 "Tel Entry"
{
    Format = VariableText;

    schema
    {
        textelement(RootNode)
        {
            tableelement("AGO Table"; "AGO Table")
            {
                XmlName = 'AGOTable';
                fieldelement(xNo; "AGO Table"."No.")
                {
                }
                fieldelement(xVessel; "AGO Table".Vessel)
                {
                }
                fieldelement(XSeaDays; "AGO Table"."Sea Days")
                {
                }
                fieldelement(xStartROB; "AGO Table"."Start ROB")
                {
                }
                fieldelement(xQtySupplied; "AGO Table"."Quantity Supplied")
                {
                }
                fieldelement(xQtyPurchased1; "AGO Table"."Quantity Purchased 1")
                {
                }
                fieldelement(xRate1; "AGO Table"."Rate 1")
                {
                }
                fieldelement(xQtyPurchased2; "AGO Table"."Quantity Purchased 2")
                {
                }
                fieldelement(xRate2; "AGO Table"."Rate 2")
                {
                }
                fieldelement(xTransfer1; "AGO Table"."Transfer 1")
                {
                }
                fieldelement(xTransfer2; "AGO Table"."Transfer 2")
                {
                }
                fieldelement(xENDROB; "AGO Table"."END ROB")
                {
                }
                fieldelement(xDrainQty; "AGO Table"."Drain Qty")
                {
                }
                fieldelement(xQtyConsumed; "AGO Table"."Quantity Consumed")
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

