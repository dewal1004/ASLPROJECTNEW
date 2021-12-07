report 50106 "Daily Break Up By Vessel"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/DailyBreakUpByVessel.50106.rdlc';

    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            column(Report_Generation_Completed__; 'Report Generation Completed!')
            {
            }
            column(Integer_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                Locate.SetFilter(Locate."Date Filter", '%1', dato);
                //REPORT.Run(REPORT::Report50107, false, true, Locate);
                REPORT.Run(REPORT::"IOU Balance", false, true, Locate);
                REPORT.Run(REPORT::"Local Banks Report", false, true, Locate);
                REPORT.Run(REPORT::"Foreign Banks Report", false, true, Locate);
            end;
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
        Locate: Record "Inventory Posting Group";
        dato: Date;
}

