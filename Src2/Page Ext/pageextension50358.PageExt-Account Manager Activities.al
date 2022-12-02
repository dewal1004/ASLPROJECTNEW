pageextension 50358 pageextension50358 extends "Account Manager Activities"
{
    layout
    {
        addafter("OCR Completed")
        {
            field("MRPending For HOD Approval"; "MRPending For HOD Approval")
            {
                ApplicationArea = Basic, Suite;
            }
            field("Completed MR"; "Completed MR")
            {
                ApplicationArea = Basic, Suite;
            }
            field("Rejected MR"; "Rejected MR")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }
}

