page 50162 "Sales& Rec-Report"
{
    UsageCategory = Administration;
    ApplicationArea = all;
    Caption = 'Sales& Rec-Report';
    layout
    {
    }

    actions
    {
        area(creation)
        {
        }
        area(reporting)
        {
            group("Sales&Receviables")
            {
                Image = "report";
                action("Container By Month Shipment")
                {
                    Caption = 'Container By Month Shipment';
                    Image = "Report";
                    RunObject = Report "Container By Month Shipment";
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
                    Image = "Report";
                    RunObject = Report "Sales Test/Confirmation Report";
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
                action("Local Sales Report-Import Fish")
                {
                    Image = "Report";
                    RunObject = Report "ALL Fish Shop Sales Report";
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
        }
    }
}
