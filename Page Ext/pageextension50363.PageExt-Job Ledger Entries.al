pageextension 50363 pageextension50363 extends "Job Ledger Entries"
{
    layout
    {
        addafter("Location Code")
        {
            field("Vessel Type"; "Vessel Type")
            {
            }
        }
        addafter(Quantity)
        {
            field("Journal Batch Name"; "Journal Batch Name")
            {
            }
        }
        addafter("DateTime Adjusted")
        {
            field(ROB; ROB)
            {
            }
            field("ROB By"; "ROB By")
            {
            }
            field("Catch Sea Days"; "Catch Sea Days")
            {
            }
            field("Marked Rec"; "Marked Rec")
            {
                Visible = false;
            }
            field("Phase Code"; "Phase Code")
            {
            }
            field("Task Code"; "Task Code")
            {
            }
        }
    }
}

