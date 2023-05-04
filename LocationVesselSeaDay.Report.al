report 50508 "Location Vessel Sea Day"
{
    ApplicationArea = All;
    Caption = 'Location Vessel Sea Day';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = '.\LocationVesselSeaDay.rdlc';
    dataset
    {
        dataitem(Location; Location)
        {
            DataItemTableView = sorting(VSDVal) where("location type" = const(1));  //"location type" ::Vessel
            RequestFilterFields = "date filter";

            column(Code; "Code")
            {
            }
            column(Name; Name)
            {
            }
            column(VSDVal; VSDVal)
            {
            }
            column(LastRepOperationNoVal; "Last Rep Operation No. Val")
            {
            }
            column(Values; Values)
            {
            }
            column(Inventory; Inventory)
            {
            }
            column(VoyageSeaDays; "Voyage Sea Days")
            {
            }
        }

    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
