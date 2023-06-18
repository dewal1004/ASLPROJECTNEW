report 50080 "Voyage Consumption"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VoyageConsumption.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Voyage Consumption';
    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(USERID; UserId)
            {
            }
            column(No; "Job Ledger Entry"."No.")
            {
            }
            column(JobNo_JobLedgerEntry; "Job Ledger Entry"."Job No.")
            {
            }
            column(PostingDate_JobLedgerEntry; "Job Ledger Entry"."Posting Date")
            {
            }
            column(Description_JobLedgerEntry; "Job Ledger Entry".Description)
            {
            }
            column(Quantity_JobLedgerEntry; "Job Ledger Entry".Quantity)
            {
            }
            column(UnitCost_JobLedgerEntry; "Job Ledger Entry"."Unit Cost")
            {
            }
            column(TotalCost_JobLedgerEntry; "Job Ledger Entry"."Total Cost")
            {
            }
            column(Desc; Desc)
            {
            }
            column(Locationname; Locatn.Name)
            {
            }
            column(EndingDate; Operatn."Ending Date")
            {
            }
            column(Resource_Name; Resour.Name)
            {
            }
            column(Voyage_No; Operatn."Voyage No.")
            {
            }
            column(Starting_Date; Operatn."Starting Date")
            {
            }
            column(EntryType_JobLedgerEntry; "Job Ledger Entry"."Entry Type")
            {
            }

            trigger OnAfterGetRecord()
            begin

                Operatn.Get("Job No.");
                CurrReport.ShowOutput(CurrReport.TotalsCausedBy() = "Job Ledger Entry".FieldNo("Job No."));
                if Locatn.Get(Operatn.Vessel) then;
                if Resour.Get(Operatn."Person Responsible") then;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("No.");
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
        Operatn: Record Job;
        Locatn: Record Location;
        Resour: Record Resource;
        LastFieldNo: Integer;
        Desc: Text[30];
}
