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
                }
                field("MRPending For HOD Approval"; "MRPending For HOD Approval")
                {
                }
                field("MR Pending For Store Process"; "MR Pending For Store Process")
                {
                }
                field("MR Pending for Process"; "MR Pending for Process")
                {
                }
            }
        }
    }
}

