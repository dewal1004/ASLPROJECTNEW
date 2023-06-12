page 50125 "DPS Waiting For Approval"
{
    CardPageID = "Dynamics Procurement System";
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    UsageCategory = Administration;
    ApplicationArea = all;
    PageType = List;
    SourceTable = "Dynamics Procurement Header";
    SourceTableView = SORTING("DPS No.")
                      WHERE(Processed = CONST(false),
                            "Send For Approval" = CONST(true),
                            Approved = CONST(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("DPS No."; Rec."DPS No.")
                {
                    ApplicationArea = All;
                }
                field("Base Date"; Rec."Base Date")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("Item Filter"; Rec."Item Filter")
                {
                    ApplicationArea = All;
                }
                field("Inventory Group Filter"; Rec."Inventory Group Filter")
                {
                    ApplicationArea = All;
                }
                field("Gen. Product Posting Group"; Rec."Gen. Product Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Maxmum Order Period"; Rec."Maxmum Order Period")
                {
                    ApplicationArea = All;
                }
                field("Surggest Items"; Rec."Surggest Items")
                {
                    ApplicationArea = All;
                }
                field(Processed; Rec.Processed)
                {
                    ApplicationArea = All;
                }
                field("Process Date"; Rec."Process Date")
                {
                    ApplicationArea = All;
                }
                field("Process By"; Rec."Process By")
                {
                    ApplicationArea = All;
                }
                field("Process By Name"; Rec."Process By Name")
                {
                    ApplicationArea = All;
                }
                field("Update Record"; Rec."Update Record")
                {
                    ApplicationArea = All;
                }
                field("Location Filter"; Rec."Location Filter")
                {
                    ApplicationArea = All;
                }
                field("Send For Approval"; Rec."Send For Approval")
                {
                    ApplicationArea = All;
                }
                field("Send For Approval By"; Rec."Send For Approval By")
                {
                    ApplicationArea = All;
                }
                field(Approved; Rec.Approved)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        Rec.SetFilter("Sent To For Approval", UserId);
        Rec.FilterGroup(2);
    end;
}

