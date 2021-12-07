page 50164 "Inventory-Report"
{

    layout
    {
    }

    actions
    {
        area(navigation)
        {
        }
        area(reporting)
        {
            group(Inventory)
            {
                Image = "report";
                action("Vendor _Purchased Items")
                {
                    Image = "Report";
                    RunObject = Report "Vendor/Item Purchases";
                }
                action("Inventory-Transaction Detail(Bin card)")
                {
                    Caption = 'Inventory-Transaction Detail(Bin card)';
                    Image = "report";
                    RunObject = Report "Inventory - Transaction Detail";
                }
                action("Item Age Composition-Quantity")
                {
                    Image = "report";
                    RunObject = Report "Item Age Composition - Qty.";
                }
                action("Transfer to vessel Report(Issues)")
                {
                    Image = "report";
                    RunObject = Report "Transfer To Vessel";
                }
                action("Issues to cost centers")
                {
                    Image = "report";
                    RunObject = Report "Issues To Cost Centers";
                }
                action("Periodic stock position")
                {
                    Image = "report";
                    RunObject = Report "Periodic Stock Position-CODEWA";
                }
                action("Inventory Avg. Monthly Demand")
                {
                    Image = "report";
                    RunObject = Report "Inventory Avg. Monthly Demand";
                }
                action("Job-Transaction Detail 2")
                {
                    Image = "Report";
                    RunObject = Report "Job - Transaction Detail 2";
                }
                action("Phys. Inventory List")
                {
                    Image = "report";
                    RunObject = Report "Phys. Inventory List";
                }
                action("Inventory avaliability")
                {
                    Image = "report";
                    RunObject = Report "Inventory Availability";
                }
                action("Short Supply by vessel")
                {
                    Image = "report";
                    RunObject = Report "Short Supply thru Posted Trans";
                }
                action("Inventory-Trans for D period")
                {
                    Image = "report";
                    RunObject = Report "Inventory - Transaction -test";
                }
                action("Transfer Processing/Fishshop")
                {
                    Image = "Report";
                    //***R RunObject = Report "Transfer Processing/Fish Shop";
                }
                action("Inventory Valuation")
                {
                    Image = "report";
                    RunObject = Report "Inventory Valuation";
                }
                action("ALL Fish Shop Sales Report")
                {
                    Image = "Report";
                    RunObject = Report "ALL Fish Shop Sales Report";
                }
                action("BOM-Finished Goods")
                {
                    Image = "report";
                    RunObject = Report "Assembly BOM - End Items";
                }
                action("BOM Journal-test")
                {
                    Image = "report";
                   // RunObject = Report Report802;
                }
                action("BOM-Raw Materials")
                {
                    Image = "report";
                    RunObject = Report "Assembly BOM - Raw Materials";
                }
                action("BOM Register")
                {
                    Image = "report";
                   // RunObject = Report Report803;
                }
                action("BOM-Requirmnet Planning")
                {
                    Image = "report";
                   // RunObject = Report Report807;
                }
                action("BOM-Requirment Calculation")
                {
                    Image = "report";
                   // RunObject = Report Report808;
                }
                action("BOM-Sub-Assemblies")
                {
                    Image = "report";
                    RunObject = Report "Assembly BOM - Subassemblies";
                }
                action(BOMs)
                {
                    Image = "report";
                    RunObject = Report "Assembly BOMs";
                }
                action("Where-Used List")
                {
                    Image = "report";
                    RunObject = Report "Where-Used List";
                }
            }
        }
    }
}

