pageextension 50359 pageextension50359 extends "SO Processor Activities"
{
    layout
    {
        addafter("Document Exchange Service")
        {
            cuegroup("Material Requisition")
            {
                Caption = 'Material Requisition';
                field("New MR"; "New MR")
                {
                    ApplicationArea = All;
                }
                field("MRPending For HOD Approval"; "MRPending For HOD Approval")
                {
                    ApplicationArea = All;
                }
                field("MR Pending For Store Process"; "MR Pending For Store Process")
                {
                    ApplicationArea = All;
                }
                field("MR Pending for Process"; "MR Pending for Process")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

