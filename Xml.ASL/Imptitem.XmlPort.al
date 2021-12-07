xmlport 90996 Imptitem
{
    Format = VariableText;

    schema
    {
        textelement(Rootnode)
        {
            tableelement(Item; Item)
            {
                XmlName = 'Item';
                fieldelement(No; Item."No.")
                {
                }
                fieldelement("No.2"; Item."No. 2")
                {
                }
                fieldelement(Description; Item.Description)
                {
                }
                fieldelement(Description2; Item."Description 2")
                {
                }
                fieldelement(Class; Item.Class)
                {
                }
                fieldelement(uom; Item."Base Unit of Measure")
                {
                }
                fieldelement(Priceunitconversion; Item."Price Unit Conversion")
                {
                }
                fieldelement(Type; Item.Type)
                {
                }
                fieldelement(Inventorypostinggroup; Item."Inventory Posting Group")
                {
                }
                fieldelement(Shelfno; Item."Shelf No.")
                {
                }
                fieldelement(Itemdiscgrp; Item."Item Disc. Group")
                {
                }
                fieldelement(allowinvoicedisc; Item."Allow Invoice Disc.")
                {
                }
                fieldelement(Statisticsgroup; Item."Statistics Group")
                {
                }
                fieldelement(commissiongrp; Item."Commission Group")
                {
                }
                fieldelement(unitprice; Item."Unit Price")
                {
                }
                fieldelement(priceprftcalculation; Item."Price/Profit Calculation")
                {
                }
                fieldelement(profiperc; Item."Profit %")
                {
                }
                fieldelement(costingmethd; Item."Costing Method")
                {
                }
                fieldelement(unitcost; Item."Unit Cost")
                {
                }
                fieldelement(standardcst; Item."Standard Cost")
                {
                }
                fieldelement(lastdirtcst; Item."Last Direct Cost")
                {
                }
                fieldelement(indirectcst; Item."Indirect Cost %")
                {
                }
                fieldelement(reorderpint; Item."Reorder Point")
                {
                }
                fieldelement(maxinventry; Item."Maximum Inventory")
                {
                }
                fieldelement(reodrqty; Item."Reorder Quantity")
                {
                }
                fieldelement(altitemno; Item."Alternative Item No.")
                {
                }
                fieldelement(unitlistprice; Item."Unit List Price")
                {
                }
                fieldelement(duty; Item."Duty Due %")
                {
                }
                fieldelement(dtycode; Item."Duty Code")
                {
                }
                fieldelement(grossweight; Item."Gross Weight")
                {
                }
                fieldelement(netweight; Item."Net Weight")
                {
                }
                fieldelement(unitsparcel; Item."Units per Parcel")
                {
                }
                fieldelement(unitvolume; Item."Unit Volume")
                {
                }
                fieldelement(durabilty; Item.Durability)
                {
                }
                fieldelement(country; Item."Country/Region Purchased Code")
                {
                }
                fieldelement(bqty; Item."Budget Quantity")
                {
                }
                fieldelement(bamt; Item."Budgeted Amount")
                {
                }
                fieldelement(block; Item.Blocked)
                {
                }
                fieldelement(priceincldvat; Item."Price Includes VAT")
                {
                }
                fieldelement(genprdtpdtggrp; Item."Gen. Prod. Posting Group")
                {
                }
                fieldelement(region; Item."Country/Region of Origin Code")
                {
                }
                fieldelement(automatic; Item."Automatic Ext. Texts")
                {
                }
                fieldelement(nosers; Item."No. Series")
                {
                }
                fieldelement(taxgrpcode; Item."Tax Group Code")
                {
                }
                fieldelement(vatprdpstggrp; Item."VAT Prod. Posting Group")
                {
                }
                fieldelement(reserve; Item.Reserve)
                {
                }
                fieldelement(gd1; Item."Global Dimension 1 Code")
                {
                }
                fieldelement(gd2; Item."Global Dimension 2 Code")
                {
                }
                fieldelement(flushingmtd; Item."Flushing Method")
                {
                }
                fieldelement(replesishmentntd; Item."Replenishment System")
                {
                }
                fieldelement(itemcatgycde; Item."Item Category Code")
                {
                }
                fieldelement(nonstockitem; Item."Created From Nonstock Item")
                {
                }
                fieldelement(produ; Item."Item Category Code")
                {
                }
                fieldelement(itemtrackcode; Item."Item Tracking Code")
                {
                }
                fieldelement(points; Item.Points)
                {
                }
                fieldelement(vesslconsumrate; Item."Vessel Consumption rate")
                {
                }
                fieldelement(itemcatno; Item."Item Category No.")
                {
                }
                fieldelement(sno; Item."S/No.")
                {
                }
                fieldelement(brand; Item.Brand)
                {
                }
                fieldelement(pack; Item.Pack)
                {
                }
                fieldelement(prodcd; Item.ProdCd)
                {
                }
                fieldelement(packszekg; Item."Pack Size (Kg).")
                {
                }
                fieldelement(sfcat; Item."SF Cat")
                {
                }
                fieldelement(odertractpolicy; Item."Order Tracking Policy")
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

