pageextension 50279 pageextension50279 extends "Inventory Setup"
{
    layout
    {
        addafter(Numbering)
        {
            group("Materia Requisition")
            {
                field("Store Requisition No."; "Store Requisition No.")
                {
                }
                field("Auto Post Issue Req"; "Auto Post Issue Req")
                {
                }
                field("Auto Post Transfer Req"; "Auto Post Transfer Req")
                {
                }
            }
            group(Other)
            {
                Caption = 'Other';
                field("FA Acquisition"; "FA Acquisition")
                {
                }
                field("FA Acquisition Template"; "FA Acquisition Template")
                {
                }
                field("FA Maintenance"; "FA Maintenance")
                {
                }
                field("FA Maintenance Template"; "FA Maintenance Template")
                {
                }
            }
        }
    }
}

