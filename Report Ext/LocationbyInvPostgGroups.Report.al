report 50246 "Location by Inv. Postg Groups"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/LocationbyInvPostgGroups.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem(Location; Location)
        {
            RequestFilterFields = "Code", "Location Type";
            column("Code"; Location.Code)
            {
            }
            column(Name; Location.Name)
            {
            }
            column(CompanyName_Text; CompanyName)
            {
            }
            dataitem("Inventory Posting Group"; "Inventory Posting Group")
            {
                DataItemTableView = SORTING("S/No.") ORDER(Ascending) WHERE("S/No." = FILTER(0 .. 180));
                column(TodayFormatted; Format(Today, 0, 4))
                {
                }
                column(CompanyName; CompanyName)
                {
                }
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        InvSetUp: Record "Inventory Posting Setup";
        val: Code[10];
        CompanyInformation: Record "Company Information";
}

