report 50107 "SSNL Vessel Report"
{
    DefaultLayout = Word;
    ExcelLayout = 
    ApplicationArea = All;
    Caption = 'SSNL Vessel Report';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(JobLedgerEntry; "Job Ledger Entry")
        {
            column(LocationCode; "Location Code")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(Type; "Type")
            {
            }
            column(WorkTypeCode; "Work Type Code")
            {
            }
            column(GroupSort; GroupSort)
            {
            }
            column(InventoryPostingGroup; "Inventory Posting Group")
            {
            }
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(CatchSeaDays; "Catch Sea Days")
            {
            }
            column(EndedVoyage; "Ended Voyage")
            {
            }
            column(EndingDate; "Ending Date")
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
