page 50120 "Dynamics Procurement System"
{
    PageType = Card;
    SourceTable = "Dynamics Procurement Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("DPS No."; "DPS No.")
                {

                    trigger OnAssistEdit()
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field("Base Date"; "Base Date")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Item Filter"; "Item Filter")
                {
                    Importance = Additional;
                    Visible = false;
                }
                field("Maxmum Order Period"; "Maxmum Order Period")
                {
                }
                field("Inventory Group Filter"; "Inventory Group Filter")
                {
                    Importance = Additional;
                }
                field("Surggest Items"; "Surggest Items")
                {
                    Importance = Additional;
                }
                field("Update Record"; "Update Record")
                {
                    Importance = Additional;
                }
                field("Location Filter"; "Location Filter")
                {
                    Importance = Additional;
                }
                field("Gen. Product Posting Group"; "Gen. Product Posting Group")
                {
                    Importance = Additional;
                }
            }
            part("Requested Items"; "Dynamics Procurement Subpage")
            {
                Caption = 'Requested Items';
                SubPageLink = "DPS Code" = FIELD ("DPS No."),
                              "Base Date" = FIELD ("Base Date");
            }
            group(Approval)
            {
                field("Send For Approval"; "Send For Approval")
                {
                }
                field("Sent To For Approval"; "Sent To For Approval")
                {
                }
                field("Send For Approval By"; "Send For Approval By")
                {
                }
                field("Send for Approval Time"; "Send for Approval Time")
                {
                }
            }
            group(Control33)
            {
                ShowCaption = false;
                field("Return To For Process"; "Return To For Process")
                {
                }
                field("Return To Name"; "Return To Name")
                {
                }
                field("Return Time"; "Return Time")
                {
                }
                field("Total Line Items"; "Total Line Items")
                {
                }
                field("Approved Line items"; "Approved Line items")
                {
                }
                field("Unapproved Line Items"; "Unapproved Line Items")
                {
                }
                field(Approved; Approved)
                {
                }
                field("Approved By"; "Approved By")
                {
                }
                field("Approved Time"; "Approved Time")
                {
                }
                group("Generate Order")
                {
                    field(Supplier; Supplier)
                    {
                    }
                    field("Supplier Name"; "Supplier Name")
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
                }
            }
        }
        area(factboxes)
        {
            part(Control18; "DPS SubPage Part")
            {
                Provider = "Requested Items";
                SubPageLink = "Line No." = FIELD ("Line No."),
                              "DPS Code" = FIELD ("DPS Code");
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

                trigger OnAction()
                begin
                    CreatePurchInv;
                end;
            }
        }
    }
}

