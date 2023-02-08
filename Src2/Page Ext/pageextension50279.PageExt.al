pageextension 50279 "pageextension50279" extends "Inventory Setup"
{
    layout
    {
        addafter(Numbering)
        {
            group("Materia Requisition")
            {
                field("Store Requisition No."; "Store Requisition No.")
                {
                    ApplicationArea = All;
                }
                field("Auto Post Issue Req"; "Auto Post Issue Req")
                {
                    ApplicationArea = All;
                }
                field("Auto Post Transfer Req"; "Auto Post Transfer Req")
                {
                    ApplicationArea = All;
                }
            }
            group(Other)
            {
                Caption = 'Other';
                field("FA Acquisition"; "FA Acquisition")
                {
                    ApplicationArea = All;
                }
                field("FA Acquisition Template"; "FA Acquisition Template")
                {
                    ApplicationArea = All;
                }
                field("FA Maintenance"; "FA Maintenance")
                {
                    ApplicationArea = All;
                }
                field("FA Maintenance Template"; "FA Maintenance Template")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

