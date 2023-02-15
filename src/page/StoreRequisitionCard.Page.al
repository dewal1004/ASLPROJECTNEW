page 50059 "Store Requisition Card"
{
    PageType = Card;
    SourceTable = "Store Requisition Header New";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Req. No"; "Req. No")
                {
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field("Req. Type"; "Req. Type")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Req Date"; "Req Date")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Processed Date"; "Processed Date")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Fish Store Requisition"; "Fish Store Requisition")
                {
                    ApplicationArea = All;
                }
                field("To Be Collected By"; "To Be Collected By")
                {
                    ApplicationArea = All;
                }
                field("Transfer From"; "Transfer From")
                {
                    ApplicationArea = All;
                }
                field("Transfer To."; "Transfer To.")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Voyage No."; "Voyage No.")
                {
                    ApplicationArea = All;
                }
                field("Requisition Template"; "Requisition Template")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Customer No."; "Customer No.")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Customer Name"; "Customer Name")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Vendor No."; "Vendor No.")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Vendor Name"; "Vendor Name")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Claim by Employee"; "Claim by Employee")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Claim by Resources"; "Claim by Resources")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
            }
            group(Account)
            {
                field("Job Related"; "Job Related")
                {
                    ApplicationArea = All;
                }
                field("Journal Batch"; "Journal Batch")
                {
                    ApplicationArea = All;
                }
                field("Reason Code"; "Reason Code")
                {
                    ApplicationArea = All;
                }
                field(DryDock; DryDock)
                {
                    ApplicationArea = All;
                }
                field("Job No."; "Job No.")
                {
                    DrillDownPageID = "Dry Docking/Job  list";
                    LookupPageID = "Dry Docking/Job  list";
                    ApplicationArea = All;

                }
                field("External Document No"; "External Document No")
                {
                    ApplicationArea = All;
                }
                field("Gen Bus. posting Grp."; "Gen Bus. posting Grp.")
                {
                    ApplicationArea = All;
                }
                field(Processed; Processed)
                {
                    ApplicationArea = All;
                }
            }
            part(Control25; "Store Requisition Subform")
            {
                SubPageLink = "Req. No." = FIELD("Req. No");
                ApplicationArea = All;
            }
            group("Approval Section")
            {
                field("1st Approval to"; "1st Approval to")
                {
                    ApplicationArea = All;
                }
                field("1st Approval Name"; "1st Approval Name")
                {
                    ApplicationArea = All;
                }
                field("Mail Body"; "Mail Body")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Send for Approval"; "Send for Approval")
                {
                    ApplicationArea = All;
                }
                field(Sender; Sender)
                {
                    ApplicationArea = All;
                }
                field("Sent Time"; "Sent Time")
                {
                    ApplicationArea = All;
                }
                field("Final Approval to"; "Final Approval to")
                {
                    ApplicationArea = All;
                }
                field("Final Approval Name"; "Final Approval Name")
                {
                    ApplicationArea = All;
                }
                field("1st Approved"; "1st Approved")
                {
                    ApplicationArea = All;
                }
                field("1st Approved Time"; "1st Approved Time")
                {
                    ApplicationArea = All;
                }
                field("Final Approved"; "Final Approved")
                {
                    ApplicationArea = All;
                }
                field("Final Approved Time"; "Final Approved Time")
                {
                    ApplicationArea = All;
                }
                field("Issued Captured"; "Issued Captured")
                {
                    ApplicationArea = All;
                }
                field("Issued By"; "Issued By")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            part(Control36; "Item Invoicing FactBox")
            {
                Provider = Control25;
                SubPageLink = "No." = FIELD("Item No."),
                              "Location Filter" = FIELD("Store Location");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Create Transfer Order")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    TransferOrder
                end;
            }
            action("Create Adjustments")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    CreateAdjSmt
                end;
            }
            action("Create Sales Invoice")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    CreatesalesInv;
                end;
            }
            action("Create Purchase Invoice")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    CreatePurchInv;
                end;
            }
            action("Print Material Requisition")
            {
                Image = Approve;
                Promoted = true;
                RunPageOnRec = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Userrec.Get(UserId);
                    if not Userrec."Print MR" then Error('Sorry you are not allowed to Print Store Material Requisition.');
                    REQREC.SetRange(REQREC."Req. No", "Req. No");
                    if REQREC.FindFirst then
                        REPORT.RunModal(50094, true, false, REQREC);
                end;
            }
            action("Copy TransferTemplate")
            {
                Image = Template;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    LoadTemplate;
                end;
            }
            action("Check Staff Replacement")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    CheckReplacement;
                end;
            }
            action("Revalidate Approved Quantity")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if "Final Approved" <> "Final Approved"::Approved then
                        Recline.SetRange(Recline."Req. No.", "Req. No");
                    if Recline.FindFirst then
                        repeat
                        begin
                            ItemRec.Get(Recline."Item No.");
                            ItemRec.SetFilter(ItemRec."Location Filter", '%1', Recline."Store Location");
                            ItemRec.CalcFields(ItemRec.Inventory);
                            Recline.CalcFields(Recline."Pending Approved Qty");
                            Recline."Available Quantity" := (ItemRec.Inventory - Recline."Pending Approved Qty");
                            if Recline."Available Quantity" < 0 then Recline."Available Quantity" := 0;
                        end;

                        if Recline."Requested Quantity" > Recline."Available Quantity" then
                            Recline."Approved Quantity" := Recline."Available Quantity"
                        else
                            Recline."Approved Quantity" := Recline."Requested Quantity";
                        Recline."Issued Quantity" := Recline."Approved Quantity";
                        Recline.Modify;
                        until Recline.Next = 0;
                end;
            }
            action("Materia Reconciliation ")
            {
                Image = Recalculate;
                RunObject = Report "Material Req Reconciliation";
                ApplicationArea = All;
            }
        }
    }

    var
        REQREC: Record "Store Requisition Header New";
        Userrec: Record "User Setup";
        Recline: Record "Store Requisition Line New";
        ItemRec: Record Item;
}

