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
            }
        }
    }

    actions
    {
    }
}

