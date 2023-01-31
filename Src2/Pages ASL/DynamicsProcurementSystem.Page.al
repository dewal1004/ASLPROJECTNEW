page 50120 "Dynamics Procurement System"
{
    PageType = Card;
    SourceTable = "Dynamics Procurement Header";
    UsageCategory = Administration;
    ApplicationArea = All, Basic;
    layout
    {
        area(content)
        {
            group(General)
            {
                field("DPS No."; "DPS No.")
                {
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
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
                    Importance = Additional;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Maxmum Order Period"; "Maxmum Order Period")
                {
                    ApplicationArea = All;
                }
                field("Inventory Group Filter"; "Inventory Group Filter")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Surggest Items"; "Surggest Items")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Update Record"; "Update Record")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Location Filter"; "Location Filter")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Gen. Product Posting Group"; "Gen. Product Posting Group")
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
                field("Send For Approval"; "Send For Approval")
                {
                    ApplicationArea = All;
                }
                field("Sent To For Approval"; "Sent To For Approval")
                {
                    ApplicationArea = All;
                }
                field("Send For Approval By"; "Send For Approval By")
                {
                    ApplicationArea = All;
                }
                field("Send for Approval Time"; "Send for Approval Time")
                {
                    ApplicationArea = All;
                }
            }
            group(Control33)
            {
                ShowCaption = false;
                field("Return To For Process"; "Return To For Process")
                {
                    ApplicationArea = All;
                }
                field("Return To Name"; "Return To Name")
                {
                    ApplicationArea = All;
                }
                field("Return Time"; "Return Time")
                {
                    ApplicationArea = All;
                }
                field("Total Line Items"; "Total Line Items")
                {
                    ApplicationArea = All;
                }
                field("Approved Line items"; "Approved Line items")
                {
                    ApplicationArea = All;
                }
                field("Unapproved Line Items"; "Unapproved Line Items")
                {
                    ApplicationArea = All;
                }
                field(Approved; Approved)
                {
                    ApplicationArea = All;
                }
                field("Approved By"; "Approved By")
                {
                    ApplicationArea = All;
                }
                field("Approved Time"; "Approved Time")
                {
                    ApplicationArea = All;
                }
                group("Generate Order")
                {
                    field(Supplier; Supplier)
                    {
                        ApplicationArea = All;
                    }
                    field("Supplier Name"; "Supplier Name")
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
                    CreatePurchInv;
                end;
            }
        }
    }
}

