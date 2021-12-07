page 50163 "Purchase&Pay-Reports"
{

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
    }
}

