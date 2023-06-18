page 51115 "Approvals List"
{
    PageType = List;
    SourceTable = "User Setup";
    UsageCategory = Lists;
    ApplicationArea = All, Basic, Suites;
    Caption = 'Approvals List';
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                }
                field("Approver ID"; Rec."Approver ID")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(SendApprovalRequest1)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    /*
                    SETRANGE("User ID","User ID");
                    IF FINDFIRST THEN
                      CodeForApprovalsetup.SendApprovaltoUser(PurchaseHeader,"User ID");
                      //CodeForApprovalsetup.SendApprovaltoUser(PurchaseHeader,"User ID");
                    MESSAGE('DONE')
                    */
                end;
            }
            action(SendApprovalRequest)
            {
                Caption = 'Send A&pproval Request';
                Image = SendApprovalRequest;
                Promoted = true;
                PromotedCategory = Category9;
                ApplicationArea = All;

                trigger OnAction()
                begin

                    //IF ApprovalsMgmt.CheckPurchaseApprovalsWorkflowEnabled(PurchaseHeader) THEN
                    //ApprovalsMgmt.OnSendPurchaseDocForApproval(PurchaseHeader);
                    //ApprovalsMgmt.OnSendPurchaseDocForApprovalforspuser(PurchaseHeader,"User ID");
                end;
            }
        }
    }
}
