page 50121 "Dynamic Procurement Register"
{
    CardPageID = "Dynamics Procurement System";
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = "Dynamics Procurement Header";
    UsageCategory = Lists;
    ApplicationArea = All, Basic;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("DPS No."; "DPS No.")
                {
                    ApplicationArea = All;
                }
                field("Base Date"; "Base Date")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; "Location Code")
                {
                    ApplicationArea = All;
                }
                field("Item Filter"; "Item Filter")
                {
                    ApplicationArea = All;
                }
                field("Inventory Group Filter"; "Inventory Group Filter")
                {
                    ApplicationArea = All;
                }
                field("Gen. Product Posting Group"; "Gen. Product Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Maxmum Order Period"; "Maxmum Order Period")
                {
                    ApplicationArea = All;
                }
                field("Surggest Items"; "Surggest Items")
                {
                    ApplicationArea = All;
                }
                field(Processed; Processed)
                {
                    ApplicationArea = All;
                }
                field("Process Date"; "Process Date")
                {
                    ApplicationArea = All;
                }
                field("Process By"; "Process By")
                {
                    ApplicationArea = All;
                }
                field("Process By Name"; "Process By Name")
                {
                    ApplicationArea = All;
                }
                field("Update Record"; "Update Record")
                {
                    ApplicationArea = All;
                }
                field("Location Filter"; "Location Filter")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

