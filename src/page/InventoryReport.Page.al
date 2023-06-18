page 50164 "Inventory-Report"
{
    UsageCategory = Administration;
    ApplicationArea = all;
    Caption = 'Inventory-Report';
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
                    ApplicationArea = All;
                }
                action("Inventory-Transaction Detail(Bin card)")
                {
                    Caption = 'Inventory-Transaction Detail(Bin card)';
                    Image = "report";
                    RunObject = Report "Inventory - Transaction Detail";
                    ApplicationArea = All;
                }
                action("Item Age Composition-Quantity")
                {
                    Image = "report";
                    RunObject = Report "Item Age Composition - Qty.";
                    ApplicationArea = All;
                }
                action("Transfer to vessel Report(Issues)")
                {
                    Image = "report";
                    RunObject = Report "Transfer To Vessel";
                    ApplicationArea = All;
                }
                action("Issues to cost centers")
                {
                    Image = "report";
                    RunObject = Report "Issues To Cost Centers";
                    ApplicationArea = All;
                }
                action("Periodic stock position")
                {
                    Image = "report";
                    RunObject = Report "Periodic Stock Position-CODEWA";
                    ApplicationArea = All;
                }
                action("Inventory Avg. Monthly Demand")
                {
                    Image = "report";
                    RunObject = Report "Inventory Avg. Monthly Demand";
                    ApplicationArea = All;
                }
                action("Job-Transaction Detail 2")
                {
                    Image = "Report";
                    RunObject = Report "Job - Transaction Detail 2";
                    ApplicationArea = All;
                }
                action("Phys. Inventory List")
                {
                    Image = "report";
                    RunObject = Report "Phys. Inventory List";
                    ApplicationArea = All;
                }
                action("Inventory avaliability")
                {
                    Image = "report";
                    RunObject = Report "Inventory Availability";
                    ApplicationArea = All;
                }
                action("Short Supply by vessel")
                {
                    Image = "report";
                    RunObject = Report "Short Supply thru Posted Trans";
                    ApplicationArea = All;
                }
                action("Inventory-Trans for D period")
                {
                    Image = "report";
                    RunObject = Report "Inventory - Transaction -test";
                    ApplicationArea = All;
                }
                action("Transfer Processing/Fishshop")
                {
                    Image = "Report";
                    ApplicationArea = All;
                    //***R RunObject = Report "Transfer Processing/Fish Shop";
                }
                action("Inventory Valuation")
                {
                    Image = "report";
                    RunObject = Report "Inventory Valuation";
                    ApplicationArea = All;
                }
                action("ALL Fish Shop Sales Report")
                {
                    Image = "Report";
                    RunObject = Report "ALL Fish Shop Sales Report";
                    ApplicationArea = All;
                }
                action("BOM-Finished Goods")
                {
                    Image = "report";
                    RunObject = Report "Assembly BOM - End Items";
                    ApplicationArea = All;
                }
                action("BOM Journal-test")
                {
                    Image = "report";
                    ApplicationArea = All;
                    // RunObject = Report Report802;
                }
                action("BOM-Raw Materials")
                {
                    Image = "report";
                    RunObject = Report "Assembly BOM - Raw Materials";
                    ApplicationArea = All;
                }
                action("BOM Register")
                {
                    Image = "report";
                    ApplicationArea = All;
                    // RunObject = Report Report803;
                }
                action("BOM-Requirmnet Planning")
                {
                    Image = "report";
                    ApplicationArea = All;
                    // RunObject = Report Report807;
                }
                action("BOM-Requirment Calculation")
                {
                    Image = "report";
                    ApplicationArea = All;
                    // RunObject = Report Report808;
                }
                action("BOM-Sub-Assemblies")
                {
                    Image = "report";
                    RunObject = Report "Assembly BOM - Subassemblies";
                    ApplicationArea = All;
                }
                action(BOMs)
                {
                    Image = "report";
                    RunObject = Report "Assembly BOMs";
                    ApplicationArea = All;
                }
                action("Where-Used List")
                {
                    Image = "report";
                    RunObject = Report "Where-Used List";
                    ApplicationArea = All;
                }
            }
        }
    }
}
