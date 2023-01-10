codeunit 50095 "Code For Approval setup"
{

    trigger OnRun()
    begin
    end;

    var
        Text000: Label '&MPI\SANDHYA,&MPI\MADHURI,&MPI\PAVAN';
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
        Selection: Integer;
        PurchaseHeader: Record "Purchase Header";
        UserSetup: Record "User Setup";
        ApprovalUserSetup: Page "Approval User Setup";

    //[Scope('OnPrem')]
    procedure SendApprovaltoUser(var PurchaseHeader: Record "Purchase Header"; var UserName: Code[20])
    begin
        /*
        UserSetup.SETRANGE("User ID",UserName);
        IF UserSetup.FINDFIRST THEN BEGIN
          IF ApprovalsMgmt.CheckPurchaseApprovalsWorkflowEnabled(PurchaseHeader) THEN
            ApprovalsMgmt.OnSendPurchaseDocForApproval(PurchaseHeader);
        END;
        */ //A

    end;

    //[Scope('OnPrem')]
    procedure Approval()
    begin
        Selection := StrMenu(Text000, 3);
        case Selection of
            0:
                exit;
            1:
                begin
                    //IF ApprovalsMgmt.CheckPurchaseApprovalsWorkflowEnabled(PurchaseHeader) THEN
                    ApprovalsMgmt.OnSendPurchaseDocForApproval(PurchaseHeader);
                end
        end


    end;


}

