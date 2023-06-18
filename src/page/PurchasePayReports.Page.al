page 50163 "Purchase&Pay-Reports"
{
    UsageCategory = Administration;
    ApplicationArea = all;
    Caption = 'Purchase&Pay-Reports';
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
    }
}
