codeunit 80081 "Sales-Post (Yes/No)Z"
{
    TableNo = "Sales Header";

    trigger OnRun()
    begin
        SalesHeader.Copy(Rec);
        Code();
        Rec := SalesHeader;
    end;

    var
        Text000: Label '&Ship,&Invoice,Ship &and Invoice';
        Text001: Label 'Do you want to post the %1?';
        Text002: Label '&Receive,&Invoice,Receive &and Invoice';
        SalesHeader: Record "Sales Header";
        SalesPost: Codeunit "Sales-Post";
        Selection: Integer;

    local procedure "Code"()
    begin
        case SalesHeader."Document Type" of
            SalesHeader."Document Type"::Order:
                begin
                    Selection := StrMenu(Text000, 3);
                    if Selection = 0 then
                        exit;
                    SalesHeader.Ship := Selection in [1, 3];
                    SalesHeader.Invoice := Selection in [2, 3];
                end;
            SalesHeader."Document Type"::"Credit Memo":
                begin
                    Selection := StrMenu(Text002, 3);
                    if Selection = 0 then
                        exit;
                    SalesHeader.Receive := Selection in [1, 3];
                    SalesHeader.Invoice := Selection in [2, 3];
                end else
                        if not
                           Confirm(
                             Text001, false,
                             SalesHeader."Document Type")
                        then
                            exit;
        end;
        SalesPost.Run(SalesHeader);
    end;
}
