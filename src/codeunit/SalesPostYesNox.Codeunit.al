codeunit 90081 "Sales-Post (Yes/No)x"
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
                if (SalesHeader."Appraisal Selection" = 0) then //Univision Insert 30/10/01
                  begin
                    Selection := StrMenu(Text000, 3);
                    if Selection = 0 then
                        exit;
                end
                else begin
                    Selection := 3;    //Univision insert 30/10/01
                    SalesHeader.Ship := Selection in [1, 3];
                    SalesHeader.Invoice := Selection in [2, 3];
                end;

            //AAA-2002-Start
            SalesHeader."Document Type"::"Return Order":
                if (SalesHeader."Appraisal Selection" = 0) then //Univision Insert 30/10/01
                  begin
                    Selection := StrMenu(Text000, 3);
                    if Selection = 0 then
                        exit;
                end
                else begin
                    Selection := 3;    //Univision insert 30/10/01
                    SalesHeader.Ship := Selection in [1, 3];
                    SalesHeader.Invoice := Selection in [2, 3];
                end;
            //AAA-2002-Stop

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
