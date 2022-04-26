page 50126 "Approved DPS For Processing"
{
    CardPageID = "Dynamics Procurement System";
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = "Dynamics Procurement Header";
    SourceTableView = SORTING ("DPS No.")
                      WHERE (Processed = CONST (false),
                            "Send For Approval" = CONST (true),
                            Approved = CONST (true));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("DPS No."; "DPS No.")
                {
                }
                field("Base Date"; "Base Date")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Item Filter"; "Item Filter")
                {
                }
                field("Inventory Group Filter"; "Inventory Group Filter")
                {
                }
                field("Gen. Product Posting Group"; "Gen. Product Posting Group")
                {
                }
                field("Maxmum Order Period"; "Maxmum Order Period")
                {
                }
                field("Surggest Items"; "Surggest Items")
                {
                }
                field(Processed; Processed)
                {
                }
                field("Process Date"; "Process Date")
                {
                }
                field("Process By"; "Process By")
                {
                }
                field("Process By Name"; "Process By Name")
                {
                }
                field("Update Record"; "Update Record")
                {
                }
                field("Location Filter"; "Location Filter")
                {
                }
                field("Send For Approval"; "Send For Approval")
                {
                }
                field("Send For Approval By"; "Send For Approval By")
                {
                }
                field(Approved; Approved)
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        SetFilter("Return To For Process", UserId);
        FilterGroup(2);
    end;
}

