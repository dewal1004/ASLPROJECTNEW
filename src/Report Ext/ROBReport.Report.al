report 50226 "ROB Report"
{
    ProcessingOnly = true;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'ROB Report';
    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            begin
                /*
                DateCol[1] := refDate;
                FOR i := 2 TO NoofDays DO
                  DateCol[i] := refDate-(i-1);

                Vessel.SETRANGE(Vessel."Location Type",Vessel."Location Type"::Vessel);
                Vessel.FIND('-');

                Window.OPEN(
                  Text000 +
                  '@1@@@@@@@@@@@@@@@@@@@@@\');
                Window.UPDATE(1,0);
                TotalRecNo := Vessel.COUNTAPPROX;
                RecNo :=0;

                TempExcelBuffer.DELETEALL;
                CLEAR(TempExcelBuffer);

                RowNo := 1;
                EnterCell(RowNo,1,Text001,FALSE,FALSE,TRUE);
                BEGIN
                  RowNo := RowNo + 1;
                  EnterFilterInCell(RowNo,FORMAT(refDate),'Date Filter');

                  RowNo := 4;
                  RowNo := RowNo + 1;
                  ColumnNo := 1;
                  EnterCell(RowNo,ColumnNo,'Vessel',FALSE,FALSE,FALSE);
                  FOR i := 1 TO NoofDays DO BEGIN
                    ColumnNo := ColumnNo + 1;
                    EnterCell(RowNo,ColumnNo,FORMAT(DateCol[i]),FALSE,FALSE,FALSE);
                  END;
                  REPEAT
                    RecNo := RecNo + 1;
                    Window.UPDATE(1,ROUND(RecNo / TotalRecNo * 10000,1));
                    RowNo := RowNo + 1;
                    ColumnNo := 1;
                    EnterCell(RowNo,ColumnNo,Vessel.Code,FALSE,FALSE,FALSE);
                    OpDailyLog.SETCURRENTKEY(Date,Name,"Job No.");
                    OpDailyLog.SETRANGE(OpDailyLog.Date,StartDate,refDate);
                    OpDailyLog.SETRANGE(OpDailyLog.Name,Vessel.Code);
                    IF OpDailyLog.FIND('-') THEN
                      REPEAT
                       CASE DisplayOption OF
                         DisplayOption::Balance : BEGIN
                           FOR i := 1 TO NoofDays DO BEGIN
                             IF DateCol[i] = OpDailyLog.Date THEN BEGIN
                               ColumnNo := i + 1;
                               IF OpDailyLog."Fuel Balance" <> 0 THEN
                                 EnterCell(
                                   RowNo,
                                   ColumnNo,
                                   FORMAT(OpDailyLog."Fuel Balance"),
                                   FALSE,
                                   FALSE,
                                   FALSE);
                             END;
                           END;
                         END;
                         DisplayOption::Consumption : BEGIN
                           OpDailyLog2.SETCURRENTKEY(Date,Name,"Job No.");
                           OpDailyLog2.SETRANGE(OpDailyLog2.Date,OpDailyLog.Date-1);
                           OpDailyLog2.SETRANGE(OpDailyLog2.Name,Vessel.Code);
                           IF OpDailyLog2.FIND('-') THEN BEGIN
                             IF OpDailyLog2."Fuel Balance" <> 0 THEN
                               FuelBalance := OpDailyLog2."Fuel Balance" - OpDailyLog."Fuel Balance"
                             ELSE
                               FuelBalance := 0;
                           END;
                           FOR i := 1 TO NoofDays DO BEGIN
                             IF DateCol[i] = OpDailyLog.Date THEN BEGIN
                               ColumnNo := i + 1;
                               IF OpDailyLog."Fuel Balance" <> 0 THEN
                                 EnterCell(
                                   RowNo,
                                   ColumnNo,
                                   FORMAT(FuelBalance),
                                   FALSE,
                                   FALSE,
                                   FALSE);
                             END;
                           END;
                         END;
                       END;
                      UNTIL OpDailyLog.NEXT = 0;
                  UNTIL Vessel.NEXT = 0;
                END;

                Window.CLOSE;

                IF Option = Option::"Update Workbook" THEN BEGIN
                  TempExcelBuffer.OpenBook(FileName,SheetName);
                  TempExcelBuffer.CreateSheet(SheetName,'',COMPANYNAME,USERID);
                END ELSE BEGIN
                  TempExcelBuffer.CreateBook;
                  TempExcelBuffer.CreateSheet('ROB','Vessel ROB Comp',COMPANYNAME,USERID);
                END;
                TempExcelBuffer.GiveUserControl;
                */
            end;
        }
    }

    requestpage
    {
        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        TempExcelBuffer: Record "Excel Buffer" temporary;

    [Scope('OnPrem')]
    procedure UpdateRequestForm()
    begin
        /*
        IF Option = Option::"Update Workbook" THEN BEGIN
          RequestOptionsPage.FileName.ENABLED(TRUE);
          RequestOptionsPage.SheetName.ENABLED(TRUE);
        END ELSE BEGIN
          FileName := '';
          SheetName := '';
          RequestOptionsForm.FileName.ENABLED(FALSE);
          RequestOptionsForm.SheetName.ENABLED(FALSE);
        END;
        */
    end;

    local procedure EnterFilterInCell(RowNo: Integer; "Filter": Text[250]; FieldName: Text[30])
    begin
        if Filter <> '' then begin
            EnterCell(RowNo, 1, FieldName, false, false, false);
            EnterCell(RowNo, 2, Filter, false, false, false);
        end;
    end;

    local procedure EnterCell(RowNo: Integer; ColumnNo: Integer; CellValue: Text[50]; Bold: Boolean; Italic: Boolean; UnderLine: Boolean)
    begin
        TempExcelBuffer.Init();
        TempExcelBuffer.Validate("Row No.", RowNo);
        TempExcelBuffer.Validate("Column No.", ColumnNo);
        TempExcelBuffer."Cell Value as Text" := CellValue;
        TempExcelBuffer.Formula := '';
        TempExcelBuffer.Bold := Bold;
        TempExcelBuffer.Italic := Italic;
        TempExcelBuffer.Underline := UnderLine;
        TempExcelBuffer.Insert();
    end;
}
