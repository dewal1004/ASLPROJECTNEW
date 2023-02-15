page 50138 "GL-Report"
{
    UsageCategory = Administration;
    ApplicationArea = all;

    layout
    {
    }

    actions
    {
        area(creation)
        {
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
                    //***R RunObject = Report "Periodic Landing Report";//***R 
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
                    //***R RunObject = Report "Periodic Stock Position by Grp";
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
                /* action("Sales register")
                 {
                     Image = "report";
                     RunObject = Report Report50145;
                 }*/
            }
        }
    }
}

