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
                    ApplicationArea = All;
                }
                part(Control20; "Account Manager Activities")
                {
                    ApplicationArea = All;
                }
                part(Control19; "My Customers")
                {
                    ApplicationArea = All;
                }
            }
            group(Control18)
            {
                ShowCaption = false;
                part(Control17; "Trailing Sales Orders Chart")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                part(Control16; "My Job Queue")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                part(Control14; "My Vendors")
                {
                    ApplicationArea = All;
                }
                part(Control13; "Report Inbox Part")
                {
                    ApplicationArea = All;
                }
                systempart(Control11; MyNotes)
                {
                    ApplicationArea = All;
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
                    ApplicationArea = All;
                }
                action("Local Sales Report")
                {
                    Caption = 'Local Sales Report';
                    RunObject = Report "Local Sales Report1";
                    ApplicationArea = All;
                }
                action("all fish shop sales report")
                {
                    Caption = 'all fish shop sales report';
                    RunObject = Report "ALL Fish Shop Sales Report";
                    ApplicationArea = All;
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
                    ApplicationArea = All;
                }
                action("Production BOM")
                {
                    RunObject = Page "Production BOM List";
                    RunPageMode = View;
                    ApplicationArea = All;
                }
                action("Material Transfer Orders")
                {
                    RunObject = Page "Transfer Orders";
                    RunPageMode = View;
                    ApplicationArea = All;
                }
                action(Routings)
                {
                    RunObject = Page "Routing List";
                    RunPageMode = View;
                    ApplicationArea = All;
                }
                action("Released Prod. Orders")
                {
                    RunObject = Page "Released Production Orders";
                    RunPageMode = View;
                    ApplicationArea = All;
                }
                action("Finished Prod. Orders")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

