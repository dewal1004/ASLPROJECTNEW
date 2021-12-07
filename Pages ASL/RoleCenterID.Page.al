page 50136 "Role Center ID"
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
            }
        }
        area(sections)
        {
            group("Material Requisiion")
            {
                Caption = 'Material Requisiion';
                action(Requisition)
                {
                    Caption = 'Materia Requisition';
                    RunObject = Page "Store Requisitions";
                    RunPageView = WHERE ("Send for Approval" = CONST (false));
                }
                action("Requisition Awaiting HOD Approval")
                {
                    RunObject = Page "Store Req. ready For Approval";
                    RunPageView = WHERE ("Send for Approval" = CONST (true),
                                        "1st Approved" = FILTER (<> Approved));
                }
                action("Requisition Awaiting Store Approval")
                {
                    RunObject = Page "Store Req. Ready for Final App";
                    RunPageView = WHERE ("Send for Approval" = CONST (true),
                                        "1st Approved" = CONST (Approved),
                                        "Final Approved" = FILTER (<> Approved));
                }
                action("Requisition Awaiting Store Keeper Process")
                {
                    RunObject = Page "Store Req. Ready for Capture";
                    RunPageView = WHERE ("Send for Approval" = CONST (true),
                                        "1st Approved" = CONST (Approved),
                                        "Final Approved" = CONST (Approved),
                                        "Issued Captured" = CONST (false),
                                        Processed = CONST (false));
                }
                action("Awaiting Processed Requisition")
                {
                    RunObject = Page "MR. Issued Ready for Process";
                }
                action("Completed Processed Requisition")
                {
                    RunObject = Page "Store Req.  Approved and Issue";
                }
                action("Rejected Material Requisition")
                {
                    Caption = 'Rejected Materia Requisition';
                    RunObject = Page "Store Req.  Rejected";
                }
                action("All Material Requisition Status")
                {
                    Caption = 'All  Materia Requisition Status';
                    RunObject = Page "All Requisition Status";
                    RunPageView = WHERE ("Send for Approval" = CONST (true));
                }
                action("Material Variance Report")
                {
                    RunObject = Report "Material Variant report";
                }
                action("MR Reconciliation ")
                {
                    RunObject = Page "MR Reconciliation";
                }
            }
        }
    }
}

