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

                    trigger OnAssistEdit()
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field("Req. Type"; "Req. Type")
                {
                }
                field(Description; Description)
                {
                }
                field("Req Date"; "Req Date")
                {
                    Importance = Additional;
                }
                field("Processed Date"; "Processed Date")
                {
                    Importance = Additional;
                }
                field("Fish Store Requisition"; "Fish Store Requisition")
                {                    
                }
                field("To Be Collected By"; "To Be Collected By")
                {
                }
                field("Transfer From"; "Transfer From")
                {
                }
                field("Transfer To."; "Transfer To.")
                {
                    Importance = Additional;
                }
                field("Voyage No."; "Voyage No.")
                {
                }
                field("Requisition Template"; "Requisition Template")
                {
                    Importance = Additional;
                }
                field("Customer No."; "Customer No.")
                {
                    Importance = Additional;
                }
                field("Customer Name"; "Customer Name")
                {
                    Importance = Additional;
                }
                field("Vendor No."; "Vendor No.")
                {
                    Importance = Additional;
                }
                field("Vendor Name"; "Vendor Name")
                {
                    Importance = Additional;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Importance = Additional;
                }
                field("Claim by Employee"; "Claim by Employee")
                {
                    Importance = Additional;
                }
                field("Claim by Resources"; "Claim by Resources")
                {
                    Importance = Additional;
                }
            }
            group(Account)
            {
                field("Job Related"; "Job Related")
                {
                }
                field("Journal Batch"; "Journal Batch")
                {
                }
                field("Reason Code"; "Reason Code")
                {
                }
                field(DryDock; DryDock)
                {
                }
                field("Job No."; "Job No.")
                {
                    DrillDownPageID = "Dry Docking/Job  list";
                    LookupPageID = "Dry Docking/Job  list";
                    
                }
                field("External Document No"; "External Document No")
                {
                }
                field("Gen Bus. posting Grp."; "Gen Bus. posting Grp.")
                {
                }
                field(Processed; Processed)
                {
                }
            }
            part(Control25; "Store Requisition Subform")
            {
                SubPageLink = "Req. No." = FIELD ("Req. No");
            }
            group("Approval Section")
            {
                field("1st Approval to"; "1st Approval to")
                {
                }
                field("1st Approval Name"; "1st Approval Name")
                {
                }
                field("Mail Body"; "Mail Body")
                {
                    Importance = Additional;
                }
                field("Send for Approval"; "Send for Approval")
                {
                }
                field(Sender; Sender)
                {
                }
                field("Sent Time"; "Sent Time")
                {
                }
                field("Final Approval to"; "Final Approval to")
                {
                }
                field("Final Approval Name"; "Final Approval Name")
                {
                }
                field("1st Approved"; "1st Approved")
                {
                }
                field("1st Approved Time"; "1st Approved Time")
                {
                }
                field("Final Approved"; "Final Approved")
                {
                }
                field("Final Approved Time"; "Final Approved Time")
                {
                }
                field("Issued Captured"; "Issued Captured")
                {
                }
                field("Issued By"; "Issued By")
                {
                }
            }
        }
        area(factboxes)
        {
            part(Control36; "Item Invoicing FactBox")
            {
                Provider = Control25;
                SubPageLink = "No." = FIELD ("Item No."),
                              "Location Filter" = FIELD ("Store Location");
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Create Transfer Order")
            {

                trigger OnAction()
                begin
                    TransferOrder
                end;
            }
            action("Create Adjustments")
            {

                trigger OnAction()
                begin
                    CreateAdjSmt
                end;
            }
            action("Create Sales Invoice")
            {

                trigger OnAction()
                begin
                    CreatesalesInv;
                end;
            }
            action("Create Purchase Invoice")
            {

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

                trigger OnAction()
                begin
                    LoadTemplate;
                end;
            }
            action("Check Staff Replacement")
            {

                trigger OnAction()
                begin
                    CheckReplacement;
                end;
            }
            action("Revalidate Approved Quantity")
            {

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
            }
        }
    }

    var
        REQREC: Record "Store Requisition Header New";
        Userrec: Record "User Setup";
        Recline: Record "Store Requisition Line New";
        ItemRec: Record Item;
}

