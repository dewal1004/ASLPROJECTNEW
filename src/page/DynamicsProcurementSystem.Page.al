page 50120 "Dynamics Procurement System"
{
    PageType = Card;
    SourceTable = "Dynamics Procurement Header";
    UsageCategory = Administration;
    ApplicationArea = All, Basic;
    Caption = 'Dynamics Procurement System';
    layout
    {
        area(content)
        {
            group(General)
            {
                field("DPS No."; Rec."DPS No.")
                {
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
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
                    Importance = Additional;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Maxmum Order Period"; Rec."Maxmum Order Period")
                {
                    ApplicationArea = All;
                }
                field("Inventory Group Filter"; Rec."Inventory Group Filter")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Surggest Items"; Rec."Surggest Items")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Update Record"; Rec."Update Record")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Location Filter"; Rec."Location Filter")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Gen. Product Posting Group"; Rec."Gen. Product Posting Group")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
            }
            part("Requested Items"; "Dynamics Procurement Subpage")
            {
                Caption = 'Requested Items';
                SubPageLink = "DPS Code" = FIELD("DPS No."),
                              "Base Date" = FIELD("Base Date");
                ApplicationArea = All;
            }
            group(Approval)
            {
                field("Send For Approval"; Rec."Send For Approval")
                {
                    ApplicationArea = All;
                }
                field("Sent To For Approval"; Rec."Sent To For Approval")
                {
                    ApplicationArea = All;
                }
                field("Send For Approval By"; Rec."Send For Approval By")
                {
                    ApplicationArea = All;
                }
                field("Send for Approval Time"; Rec."Send for Approval Time")
                {
                    ApplicationArea = All;
                }
            }
            group(Control33)
            {
                ShowCaption = false;
                field("Return To For Process"; Rec."Return To For Process")
                {
                    ApplicationArea = All;
                }
                field("Return To Name"; Rec."Return To Name")
                {
                    ApplicationArea = All;
                }
                field("Return Time"; Rec."Return Time")
                {
                    ApplicationArea = All;
                }
                field("Total Line Items"; Rec."Total Line Items")
                {
                    ApplicationArea = All;
                }
                field("Approved Line items"; Rec."Approved Line items")
                {
                    ApplicationArea = All;
                }
                field("Unapproved Line Items"; Rec."Unapproved Line Items")
                {
                    ApplicationArea = All;
                }
                field(Approved; Rec.Approved)
                {
                    ApplicationArea = All;
                }
                field("Approved By"; Rec."Approved By")
                {
                    ApplicationArea = All;
                }
                field("Approved Time"; Rec."Approved Time")
                {
                    ApplicationArea = All;
                }
                group("Generate Order")
                {
                    field(Supplier; Rec.Supplier)
                    {
                        ApplicationArea = All;
                    }
                    field("Supplier Name"; Rec."Supplier Name")
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
                }
            }
        }
        area(factboxes)
        {
            part(Control18; "DPS SubPage Part")
            {
                Provider = "Requested Items";
                SubPageLink = "Line No." = FIELD("Line No."),
                              "DPS Code" = FIELD("DPS Code");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Create Purchase Order")
            {
                Image = Invoice;
                Promoted = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.CreatePurchInv();
                end;
            }
        }
    }
}
