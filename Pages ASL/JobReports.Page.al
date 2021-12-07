page 50165 "Job-Reports"
{
    PageType = List;

    layout
    {
        area(content)
        {
        }
    }

    actions
    {
        area(processing)
        {
        }
        area(reporting)
        {
            group(Jobs)
            {
                Image = "report";
                action("Points Summary")
                {
                    Image = "Report";
                    //***R RunObject = Report "Points Summary VJ";
                }
                action("New Daily Points Report Fast")
                {
                    Image = "Report";
                    RunObject = Report "New Daily Points Report Fast";
                }
                action("Consolidated Narration")
                {
                    Image = "Report";
                    RunObject = Report "Consolidated Narration";
                }
                action("Daily BreakUp by Vess Summary")
                {
                    Image = "Report";
                    RunObject = Report "Daily BreakUp by Vess Summary";
                }
                action("Daily BreakUp by Vessel Rep 1")
                {
                    Image = "Report";
             ///       RunObject = Report "Daily BreakUp by Vessel Rep 1";
                }
                action("Daily BreakUp by Vessel Rep 2")
                {
                    Image = "Report";
                    RunObject = Report "Daily BreakUp by Vessel Rep 2";
                }
                action("Daily BreakUp by Vessel Rep 3")
                {
                    Image = "Report";
                    RunObject = Report "Daily BreakUp by Vessel Rep 3";
                }
                action("Daily BreakUp by Vessel Rep 4")
                {
                    Image = "Report";
                    RunObject = Report "Daily BreakUp by Vessel Rep 4";
                }
                action("Vessel Daily Log")
                {
                    Image = "Report";
                    RunObject = Report "Vessel Daily Log";
                }
                action("Voyage Narration")
                {
                    Image = "report";
                    RunObject = Report "Voyage Narration";
                }
                action("Transfer To Vessel")
                {
                    Image = "report";
                    RunObject = Report "Transfer To Vessel";
                }
                action("Report Organoleptic")
                {
                    Caption = 'Report Organoleptic';
                    Image = "Report";
                    RunObject = Report Organoleptic;
                }
                action("Job - Transaction Detail 2")
                {
                    Caption = 'Job - Transaction Detail 2';
                    Image = "report";
                    RunObject = Report "Job - Transaction Detail 2";
                }
            }
        }
    }
}

