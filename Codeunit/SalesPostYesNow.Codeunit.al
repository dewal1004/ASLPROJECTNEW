codeunit 60081 "Sales-Post (Yes/No)w"
{
    TableNo = "Sales Header";

    trigger OnRun()
    begin
        SalesHeader.Copy(Rec);
        Code;
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
        with SalesHeader do begin
            case "Document Type" of
                "Document Type"::Order:
                    if ("Appraisal Selection" = 0) then //Univision Insert 30/10/01
                      begin
                        Selection := StrMenu(Text000, 3);
                        if Selection = 0 then
                            exit;
                    end
                    else begin
                        Selection := 3;    //Univision insert 30/10/01
                        Ship := Selection in [1, 3];
                        Invoice := Selection in [2, 3];
                    end;

                //AAA-2002-Start
                /*    "Document Type"::Appraisal:
                    IF("Appraisal Selection" <> 0) THEN //Univision Insert 30/10/01
                      {BEGIN
                        Selection := STRMENU(Text000,3);
                        IF Selection = 0 THEN
                          EXIT;
                      END
                      ELSE
                      }
                      BEGIN
                        Selection := 3;    //Univision insert 30/10/01
                        Ship := Selection IN [1,3];
                        Invoice := Selection IN [2,3];
                      END;
                */
                //AAA-2002-Stop

                "Document Type"::"Credit Memo":
                    begin
                        Selection := StrMenu(Text002, 3);
                        if Selection = 0 then
                            exit;
                        Receive := Selection in [1, 3];
                        Invoice := Selection in [2, 3];
                    end else
                            if not
                               Confirm(
                                 Text001, false,
                                 "Document Type")
                            then
                                exit;
            end;
            SalesPost.Run(SalesHeader);
        end;

    end;
}

