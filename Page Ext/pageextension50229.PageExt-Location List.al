pageextension 50229 pageextension50229 extends "Location List"
{
    layout
    {

        //Unsupported feature: Property Modification (Name) on "Name(Control 4)".


        //Unsupported feature: Property Modification (SourceExpr) on "Name(Control 4)".


        //Unsupported feature: Property Modification (ImplicitType) on "Name(Control 4)".

        addafter("Code")
        {
            field(AslName; Name)
            {
            }
        }
        addafter(ASLName)
        {
            field("Name 2"; "Name 2")
            {
                Visible = false;
            }
            field(Address; Address)
            {
            }
            field("Address 2"; "Address 2")
            {
            }
            field(City; City)
            {
            }
            field("Phone No."; "Phone No.")
            {
            }
            field("Phone No. 2"; "Phone No. 2")
            {
            }
            field("Telex No."; "Telex No.")
            {
            }
            field("Fax No."; "Fax No.")
            {
            }
            field(Contact; Contact)
            {
            }
            field("Post Code"; "Post Code")
            {
            }
            field(County; County)
            {
            }
            field("E-Mail"; "E-Mail")
            {
            }
            field("Home Page"; "Home Page")
            {
            }
            field("Country/Region Code"; "Country/Region Code")
            {
            }
            field("Use As In-Transit"; "Use As In-Transit")
            {
            }
            field("Require Put-away"; "Require Put-away")
            {
            }
            field("Require Pick"; "Require Pick")
            {
            }
            field("Cross-Dock Due Date Calc."; "Cross-Dock Due Date Calc.")
            {
            }
            field("Use Cross-Docking"; "Use Cross-Docking")
            {
            }
            field("Require Receive"; "Require Receive")
            {
            }
            field("Require Shipment"; "Require Shipment")
            {
            }
            field("Bin Mandatory"; "Bin Mandatory")
            {
            }
            field("Directed Put-away and Pick"; "Directed Put-away and Pick")
            {
            }
            field("Default Bin Selection"; "Default Bin Selection")
            {
            }
            field("Outbound Whse. Handling Time"; "Outbound Whse. Handling Time")
            {
            }
            field("Inbound Whse. Handling Time"; "Inbound Whse. Handling Time")
            {
            }
            field("Put-away Template Code"; "Put-away Template Code")
            {
            }
            field("Use Put-away Worksheet"; "Use Put-away Worksheet")
            {
            }
            field("Pick According to FEFO"; "Pick According to FEFO")
            {
            }
            field("Allow Breakbulk"; "Allow Breakbulk")
            {
            }
            field("Bin Capacity Policy"; "Bin Capacity Policy")
            {
            }
            field("Open Shop Floor Bin Code"; "Open Shop Floor Bin Code")
            {
            }
            field("To-Production Bin Code"; "To-Production Bin Code")
            {
            }
            field("From-Production Bin Code"; "From-Production Bin Code")
            {
            }
            field("Adjustment Bin Code"; "Adjustment Bin Code")
            {
            }
            field("Always Create Put-away Line"; "Always Create Put-away Line")
            {
            }
            field("Always Create Pick Line"; "Always Create Pick Line")
            {
            }
            field("Special Equipment"; "Special Equipment")
            {
            }
            field("Receipt Bin Code"; "Receipt Bin Code")
            {
            }
            field("Shipment Bin Code"; "Shipment Bin Code")
            {
            }
            field("Cross-Dock Bin Code"; "Cross-Dock Bin Code")
            {
            }
            field("To-Assembly Bin Code"; "To-Assembly Bin Code")
            {
            }
            field("From-Assembly Bin Code"; "From-Assembly Bin Code")
            {
            }
            field("Asm.-to-Order Shpt. Bin Code"; "Asm.-to-Order Shpt. Bin Code")
            {
            }
            field("Base Calendar Code"; "Base Calendar Code")
            {
            }
            field("Use ADCS"; "Use ADCS")
            {
            }
            field("Location Type"; "Location Type")
            {
                Visible = false;
            }
            field("Sea Days"; "Sea Days")
            {
                Visible = false;
            }
            field("Voyage Sea Days"; "Voyage Sea Days")
            {
                Visible = false;
            }
            field("Current Operation"; "Current Operation")
            {
            }
            field("Current Voyage"; "Current Voyage")
            {
                Visible = false;
            }
            field(VSDVal; VSDVal)
            {
            }
            field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
            {
                Visible = false;
            }
            field(Values; Values)
            {
            }
            field("date filter"; "date filter")
            {
            }
            field("Location Filter"; "Location Filter")
            {
            }
            field("Lost Day Cause Filter"; "Lost Day Cause Filter")
            {
            }
            field("Global Dimension 1 Filter"; "Global Dimension 1 Filter")
            {
            }
            field("Global Dimension 2 Filter"; "Global Dimension 2 Filter")
            {
            }
            field("FA Code"; "FA Code")
            {
            }
            field("Voyage Filter"; "Voyage Filter")
            {
            }
            field("Lst Ovh"; "Lst Ovh")
            {
            }
            field("Lst Ddk"; "Lst Ddk")
            {
            }
            field(xx1; xx1)
            {
            }
            field(Deratg; Deratg)
            {
            }
            field("Rad Tel"; "Rad Tel")
            {
            }
            field("Str Lic"; "Str Lic")
            {
            }
            field("Life Rf"; "Life Rf")
            {
            }
            field("Fom Ext"; "Fom Ext")
            {
            }
            field("Pow Ext"; "Pow Ext")
            {
            }
            field("CO2 Ext"; "CO2 Ext")
            {
            }
            field(ETD; ETD)
            {
            }
            field(ETA; ETA)
            {
            }
            field("Nxt Ovh"; "Nxt Ovh")
            {
            }
            field("Nxt Ddk"; "Nxt Ddk")
            {
            }
            field(xx2; xx2)
            {
            }
            field("Life Jacket"; "Life Jacket")
            {
            }
            field("Life Buoy"; "Life Buoy")
            {
            }
            field(Parchut; Parchut)
            {
            }
            field("R Flare"; "R Flare")
            {
            }
            field("Store Taking"; "Store Taking")
            {
            }
            field("Crew Briefing"; "Crew Briefing")
            {
            }
            field("Location Group"; rec."Location Group")
            {
            }
            field(Captain; rec.ASLCaptain)
            {
                Visible = false;
            }
            field("Brnd Pk"; "Brnd Pk")
            {
            }
            field("Inner P"; "Inner P")
            {
            }
            field(Grades; Grades)
            {
            }
            field("Crab CW"; "Crab CW")
            {
            }
            field("WT GL/W"; "WT GL/W")
            {
            }
            field(Batch; Batch)
            {
            }
            field("E.U. No"; "E.U. No")
            {
            }
            field("Ves Age"; "Ves Age")
            {
                Visible = false;
            }
            field("Fsh Ins"; "Fsh Ins")
            {
            }
            field("Fsh Dst"; "Fsh Dst")
            {
            }
            field("Ins Sur"; "Ins Sur")
            {
            }
            field("Dst Sur"; "Dst Sur")
            {
            }
            field("Last Rep Operation No."; "Last Rep Operation No.")
            {
            }
            field("Voyage Sea Days2"; "Voyage Sea Days2")
            {
            }
            field("Voyage Sea Any Time"; "Voyage Sea Any Time")
            {
            }
            field("Last Rep Operation No. Val"; "Last Rep Operation No. Val")
            {
            }
            field("Last Reportd Vessel Pts"; "Last Reportd Vessel Pts")
            {
            }
            field("Last Reportd Shrimps Pts"; "Last Reportd Shrimps Pts")
            {
            }
            field(Inventory; Inventory)
            {
            }
            field("Source Code Filter"; "Source Code Filter")
            {
            }
            field(ExpCode; ExpCode)
            {
            }
            field("Insurance Rate"; "Insurance Rate")
            {
            }
            field("Depreciation Rate"; "Depreciation Rate")
            {
            }
            field("Interest Rate"; "Interest Rate")
            {
            }
            field("Begining ETA"; "Begining ETA")
            {
            }
            field("Fishing Area"; "Fishing Area")
            {
            }
            field("Vessel Endurance"; "Vessel Endurance")
            {
            }
            field("Qty to Cold Room"; "Qty to Cold Room")
            {
            }
            field("Qty Budgeted"; "Qty Budgeted")
            {
            }
            field("Port Captain"; "Port Captain")
            {
            }
            field("Budgeted Voyages"; "Budgeted Voyages")
            {
            }
        }
    }

    var
        JOB: Record Job;


    //Unsupported feature: Code Insertion on "OnAfterGetRecord".

    trigger OnAfterGetRecord()
    begin

        if JOB.Get(ASLCaptain) then
            Captain := JOB."Person Responsible";

    end;


    //Unsupported feature: Code Insertion on "OnOpenPage".

    //trigger OnOpenPage()
    //begin
    /*
    SetCurrentKey(ETA);
    */
    //end;
}

