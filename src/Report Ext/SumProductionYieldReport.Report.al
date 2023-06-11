report 50000 "Sum. Production Yield Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/SumProductionYieldReport.rdlc';
    Caption = 'ASL Production Yield Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemTableView = SORTING("Order Type", "Order No.", "Order Line No.", "Entry Type", "Prod. Order Comp. Line No.") WHERE("Order Type" = CONST(Production));
            RequestFilterFields = "Posting Date";
            RequestFilterHeading = 'Production Yield Report Filter';
            column(EntryType_ItemLedgerEntry; "Item Ledger Entry"."Entry Type")
            {
            }
            column(OrderType_ItemLedgerEntry; "Item Ledger Entry"."Order Type")
            {
            }
            column(OrderNo_ItemLedgerEntry; "Item Ledger Entry"."Order No.")
            {
            }
            column(PostingDate_ItemLedgerEntry; "Item Ledger Entry"."Posting Date")
            {
            }
            column(ItemNo_ItemLedgerEntry; "Item Ledger Entry"."Item No.")
            {
            }
            column(Quantity_ItemLedgerEntry; "Item Ledger Entry".Quantity)
            {
            }
            column(UoM_ItemLedgerEntry; "Item Ledger Entry"."Unit of Measure Code")
            {
            }
            column(ReceivedQty; ReceivedQty)
            {
            }
            column(ProducedQty; ProducedQty)
            {
            }
            column(TotalOutput; TotalOutput)
            {
            }
            column(TotalConsumption; TotalConsumption)
            {
            }
            column(Description_ItemLedgerEntry; ItemDesc)
            {
            }
            column(ScrapQuantity_ItemLedgerEntry; "Item Ledger Entry"."Scrap Quantity")
            {
            }
            column(ConsumedQuantity_ItemLedgerEntry; "Item Ledger Entry"."Consumed Quantity")
            {
            }
            column(Filters; Filters)
            {
            }
            column(TotalQtyRM; TotalQtyRM)
            {
            }
            column(TotalQtyFP; TotalQtyFP)
            {
            }
            column(ConsolidatedYieldPercent; ConsolidatedYieldPercent)
            {
            }

            trigger OnAfterGetRecord()
            begin
                ReceivedQty := 0;
                ProducedQty := 0;
                ItemDesc := '';
                if ("Item Ledger Entry".Quantity < 0) and ("Entry Type" = "Entry Type"::Consumption) then
                    ReceivedQty := Abs("Item Ledger Entry".Quantity);
                if ("Item Ledger Entry".Quantity > 0) and ("Entry Type" = "Entry Type"::Output) then
                    ProducedQty := "Item Ledger Entry".Quantity;

                if ItemRec.Get("Item Ledger Entry"."Item No.") then
                    ItemDesc := ItemRec.Description;

                TotalConsumption := 0;

                ItemLedgerEntry.Reset;
                ItemLedgerEntry.SetCurrentKey("Document No.", "Posting Date", "Entry Type");
                ItemLedgerEntry.SetFilter(ItemLedgerEntry."Order Type", '%1', ItemLedgerEntry."Order Type"::Production);
                ItemLedgerEntry.SetFilter(ItemLedgerEntry."Entry Type", '%1', ItemLedgerEntry."Entry Type"::Consumption);
                ItemLedgerEntry.SetFilter(ItemLedgerEntry."Order No.", "Order No.");
                ItemLedgerEntry.SetFilter(ItemLedgerEntry."Document No.", '%1', "Document No.");
                //ItemLedgerEntry.CALCSUMS(ItemLedgerEntry.Quantity);
                if ItemLedgerEntry.Find('-') then begin
                    repeat
                        //TotalConsumption += ABS(ItemLedgerEntry.Quantity);
                        TotalConsumption += ItemLedgerEntry."Consumed Quantity"
                      until ItemLedgerEntry.Next = 0;
                    //MESSAGE('Total Consumption for Document No %1 is %2',"Document No.",TotalConsumption);
                end;

                TotalOutput := 0;
                ItemLedgerEntry2.Reset;
                ItemLedgerEntry.SetCurrentKey("Document No.", "Posting Date", "Entry Type");
                ItemLedgerEntry2.SetFilter(ItemLedgerEntry2."Order Type", '%1', ItemLedgerEntry2."Order Type"::Production);
                ItemLedgerEntry2.SetFilter(ItemLedgerEntry2."Entry Type", '%1', ItemLedgerEntry2."Entry Type"::Output);
                ItemLedgerEntry2.SetFilter(ItemLedgerEntry2."Order No.", "Order No.");
                ItemLedgerEntry2.SetFilter(ItemLedgerEntry2."Document No.", '%1', "Document No.");
                //ItemLedgerEntry2.CALCSUMS(ItemLedgerEntry2.Quantity);
                if ItemLedgerEntry2.FindFirst then begin
                    //REPEAT
                    TotalOutput += ItemLedgerEntry2.Quantity;
                    //UNTIL ItemLedgerEntry2.NEXT = 0;
                    //MESSAGE('Total Output for Document No %1 is %2',"Document No.",TotalOutput);
                end;
            end;
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

    labels
    {
    }

    trigger OnPreReport()
    begin
        Filters := "Item Ledger Entry".GetFilters;
        // DateFilter := "Item Ledger Entry".GETFILTER("Posting Date");
        TotalQtyFP := 0;
        TotalQtyRM := 0;
        ItemLedgerEntry3.Reset;
        ItemLedgerEntry3.CopyFilters("Item Ledger Entry");
        ItemLedgerEntry3.SetCurrentKey("Document No.", "Posting Date", "Entry Type");
        ItemLedgerEntry3.SetFilter(ItemLedgerEntry3."Posting Date", "Item Ledger Entry".GetFilter("Posting Date"));
        ItemLedgerEntry3.SetFilter(ItemLedgerEntry3."Order Type", '%1', ItemLedgerEntry3."Order Type"::Production);
        ItemLedgerEntry3.SetFilter(ItemLedgerEntry3."Entry Type", '%1', ItemLedgerEntry3."Entry Type"::Consumption);
        if ItemLedgerEntry3.Find('-') then begin
            repeat
                TotalQtyRM += ItemLedgerEntry3."Consumed Quantity"
              until ItemLedgerEntry3.Next = 0;
        end;

        ItemLedgerEntry4.Reset;
        ItemLedgerEntry4.CopyFilters("Item Ledger Entry");
        ItemLedgerEntry4.SetCurrentKey("Document No.", "Posting Date", "Entry Type");
        ItemLedgerEntry3.SetFilter(ItemLedgerEntry3."Posting Date", "Item Ledger Entry".GetFilter("Posting Date"));
        ItemLedgerEntry4.SetFilter(ItemLedgerEntry4."Order Type", '%1', ItemLedgerEntry4."Order Type"::Production);
        ItemLedgerEntry4.SetFilter(ItemLedgerEntry4."Entry Type", '%1', ItemLedgerEntry4."Entry Type"::Output);
        if ItemLedgerEntry4.Find('-') then begin
            repeat
                TotalQtyFP += ItemLedgerEntry4.Quantity;
            until ItemLedgerEntry4.Next = 0;

        end;

        if TotalQtyRM <> 0 then
            ConsolidatedYieldPercent := (TotalQtyFP / TotalQtyRM);
    end;

    var
        Yield: Decimal;
        ItemLedgerEntry: Record "Item Ledger Entry";
        ItemLedgerEntry2: Record "Item Ledger Entry";
        ItemLedgerEntry3: Record "Item Ledger Entry";
        ItemLedgerEntry4: Record "Item Ledger Entry";
        TotalConsumption: Decimal;
        TotalOutput: Decimal;
        ItemRec: Record Item;
        ReceivedQty: Decimal;
        ProducedQty: Decimal;
        Filters: Text;
        TotalQtyRM: Decimal;
        TotalQtyFP: Decimal;
        ConsolidatedYieldPercent: Decimal;
        ItemDesc: Text;
        DateFilter: Date;
}

