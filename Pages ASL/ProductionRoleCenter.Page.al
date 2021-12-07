page 50137 "Production Role Center"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Control22)
            {
                ShowCaption = false;
                part(Control21; "Finance Performance")
                {
                    Visible = false;
                }
                part(Control20; "Account Manager Activities")
                {
                }
                part(Control19; "My Customers")
                {
                }
            }
            group(Control18)
            {
                ShowCaption = false;
                part(Control17; "Trailing Sales Orders Chart")
                {
                    Visible = false;
                }
                part(Control16; "My Job Queue")
                {
                    Visible = false;
                }
                part(Control14; "My Vendors")
                {
                }
                part(Control13; "Report Inbox Part")
                {
                }
                systempart(Control11; MyNotes)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            group(Action7)
            {
                action("Periodic Stock Position")
                {
                    Caption = 'Periodic Stock Position';
                    RunObject = Report "Periodic Stock Position-CODEWA";
                }
                action("Local Sales Report")
                {
                    Caption = 'Local Sales Report';
                    RunObject = Report "Local Sales Report1";
                }
                action("all fish shop sales report")
                {
                    Caption = 'all fish shop sales report';
                    RunObject = Report "ALL Fish Shop Sales Report";
                }
            }
        }
        area(sections)
        {
            group(Production)
            {
                Caption = 'Production';
                action(Items)
                {
                    RunObject = Page "Item List";
                    RunPageMode = View;
                }
                action("Production BOM")
                {
                    RunObject = Page "Production BOM List";
                    RunPageMode = View;
                }
                action("Material Transfer Orders")
                {
                    RunObject = Page "Transfer Orders";
                    RunPageMode = View;
                }
                action(Routings)
                {
                    RunObject = Page "Routing List";
                    RunPageMode = View;
                }
                action("Released Prod. Orders")
                {
                    RunObject = Page "Released Production Orders";
                    RunPageMode = View;
                }
                action("Finished Prod. Orders")
                {
                }
            }
        }
    }
}

