pageextension 50363 pageextension50363 extends "Job Ledger Entries"
{
    layout
    {
        addafter("Location Code")
        {
            field("Vessel Type"; "Vessel Type")
            {
                ApplicationArea = All;
            }
        }
        addafter(Quantity)
        {
            field("Journal Batch Name"; "Journal Batch Name")
            {
                ApplicationArea = All;
            }
        }
        addafter("DateTime Adjusted")
        {
            field(ROB; ROB)
            {
                ApplicationArea = All;
            }
            field("ROB By"; "ROB By")
            {
                ApplicationArea = All;
            }
            field("Catch Sea Days"; "Catch Sea Days")
            {
                ApplicationArea = All;
            }
            field("Marked Rec"; "Marked Rec")
            {
                Visible = false;
                ApplicationArea = All;
            }
            field("Phase Code"; "Phase Code")
            {
                ApplicationArea = All;
            }
            field("Task Code"; "Task Code")
            {
                ApplicationArea = All;
            }
        }
    }
}

