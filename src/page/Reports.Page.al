page 50053 "Reports"
{
    Caption = 'ASL Reports List';
    UsageCategory = Administration;
    ApplicationArea = all;

    layout
    {
    }

    actions
    {
        area(creation)
        {
            group("Purchase&Payables")
            {
                Image = "report";
                action("Vendor -summary Agng")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Summary Aging";
                    ApplicationArea = All;
                }
                action("Vendor-top 10 List")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Top 10 List";
                    ApplicationArea = All;
                }
                action("Vendor- Item purchase")
                {
                    Image = "report";
                    RunObject = Report "Vendor/Item Purchases";
                    ApplicationArea = All;
                }
                action("Quotes Comparision Report")
                {
                    Image = "report";
                    RunObject = Report "Payroll Rprt- WITH DELETED EMP";
                    ApplicationArea = All;
                }
                action("Compare Standard &Atual Rate")
                {
                    Image = "report";
                    RunObject = Report "Transfer Waybill";
                    ApplicationArea = All;
                }
                action("Purchase Import status ")
                {
                    Image = "report";
                    RunObject = Report "Purchase Import Status";
                    ApplicationArea = All;
                }
                action("Pending purchase Orde")
                {
                    Image = "report";
                    RunObject = Report "Pending Purchase Orders";
                    ApplicationArea = All;
                }
                action("Purchase variance report")
                {
                    Image = "report";
                    RunObject = Report "Sales Returns Register";
                    ApplicationArea = All;
                }
                action("Purchase reorder")
                {
                    Image = "report";
                    RunObject = Report "Purchase Re-order";
                    ApplicationArea = All;
                }
                action("Vendor -Balance to date")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Balance to Date";
                    ApplicationArea = All;
                }
                action("Purchase register ")
                {
                    Image = "report";
                    RunObject = Report "Purchase Register(LCY)";
                    ApplicationArea = All;
                }
                action("Purchase return register")
                {
                    Image = "report";
                    RunObject = Report "Purchase Returns Register";
                    ApplicationArea = All;
                }
            }
        }
        area(processing)
        {
            group(Jobs)
            {
                Image = "report";
                action("Consolidatdd daily Point Rep!")
                {
                    Image = "report";
                    RunObject = Report "Sales Test/Confirmation Report";
                    ApplicationArea = All;
                }
                action("New daily points report fast")
                {
                    Image = "report";
                    RunObject = Report "New Daily Points Report Fast";
                    ApplicationArea = All;
                }
                action("Historical  daily points rep")
                {
                    Image = "report";
                    RunObject = Report "Historical Daily Points Rep!";
                    ApplicationArea = All;
                }
                action("Consolidated narration")
                {
                    Image = "report";
                    RunObject = Report "Container By Month Shipment";
                    ApplicationArea = All;
                }
                action("Voyage Narration")
                {
                    Image = "report";
                    RunObject = Report "Voyage Narration";
                    ApplicationArea = All;
                }
                action("New daily point s by capt rep")
                {
                    Image = "report";
                    RunObject = Report "New Daily Points by Capt Rep";
                    ApplicationArea = All;
                }
                action("Points summary report")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //***R RunObject = Report "Points Summary VJ";
                }
                action("Consolidated narration-kkk")
                {
                    Image = "report";
                    RunObject = Report "Consolidated Narration";
                    ApplicationArea = All;
                }
                action("Skipper/vessel performance")
                {
                    Image = "report";
                    RunObject = Report "Skipper/Vessel Performance";
                    ApplicationArea = All;
                }
                action("Catch incentive")
                {
                    Image = "report";
                    RunObject = Report "Catch Incentive";
                    ApplicationArea = All;
                }
                action("Job-Transaction Detail")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //*** RunObject = Report Report1204;
                }
                action("Daily points-with fishhold Temp")
                {
                    Image = "report";
                    RunObject = Report "NewDailyPointsReport Fast-AP";
                    ApplicationArea = All;
                }
                action(Organoleptic)
                {
                    Image = "report";
                    RunObject = Report Organoleptic0809;
                    ApplicationArea = All;
                }
                action("Consolidatdd daily Points")
                {
                    Image = "report";
                    RunObject = Report "Balance At Date (Cust/Vend)";
                    ApplicationArea = All;
                }
                action("Voyage End consumption Report")
                {
                    Image = "report";
                    // RunObject = Report "Voyage Ending Inv Cons exp3";
                    ApplicationArea = All;
                }
                action("Daily Breakup by Vessel Rep 1")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //***p RunObject = Report "Daily BreakUp by Vessel Rep 1"; 
                }
                action("Daily Breakup by Vessel Rep 2")
                {
                    Image = "report";
                    RunObject = Report "Daily BreakUp by Vessel Rep 2";
                    ApplicationArea = All;
                }
                action("Daily Breakup by Vessel Rep 3")
                {
                    Image = "report";
                    RunObject = Report "Daily BreakUp by Vessel Rep 3";
                    ApplicationArea = All;
                }
                action("Daily Breakup by Vessel Rep 4")
                {
                    Image = "report";
                    RunObject = Report "Foreign Banks Report";
                    ApplicationArea = All;
                }
                action("Daily Breakup by Vessel")
                {
                    Image = "report";
                    RunObject = Report "Daily Break Up By Vessel";
                    ApplicationArea = All;
                }
                action("Daily Breakup by Vess summary ")
                {
                    Image = "report";
                    RunObject = Report "Daily BreakUp by Vess Summary";
                    ApplicationArea = All;
                }
                action("Job-Transaction Detail2")
                {
                    Image = "report";
                    RunObject = Report "Job - Transaction Detail";
                    ApplicationArea = All;
                }
                action("Inventory-Transaction Detail")
                {
                    Image = "report";
                    RunObject = Report "Inventory - Transaction Detail";
                    ApplicationArea = All;
                }
                action("Transfer to Vessel")
                {
                    Image = "report";
                    RunObject = Report "Transfer To Vessel";
                    ApplicationArea = All;
                }
                action("Vessel Daily log")
                {
                    Image = "report";
                    RunObject = Report "Vessel Daily Log";
                    ApplicationArea = All;
                }
                action("Job-Transaction Detail 2")
                {
                    Image = "report";
                    RunObject = Report "Job - Transaction Detail 2";
                    ApplicationArea = All;
                }
                action("Periodic Landing Report")
                {
                    Image = "report";
                    RunObject = Report "Account Schedule BS";
                    ApplicationArea = All;
                }
                action("Voyage Narration(Points)")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //***R RunObject = Report "Voyage Narration (Points)";
                }
                action("Stock on bord")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //***R RunObject = Report "Stock On Board";
                }
            }
        }
        area(navigation)
        {
            group(Inventory)
            {
                Image = "report";
                action("Inventory-Transaction Detail(Bin card)")
                {
                    Caption = '<Inventory-Transaction Detail(Bin card)';
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
                    ApplicationArea = All;
                    //*** RunObject = Report Report50107;
                }
                action("Periodic stock production")
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
                action("Job-Transaction Detail1")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //*** RunObject = Report Report1204;
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
                    RunObject = Report "Inventory - Transaction Detail";
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
                    Image = "report";
                    ApplicationArea = All;
                    //*** RunObject = Report Report50105;
                }
                action("Inventory Valuation")
                {
                    Image = "report";
                    RunObject = Report "Inventory Valuation";
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
                    //*** RunObject = Report Report802;
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
                    //*** RunObject = Report Report803;
                }
                action("BOM-Requirmnet Planning")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //*** RunObject = Report Report807;
                }
                action("BOM-Requirment Calculation")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //*** RunObject = Report Report808;
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
        area(reporting)
        {
            group("Sales&Receviables")
            {
                Image = "report";
                action("Organoleptic Report")
                {
                    Image = "report";
                    RunObject = Report Organoleptic;
                    ApplicationArea = All;
                }
                action("Fish Shop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "Fish Shop Sales Report";
                    ApplicationArea = All;
                }
                action("Sales Invoice Check Report")
                {
                    Image = "report";
                    RunObject = Report "Consolidatdd Daily Points Rep!";
                    ApplicationArea = All;
                }
                action("Local sales report")
                {
                    Image = "report";
                    RunObject = Report "Local Sales Report1";
                    ApplicationArea = All;
                }
                action("Fish Shop Sales Report-new")
                {
                    Image = "report";
                    RunObject = Report "Fish Shop Sales Rep";
                    ApplicationArea = All;
                }
                action("Fish Shop Print-Before Posting ")
                {
                    Image = "report";
                    RunObject = Report "FIsh And Shop";
                    ApplicationArea = All;
                }
                action("Periodic Stock Position by Grip")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //***R RunObject = Report "Periodic Stock Position by Grp";
                }
                action("Apapa Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "Apapa Fish Shop Sales Report";
                    ApplicationArea = All;
                }
                action("VI  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "VI Fish Shop Sales Report";
                    ApplicationArea = All;
                }
                action("ABUJA  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "ABUJA Fish Shop Sales Report.";
                    ApplicationArea = All;
                }
                action("IKEJA  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "IKEJA Fish Shop Sales Report";
                    ApplicationArea = All;
                }
                action("LEKKI  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "LEKKI Fish Shop Sales Report";
                    ApplicationArea = All;
                }
                action("SURULERE Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "SURULERE Fish Shop SalesReport";
                    ApplicationArea = All;
                }
                action("FESTAC  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "FESTAC Fish Shop Sales Report";
                    ApplicationArea = All;
                }
                action("IBADAN  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "IBADAN Fish Shop Sales Report";
                    ApplicationArea = All;
                }
                action("ALL  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "ALL Fish Shop Sales Report";
                    ApplicationArea = All;
                }
                action("Local sales report-Import Fish")
                {
                    Image = "report";
                    RunObject = Report "Local Sales Report 2";
                    ApplicationArea = All;
                }
                action("Institutional Sales Report")
                {
                    Image = "report";
                    RunObject = Report "Institutional Sales Report";
                    ApplicationArea = All;
                }
                action("Customer - Balance to Date")
                {
                    Image = "report";
                    RunObject = Report "Customer - Balance to Date";
                    ApplicationArea = All;
                }
                action("Customer/Item Sales")
                {
                    Image = "report";
                    RunObject = Report "Customer/Item Sales";
                    ApplicationArea = All;
                }
            }
            group("General Leadger")
            {
                Image = "report";
                action("Bank Acc.- Detail Trail Bal.")
                {
                    Image = "report";
                    RunObject = Report "Bank Acc. - Detail Trial Bal.";
                    ApplicationArea = All;
                }
                action("Closing Trail Balance")
                {
                    Image = "report";
                    RunObject = Report "Closing Trial Balance";
                    ApplicationArea = All;
                }
                action("Detail Trial Balance")
                {
                    Image = "report";
                    RunObject = Report "Detail Trial Balance";
                    ApplicationArea = All;
                }
                action("Foreign Currency  Balance")
                {
                    Image = "report";
                    RunObject = Report "Foreign Currency Balance";
                    ApplicationArea = All;
                }
                action("G/L Register")
                {
                    Image = "report";
                    RunObject = Report "G/L Register";
                    ApplicationArea = All;
                }
                action("No. Series Check")
                {
                    Image = "report";
                    RunObject = Report "No. Series Check";
                    ApplicationArea = All;
                }
                action("Receivables-Payables")
                {
                    Image = "report";
                    RunObject = Report "Receivables-Payables";
                    ApplicationArea = All;
                }
                action("Reconcile Cust and vend Accs")
                {
                    Image = "report";
                    RunObject = Report "Reconcile Cust. and Vend. Accs";
                    ApplicationArea = All;
                }
                action("Trial Balance")
                {
                    Image = "report";
                    RunObject = Report "Trial Balance";
                    ApplicationArea = All;
                }
                action("Trial Balance/Budget")
                {
                    Image = "report";
                    RunObject = Report "Trial Balance/Budget";
                    ApplicationArea = All;
                }
                action("Trial Balance/previous Year")
                {
                    Image = "report";
                    RunObject = Report "Trial Balance/Previous Year";
                    ApplicationArea = All;
                }
                action("IOU Status Report")
                {
                    Image = "report";
                    RunObject = Report "IOU Status Report";
                    ApplicationArea = All;
                }
                action("Periodic Landing Report1")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //***R RunObject = Report "Periodic Landing Report";
                }
                action("Bank LIST local currency")
                {
                    Image = "report";
                    RunObject = Report "BANK LIST local currency";
                    ApplicationArea = All;
                }
                action("Bank LIST Foreign  currency")
                {
                    Image = "report";
                    RunObject = Report "BANK LIST foreign currency";
                    ApplicationArea = All;
                }
                action("Bank balance")
                {
                    Image = "report";
                    RunObject = Report "Banks Balances";
                    ApplicationArea = All;
                }
                action("Balance at date (cust/vend)")
                {
                    Image = "report";
                    RunObject = Report "Voyage P &  L";
                    ApplicationArea = All;
                }
                action("OUTSTANDING LOANS")
                {
                    Image = "report";
                    RunObject = Report "Online loan";
                    ApplicationArea = All;
                }
                action("Vendor- Summary aging")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Summary Aging";
                    ApplicationArea = All;
                }
                action("Customer-Summary aging")
                {
                    Image = "report";
                    RunObject = Report "Customer - Summary Aging";
                    ApplicationArea = All;
                }
                action("Account schedule Portait")
                {
                    Image = "report";
                    RunObject = Report "Account Schedule Portrait";
                    ApplicationArea = All;
                }
                action("Periodic stock position by Grp")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //**** RunObject = Report "Periodic Stock Position by Grp";
                }
                action("Journal Register")
                {
                    Image = "report";
                    RunObject = Report "Journal Register";
                    ApplicationArea = All;
                }
                action("New Trail Balance")
                {
                    Image = "report";
                    RunObject = Report "New Trial Balance";
                    ApplicationArea = All;
                }
                action("Sales register")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //RunObject = Report Report50145;
                }
            }
            group("Human Resource")
            {
                Image = "report";
                action("Employee-Staff Absences")
                {
                    Image = "report";
                    RunObject = Report "Employee - Staff Absences";
                    ApplicationArea = All;
                }
                action("Employee-Absences by Causes")
                {
                    Image = "report";
                    RunObject = Report "Employee - Absences by Causes";
                    ApplicationArea = All;
                }
                action("Man power budget report")
                {
                    Image = "report";
                    RunObject = Report "Mp Budget report";
                    ApplicationArea = All;
                }
                action("Payrol report-NSITF")
                {
                    Image = "report";
                    ApplicationArea = All;
                    //RunObject = Report Report50162;
                }
                action("Staff position count")
                {
                    Image = "report";
                    RunObject = Report "Staff Position as at";
                    ApplicationArea = All;
                }
                action("Staff position -Group Wise")
                {
                    Image = "report";
                    RunObject = Report "Staff Position as at by PG";
                    ApplicationArea = All;
                }
                action("Employee-List")
                {
                    Image = "report";
                    RunObject = Report "Employee - List";
                    ApplicationArea = All;
                }
                action("Employee-Bank Acc No.s")
                {
                    Image = "report";
                    RunObject = Report "Inventory(Value) - Top 10 List";
                    ApplicationArea = All;
                }
            }
            group("Fixed assets")
            {
                Image = "report";
                action("Fixed asset Register")
                {
                    Image = "report";
                    RunObject = Report "Fixed Asset Register";
                    ApplicationArea = All;
                }
                action("Fixed Asset -Analysis")
                {
                    Image = "report";
                    RunObject = Report "Fixed Asset - Analysis";
                    ApplicationArea = All;
                }
                action("Fixed Asset-Detail")
                {
                    Image = "report";
                    RunObject = Report "Fixed Asset - Details";
                    ApplicationArea = All;
                }
                action("Fixed Asset-G/L Analysis")
                {
                    Image = "report";
                    RunObject = Report "Fixed Asset - G/L Analysis";
                    ApplicationArea = All;
                }
                action("Maintenance Register")
                {
                    Image = "report";
                    RunObject = Report "Maintenance Register";
                    ApplicationArea = All;
                }
                action("Maintainance- Analysis")
                {
                    Image = "report";
                    RunObject = Report "Maintenance - Analysis";
                    ApplicationArea = All;
                }
                action("Maintainance- Detail")
                {
                    Image = "report";
                    RunObject = Report "Maintenance - Details";
                    ApplicationArea = All;
                }
                action("Maintainance-Next Service")
                {
                    Image = "report";
                    RunObject = Report "Maintenance - Next Service";
                    ApplicationArea = All;
                }
                action("Vehicle Maintainance-Analysis")
                {
                    Image = "report";
                    RunObject = Report "Voyage P & L Batch";
                    ApplicationArea = All;
                }
                action("Customer- Detail Trail Bal.")
                {
                    Image = "report";
                    RunObject = Report "Customer - Detail Trial Bal.";
                    ApplicationArea = All;
                }
                action("Vendor-Detail Trail bal.")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Detail Trial Balance";
                    ApplicationArea = All;
                }
                action("Customer-Balance to Date")
                {
                    Image = "report";
                    RunObject = Report "Customer - Balance to Date";
                    ApplicationArea = All;
                }
                action("Inventory-Top 10List")
                {
                    Image = "report";
                    RunObject = Report "Inventory - Top 10 List";
                    ApplicationArea = All;
                }
                action("Inventory Valuation2")
                {
                    Image = "report";
                    RunObject = Report "Voyage P &  L";
                    ApplicationArea = All;
                }
                action("Group Inventory Valuation ")
                {
                    Image = "report";
                    RunObject = Report "Purchase Request List";
                    ApplicationArea = All;
                }
                action("Item Age Composition-Value")
                {
                    Image = "report";
                    RunObject = Report "Item Age Composition - Value";
                    ApplicationArea = All;
                }
                action("Inventory Valuation1")
                {
                    Image = "report";
                    RunObject = Report "Inventory Valuation";
                    ApplicationArea = All;
                }
                action("Customer-Detail Trail Bal.")
                {
                    Image = "report";
                    RunObject = Report "Customer - Detail Trial Bal.";
                    ApplicationArea = All;
                }
                action("Export order Summary")
                {
                    Image = "report";
                    RunObject = Report "Export Order Details";
                    ApplicationArea = All;
                }
                action("Export Order Container Detail")
                {
                    Image = "report";
                    RunObject = Report "Appraisal Order";
                    ApplicationArea = All;
                }
                action("Item Age Composition-Value1")
                {
                    Image = "report";
                    RunObject = Report "Item Age Composition - Qty.";
                    ApplicationArea = All;
                }
                action("Vendor-Detail Trail bal.1")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Detail Trial Balance";
                    ApplicationArea = All;
                }
                action("Bank Acc-Detail Trail Bal-1404")
                {
                    Image = "report";
                    RunObject = Report "Bank Acc-Detail Trial Bal-1404";
                    ApplicationArea = All;
                }
                action("Detail Trial Balance-4")
                {
                    Image = "report";
                    RunObject = Report "Detail Trial Balance-4";
                    ApplicationArea = All;
                }
                action("Vendor- Detail Trial Balance-304")
                {
                    Image = "report";
                    RunObject = Report "Vendor-Detail Trial Balanc-304";
                    ApplicationArea = All;
                }
                action("Inventory-Transaction-704")
                {
                    Image = "report";
                    RunObject = Report "Inventory - BINCARD 704";
                    ApplicationArea = All;
                }
                action("Consumptions Vessel Wise VJ")
                {
                    Image = "report";
                    RunObject = Report "Consumptions Vessel Wise VJ";
                    ApplicationArea = All;
                }
                action("Inventory-BINCARD 704 B")
                {
                    Image = "report";
                    RunObject = Report "Inventory - BINCARD 704 B";
                    ApplicationArea = All;
                }
                action("Import item summary VJ")
                {
                    Image = "report";
                    RunObject = Report "Import Items Summary VJ";
                    ApplicationArea = All;
                }
                action("Vessel Performance ")
                {
                    Image = "report";
                    RunObject = Report "Vessel Performance";
                    ApplicationArea = All;
                }
                action("Cummulative Payroll Report")
                {
                    Image = "report";
                    RunObject = Report "Cummulative Payroll Report";
                    ApplicationArea = All;
                }
                action("Import Summary for a Period")
                {
                    Image = "report";
                    RunObject = Report "Import for a period 2 VJ";
                    ApplicationArea = All;
                }
                action("FISH SHOP Sales Statistics")
                {
                    Image = "report";
                    RunObject = Report "Inventory - Sales Statistics";
                    ApplicationArea = All;
                }
                action("Posted Catch Reconcilation")
                {
                    Image = "report";
                    RunObject = Report "Catch Reconciliatn Posted";
                    ApplicationArea = All;
                }
                action("Detail Trail Balnce-5")
                {
                    Image = "report";
                    RunObject = Report "Detail Trial Balance - 5";
                    ApplicationArea = All;
                }
            }
            group(Resource)
            {
                Image = "report";
                action("Resource List")
                {
                    Image = "report";
                    RunObject = Report "Resource - List";
                    ApplicationArea = All;
                }
            }
            group(PayRolls)
            {
                Image = "report";
                action("ASL Create New Payslips ")
                {
                    Image = "report";
                    RunObject = Report "ASL Create New payslips - New";
                    ApplicationArea = All;
                }
                action("ASL Monthly Payslip")
                {
                    Image = "report";
                    RunObject = Report "Monthly Payslip";
                    ApplicationArea = All;
                }
                action("Personal Record List")
                {
                    Image = "report";
                    RunObject = Report "Sales Delivery Note";
                    ApplicationArea = All;
                }
                action("Payroll Report")
                {
                    Image = "report";
                    RunObject = Report "Payroll Report";
                    ApplicationArea = All;
                }
                action("Online loan")
                {
                    Image = "report";
                    RunObject = Report "OUTSTANDING LOANS";
                    ApplicationArea = All;
                }
                action("IOU Balance")
                {
                    Image = "report";
                    RunObject = Report "IOU Balance";
                    ApplicationArea = All;
                }
                action("ASL Outstanding Loans")
                {
                    Image = "report";
                    RunObject = Report "Local Sales Report1";
                    ApplicationArea = All;
                }
                action("Employee-Bank Accts")
                {
                    Image = "report";
                    RunObject = Report "Employee-Bank Acct";
                    ApplicationArea = All;
                }
                action("Payroll Rprt-WITH DELETED EMP")
                {
                    Image = "report";
                    RunObject = Report "Payroll Rprt- WITH DELETED EMP";
                    ApplicationArea = All;
                }
            }
        }
    }
}

