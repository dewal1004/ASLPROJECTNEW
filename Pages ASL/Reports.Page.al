page 50053 Reports
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
                }
                action("Vendor-top 10 List")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Top 10 List";
                }
                action("Vendor- Item purchase")
                {
                    Image = "report";
                    RunObject = Report "Vendor/Item Purchases";
                }
                action("Quotes Comparision Report")
                {
                    Image = "report";
                    RunObject = Report "Payroll Rprt- WITH DELETED EMP";
                }
                action("Compare Standard &Atual Rate")
                {
                    Image = "report";
                    RunObject = Report "Transfer Waybill";
                }
                action("Purchase Import status ")
                {
                    Image = "report";
                    RunObject = Report "Purchase Import Status";
                }
                action("Pending purchase Orde")
                {
                    Image = "report";
                    RunObject = Report "Pending Purchase Orders";
                }
                action("Purchase variance report")
                {
                    Image = "report";
                    RunObject = Report "Sales Returns Register.";
                }
                action("Purchase reorder")
                {
                    Image = "report";
                    RunObject = Report "Purchase Re-order";
                }
                action("Vendor -Balance to date")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Balance to Date";
                }
                action("Purchase register ")
                {
                    Image = "report";
                    RunObject = Report "Purchase Register(LCY)";
                }
                action("Purchase return register")
                {
                    Image = "report";
                    RunObject = Report "Purchase Returns Register";
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
                }
                action("New daily points report fast")
                {
                    Image = "report";
                    RunObject = Report "New Daily Points Report Fast";
                }
                action("Historical  daily points rep")
                {
                    Image = "report";
                    RunObject = Report "Historical Daily Points Rep!";
                }
                action("Consolidated narration")
                {
                    Image = "report";
                    RunObject = Report "Container By Month Shipment";
                }
                action("Voyage Narration")
                {
                    Image = "report";
                    RunObject = Report "Voyage Narration";
                }
                action("New daily point s by capt rep")
                {
                    Image = "report";
                    RunObject = Report "New Daily Points by Capt Rep";
                }
                action("Points summary report")
                {
                    Image = "report";
                    //***R RunObject = Report "Points Summary VJ";
                }
                action("Consolidated narration-kkk")
                {
                    Image = "report";
                    RunObject = Report "Consolidated Narration";
                }
                action("Skipper/vessel performance")
                {
                    Image = "report";
                    RunObject = Report "Skipper/Vessel Performance";
                }
                action("Catch incentive")
                {
                    Image = "report";
                    RunObject = Report "Catch Incentive";
                }
                action("Job-Transaction Detail")
                {
                    Image = "report";
                   //*** RunObject = Report Report1204;
                }
                action("Daily points-with fishhold Temp")
                {
                    Image = "report";
                    RunObject = Report "NewDailyPointsReport Fast-AP";
                }
                action(Organoleptic)
                {
                    Image = "report";
                    RunObject = Report Organoleptic0809;
                }
                action("Consolidatdd daily Points")
                {
                    Image = "report";
                    RunObject = Report "Balance At Date (Cust/Vend)";
                }
                action("Voyage End consumption Report")
                {
                    Image = "report";
                    RunObject = Report "Voyage Ending Inv Cons exp3!";
                }
                action("Daily Breakup by Vessel Rep 1")
                {
                    Image = "report";
                    //***p RunObject = Report "Daily BreakUp by Vessel Rep 1"; 
                }
                action("Daily Breakup by Vessel Rep 2")
                {
                    Image = "report";
                    RunObject = Report "Daily BreakUp by Vessel Rep 2";
                }
                action("Daily Breakup by Vessel Rep 3")
                {
                    Image = "report";
                    RunObject = Report "Daily BreakUp by Vessel Rep 3";
                }
                action("Daily Breakup by Vessel Rep 4")
                {
                    Image = "report";
                    RunObject = Report "Foreign Banks Report";
                }
                action("Daily Breakup by Vessel")
                {
                    Image = "report";
                    RunObject = Report "Daily Break Up By Vessel";
                }
                action("Daily Breakup by Vess summary ")
                {
                    Image = "report";
                    RunObject = Report "Daily BreakUp by Vess Summary";
                }
                action("Job-Transaction Detail2")
                {
                    Image = "report";
                    RunObject = Report "Job - Transaction Detail";
                }
                action("Inventory-Transaction Detail")
                {
                    Image = "report";
                    RunObject = Report "Inventory - Transaction Detail";
                }
                action("Transfer to Vessel")
                {
                    Image = "report";
                    RunObject = Report "Transfer To Vessel";
                }
                action("Vessel Daily log")
                {
                    Image = "report";
                    RunObject = Report "Vessel Daily Log";
                }
                action("Job-Transaction Detail 2")
                {
                    Image = "report";
                    RunObject = Report "Job - Transaction Detail 2";
                }
                action("Periodic Landing Report")
                {
                    Image = "report";
                    RunObject = Report "Account Schedule BS";
                }
                action("Voyage Narration(Points)")
                {
                    Image = "report";
                    //***R RunObject = Report "Voyage Narration (Points)";
                }
                action("Stock on bord")
                {
                    Image = "report";
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
                   //*** RunObject = Report Report50107;
                }
                action("Periodic stock production")
                {
                    Image = "report";
                    RunObject = Report "Periodic Stock Position-CODEWA";
                }
                action("Inventory Avg. Monthly Demand")
                {
                    Image = "report";
                    RunObject = Report "Inventory Avg. Monthly Demand";
                }
                action("Job-Transaction Detail1")
                {
                    Image = "report";
                    //*** RunObject = Report Report1204;
                }
                action("Phys. Inventory List")
                {
                    Image = "report";
                    RunObject = Report "Phys. Inventory List";
                }
                action("Inventory avaliability")
                {
                    Image = "report";
                    RunObject = Report "Inventory - Transaction Detail";
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
                    Image = "report";
                   //*** RunObject = Report Report50105;
                }
                action("Inventory Valuation")
                {
                    Image = "report";
                    RunObject = Report "Inventory Valuation";
                }
                action("BOM-Finished Goods")
                {
                    Image = "report";
                    RunObject = Report "Assembly BOM - End Items";
                }
                action("BOM Journal-test")
                {
                    Image = "report";
                    //*** RunObject = Report Report802;
                }
                action("BOM-Raw Materials")
                {
                    Image = "report";
                    RunObject = Report "Assembly BOM - Raw Materials";
                }
                action("BOM Register")
                {
                    Image = "report";
                   //*** RunObject = Report Report803;
                }
                action("BOM-Requirmnet Planning")
                {
                    Image = "report";
                   //*** RunObject = Report Report807;
                }
                action("BOM-Requirment Calculation")
                {
                    Image = "report";
                    //*** RunObject = Report Report808;
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
        area(reporting)
        {
            group("Sales&Receviables")
            {
                Image = "report";
                action("Organoleptic Report")
                {
                    Image = "report";
                    RunObject = Report Organoleptic;
                }
                action("Fish Shop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "Fish Shop Sales Report";
                }
                action("Sales Invoice Check Report")
                {
                    Image = "report";
                    RunObject = Report "Consolidatdd Daily Points Rep!";
                }
                action("Local sales report")
                {
                    Image = "report";
                    RunObject = Report "Local Sales Report1";
                }
                action("Fish Shop Sales Report-new")
                {
                    Image = "report";
                    RunObject = Report "Fish Shop Sales Rep";
                }
                action("Fish Shop Print-Before Posting ")
                {
                    Image = "report";
                    RunObject = Report "FIsh And Shop";
                }
                action("Periodic Stock Position by Grip")
                {
                    Image = "report";
                    //***R RunObject = Report "Periodic Stock Position by Grp";
                }
                action("Apapa Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "Apapa Fish Shop Sales Report";
                }
                action("VI  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "VI Fish Shop Sales Report";
                }
                action("ABUJA  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "ABUJA Fish Shop Sales Report";
                }
                action("IKEJA  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "IKEJA Fish Shop Sales Report";
                }
                action("LEKKI  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "LEKKI Fish Shop Sales Report";
                }
                action("SURULERE Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "SURULERE Fish Shop SalesReport";
                }
                action("FESTAC  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "FESTAC Fish Shop Sales Report";
                }
                action("IBADAN  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "IBADAN Fish Shop Sales Report";
                }
                action("ALL  Fishshop Sales Report")
                {
                    Image = "report";
                    RunObject = Report "ALL Fish Shop Sales Report";
                }
                action("Local sales report-Import Fish")
                {
                    Image = "report";
                    RunObject = Report "Local Sales Report 2";
                }
                action("Institutional Sales Report")
                {
                    Image = "report";
                    RunObject = Report "Institutional Sales Report";
                }
                action("Customer - Balance to Date")
                {
                    Image = "report";
                    RunObject = Report "Customer - Balance to Date";
                }
                action("Customer/Item Sales")
                {
                    Image = "report";
                    RunObject = Report "Customer/Item Sales";
                }
            }
            group("General Leadger")
            {
                Image = "report";
                action("Bank Acc.- Detail Trail Bal.")
                {
                    Image = "report";
                    RunObject = Report "Bank Acc. - Detail Trial Bal.";
                }
                action("Closing Trail Balance")
                {
                    Image = "report";
                    RunObject = Report "Closing Trial Balance";
                }
                action("Detail Trial Balance")
                {
                    Image = "report";
                    RunObject = Report "Detail Trial Balance";
                }
                action("Foreign Currency  Balance")
                {
                    Image = "report";
                    RunObject = Report "Foreign Currency Balance";
                }
                action("G/L Register")
                {
                    Image = "report";
                    RunObject = Report "G/L Register";
                }
                action("No. Series Check")
                {
                    Image = "report";
                    RunObject = Report "No. Series Check";
                }
                action("Receivables-Payables")
                {
                    Image = "report";
                    RunObject = Report "Receivables-Payables";
                }
                action("Reconcile Cust and vend Accs")
                {
                    Image = "report";
                    RunObject = Report "Reconcile Cust. and Vend. Accs";
                }
                action("Trial Balance")
                {
                    Image = "report";
                    RunObject = Report "Trial Balance";
                }
                action("Trial Balance/Budget")
                {
                    Image = "report";
                    RunObject = Report "Trial Balance/Budget";
                }
                action("Trial Balance/previous Year")
                {
                    Image = "report";
                    RunObject = Report "Trial Balance/Previous Year";
                }
                action("IOU Status Report")
                {
                    Image = "report";
                    RunObject = Report "IOU Status Report";
                }
                action("Periodic Landing Report1")
                {
                    Image = "report";
                    //***R RunObject = Report "Periodic Landing Report";
                }
                action("Bank LIST local currency")
                {
                    Image = "report";
                    RunObject = Report "BANK LIST local currency";
                }
                action("Bank LIST Foreign  currency")
                {
                    Image = "report";
                    RunObject = Report "BANK LIST foreign currency";
                }
                action("Bank balance")
                {
                    Image = "report";
                    RunObject = Report "Banks Balances";
                }
                action("Balance at date (cust/vend)")
                {
                    Image = "report";
                    RunObject = Report "Voyage P &  L";
                }
                action("OUTSTANDING LOANS")
                {
                    Image = "report";
                    RunObject = Report "Online loan";
                }
                action("Vendor- Summary aging")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Summary Aging";
                }
                action("Customer-Summary aging")
                {
                    Image = "report";
                    RunObject = Report "Customer - Summary Aging";
                }
                action("Account schedule Portait")
                {
                    Image = "report";
                    RunObject = Report "Account Schedule Portrait";
                }
                action("Periodic stock position by Grp")
                {
                    Image = "report";
                    //**** RunObject = Report "Periodic Stock Position by Grp";
                }
                action("Journal Register")
                {
                    Image = "report";
                    RunObject = Report "Journal Register";
                }
                action("New Trail Balance")
                {
                    Image = "report";
                    RunObject = Report "New Trial Balance";
                }
                action("Sales register")
                {
                    Image = "report";
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
                }
                action("Employee-Absences by Causes")
                {
                    Image = "report";
                    RunObject = Report "Employee - Absences by Causes";
                }
                action("Man power budget report")
                {
                    Image = "report";
                    RunObject = Report "Mp Budget report";
                }
                action("Payrol report-NSITF")
                {
                    Image = "report";
                    //RunObject = Report Report50162;
                }
                action("Staff position count")
                {
                    Image = "report";
                    RunObject = Report "Staff Position as at";
                }
                action("Staff position -Group Wise")
                {
                    Image = "report";
                    RunObject = Report "Staff Position as at by PG";
                }
                action("Employee-List")
                {
                    Image = "report";
                    RunObject = Report "Employee - List";
                }
                action("Employee-Bank Acc No.s")
                {
                    Image = "report";
                    RunObject = Report "Inventory(Value) - Top 10 List";
                }
            }
            group("Fixed assets")
            {
                Image = "report";
                action("Fixed asset Register")
                {
                    Image = "report";
                    RunObject = Report "Fixed Asset Register";
                }
                action("Fixed Asset -Analysis")
                {
                    Image = "report";
                    RunObject = Report "Fixed Asset - Analysis";
                }
                action("Fixed Asset-Detail")
                {
                    Image = "report";
                    RunObject = Report "Fixed Asset - Details";
                }
                action("Fixed Asset-G/L Analysis")
                {
                    Image = "report";
                    RunObject = Report "Fixed Asset - G/L Analysis";
                }
                action("Maintenance Register")
                {
                    Image = "report";
                    RunObject = Report "Maintenance Register";
                }
                action("Maintainance- Analysis")
                {
                    Image = "report";
                    RunObject = Report "Maintenance - Analysis";
                }
                action("Maintainance- Detail")
                {
                    Image = "report";
                    RunObject = Report "Maintenance - Details";
                }
                action("Maintainance-Next Service")
                {
                    Image = "report";
                    RunObject = Report "Maintenance - Next Service";
                }
                action("Vehicle Maintainance-Analysis")
                {
                    Image = "report";
                    RunObject = Report "Voyage P & L Batch";
                }
                action("Customer- Detail Trail Bal.")
                {
                    Image = "report";
                    RunObject = Report "Customer - Detail Trial Bal.";
                }
                action("Vendor-Detail Trail bal.")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Detail Trial Balance";
                }
                action("Customer-Balance to Date")
                {
                    Image = "report";
                    RunObject = Report "Customer - Balance to Date";
                }
                action("Inventory-Top 10List")
                {
                    Image = "report";
                    RunObject = Report "Inventory - Top 10 List";
                }
                action("Inventory Valuation2")
                {
                    Image = "report";
                    RunObject = Report "Voyage P &  L";
                }
                action("Group Inventory Valuation ")
                {
                    Image = "report";
                    RunObject = Report "Purchase Request List";
                }
                action("Item Age Composition-Value")
                {
                    Image = "report";
                    RunObject = Report "Item Age Composition - Value";
                }
                action("Inventory Valuation1")
                {
                    Image = "report";
                    RunObject = Report "Inventory Valuation";
                }
                action("Customer-Detail Trail Bal.")
                {
                    Image = "report";
                    RunObject = Report "Customer - Detail Trial Bal.";
                }
                action("Export order Summary")
                {
                    Image = "report";
                    RunObject = Report "Export Order Details";
                }
                action("Export Order Container Detail")
                {
                    Image = "report";
                    RunObject = Report "Appraisal Order";
                }
                action("Item Age Composition-Value1")
                {
                    Image = "report";
                    RunObject = Report "Item Age Composition - Qty.";
                }
                action("Vendor-Detail Trail bal.1")
                {
                    Image = "report";
                    RunObject = Report "Vendor - Detail Trial Balance";
                }
                action("Bank Acc-Detail Trail Bal-1404")
                {
                    Image = "report";
                    RunObject = Report "Bank Acc-Detail Trial Bal-1404";
                }
                action("Detail Trial Balance-4")
                {
                    Image = "report";
                    RunObject = Report "Detail Trial Balance-4";
                }
                action("Vendor- Detail Trial Balance-304")
                {
                    Image = "report";
                    RunObject = Report "Vendor-Detail Trial Balanc-304";
                }
                action("Inventory-Transaction-704")
                {
                    Image = "report";
                    RunObject = Report "Inventory - BINCARD 704";
                }
                action("Consumptions Vessel Wise VJ")
                {
                    Image = "report";
                    RunObject = Report "Consumptions Vessel Wise VJ";
                }
                action("Inventory-BINCARD 704 B")
                {
                    Image = "report";
                    RunObject = Report "Inventory - BINCARD 704 B";
                }
                action("Import item summary VJ")
                {
                    Image = "report";
                    RunObject = Report "Import Items Summary VJ";
                }
                action("Vessel Performance ")
                {
                    Image = "report";
                    RunObject = Report "Vessel Performance";
                }
                action("Cummulative Payroll Report")
                {
                    Image = "report";
                    RunObject = Report "Cummulative Payroll Report";
                }
                action("Import Summary for a Period")
                {
                    Image = "report";
                    RunObject = Report "Import for a period 2 VJ";
                }
                action("FISH SHOP Sales Statistics")
                {
                    Image = "report";
                    RunObject = Report "Inventory - Sales Statistics";
                }
                action("Posted Catch Reconcilation")
                {
                    Image = "report";
                    RunObject = Report "Catch Reconciliatn Posted";
                }
                action("Detail Trail Balnce-5")
                {
                    Image = "report";
                    RunObject = Report "Detail Trial Balance - 5";
                }
            }
            group(Resource)
            {
                Image = "report";
                action("Resource List")
                {
                    Image = "report";
                    RunObject = Report "Resource - List";
                }
            }
            group(PayRolls)
            {
                Image = "report";
                action("ASL Create New Payslips ")
                {
                    Image = "report";
                    RunObject = Report "ASL Create New payslips - New";
                }
                action("ASL Monthly Payslip")
                {
                    Image = "report";
                    RunObject = Report "Monthly Payslip";
                }
                action("Personal Record List")
                {
                    Image = "report";
                    RunObject = Report "Sales Delivery Note";
                }
                action("Payroll Report")
                {
                    Image = "report";
                    RunObject = Report "Payroll Report";
                }
                action("Online loan")
                {
                    Image = "report";
                    RunObject = Report "OUTSTANDING LOANS";
                }
                action("IOU Balance")
                {
                    Image = "report";
                    RunObject = Report "IOU Balance";
                }
                action("ASL Outstanding Loans")
                {
                    Image = "report";
                    RunObject = Report "Local Sales Report1";
                }
                action("Employee-Bank Accts")
                {
                    Image = "report";
                    RunObject = Report "Employee-Bank Acct";
                }
                action("Payroll Rprt-WITH DELETED EMP")
                {
                    Image = "report";
                    RunObject = Report "Payroll Rprt- WITH DELETED EMP";
                }
            }
        }
    }
}

