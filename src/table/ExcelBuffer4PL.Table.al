table 50047 "Excel Buffer 4 P&L"
{
    Caption = 'Excel Buffer';

    fields
    {
        field(1; "Row No."; Integer)
        {
            Caption = 'Row No.';

            trigger OnValidate()
            begin

                xlRowID := '';
                if "Row No." <> 0 then
                    xlRowID := Format("Row No.");
            end;
        }
        field(2; xlRowID; Text[10])
        {
            Caption = 'xlRowID';
        }
        field(3; "Column No."; Integer)
        {
            Caption = 'Column No.';

            trigger OnValidate()
            var
                x: Integer;
                i: Integer;
                c: Char;
            begin
                xlColID := '';
                if "Column No." <> 0 then begin
                    x := "Column No." - 1;
                    c := 65 + x mod 26;
                    xlColID[10] := c;
                    i := 10;
                    while x > 25 do begin
                        x := x div 26;
                        i := i - 1;
                        c := 64 + x mod 26;
                        xlColID[i] := c;
                    end;
                    for x := i to 10 do
                        xlColID[1 + x - i] := xlColID[x];
                end;
            end;
        }
        field(4; xlColID; Text[10])
        {
            Caption = 'xlColID';
        }
        field(5; "Cell Value as Text"; Text[250])
        {
            Caption = 'Cell Value as Text';
        }
        field(6; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(7; Formula; Text[250])
        {
            Caption = 'Formula';
        }
        field(8; Bold; Boolean)
        {
            Caption = 'Bold';
        }
        field(9; Italic; Boolean)
        {
            Caption = 'Italic';
        }
        field(10; Underline; Boolean)
        {
            Caption = 'Underline';
        }
        field(11; NumberFormat; Text[30])
        {
            Caption = 'NumberFormat';
        }
    }

    keys
    {
        key(Key1; "Row No.", "Column No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
    //[Scope('OnPrem')]
    /*    procedure CreateBook()
        begin
            IF NOT CREATE(XlApplication,TRUE) THEN
              ERROR(Text000);
            XlApplication.Visible(FALSE);
            XlWorkBook := XlApplication.Workbooks.Add;
            XlWorkSheet := XlWorkBook.Worksheets.Add;
        end;

       // [Scope('OnPrem')]
        procedure OpenBook(FileName: Text[250]; SheetName: Text[250])
        var
            i: Integer;
            EndOfLoop: Integer;
            Found: Boolean;
        begin
            IF FileName = '' THEN
              ERROR(Text001);

            IF SheetName = '' THEN
              ERROR(Text002);

            IF NOT EXISTS(FileName) THEN
              ERROR(Text003,FileName);

            IF NOT CREATE(XlApplication,TRUE) THEN
              ERROR(Text000);

            XlApplication.Workbooks._Open(FileName);
            XlWorkBook := XlApplication.ActiveWorkbook;
            i := 1;
            EndOfLoop := XlWorkBook.Worksheets.Count;
            WHILE (i <= EndOfLoop) AND (NOT Found) DO BEGIN
              XlWorksheets := XlWorkBook.Worksheets.Item(i);
              IF SheetName = XlWorksheets.Name THEN
                Found := TRUE;
              i := i + 1;
            END;
            IF Found THEN
              XlWorkSheet := XlWorkBook.Worksheets.Item(SheetName)
            ELSE BEGIN
              XlWorkBook.Close(FALSE);
              XlApplication.Quit;
              CLEAR(XlApplication);
              ERROR(Text004,SheetName);
            END;
        end;

       // [Scope('OnPrem')]
        procedure CreateSheet(SheetName: Text[250]; ReportHeader: Text[80]; CompanyName: Text[30]; UserID2: Text[30])
        var
            XlEdgeBottom: Integer;
            XlContinuous: Integer;
            XlLineStyleNone: Integer;
            XlLandscape: Integer;
            CRLF: Char;
            Window: Dialog;
            RecNo: Integer;
            TotalRecNo: Integer;
        begin
            Window.Open(
              Text005 +
              '@1@@@@@@@@@@@@@@@@@@@@@@@@@\');
            Window.Update(1, 0);

            XlEdgeBottom := 9;
            XlContinuous := 1;
            XlLineStyleNone := -4142;
            XlLandscape := 2;
            CRLF := 10;
            RecNo := 1;
            //TotalRecNo := COUNTAPPROX;
            TotalRecNo := Count;
            RecNo := 0;

            XlWorkSheet.Name := SheetName;
            if ReportHeader <> '' then
                XlWorkSheet.PageSetup.LeftHeader :=
                  StrSubstNo('%1%2%1%3%4', GetExcelReference(1), ReportHeader, CRLF, CompanyName);
            XlWorkSheet.PageSetup.RightHeader :=
              StrSubstNo(Text006, GetExcelReference(2), GetExcelReference(3), CRLF, UserID2);
            XlWorkSheet.PageSetup.Orientation := XlLandscape;
            if Find('-') then
                repeat
                    RecNo := RecNo + 1;
                    Window.Update(1, Round(RecNo / TotalRecNo * 10000, 1));
                    if NumberFormat <> '' then
                        XlWorkSheet.Range(xlColID + xlRowID).NumberFormat := NumberFormat;
                    if Formula = '' then
                        XlWorkSheet.Range(xlColID + xlRowID).Value := "Cell Value as Text"
                    else
                        XlWorkSheet.Range(xlColID + xlRowID).Formula := Formula;
                    if Comment <> '' then
                        XlWorkSheet.Range(xlColID + xlRowID).AddComment := Comment;
                    if Bold then
                        XlWorkSheet.Range(xlColID + xlRowID).Font.Bold := Bold;
                    if Italic then
                        XlWorkSheet.Range(xlColID + xlRowID).Font.Italic := Italic;
                    XlWorkSheet.Range(xlColID + xlRowID).Borders.LineStyle := XlLineStyleNone;
                    if Underline then
                        XlWorkSheet.Range(xlColID + xlRowID).Borders.Item(XlEdgeBottom).LineStyle := XlContinuous;
                until Next = 0;
            //XlWorkSheet.Range(GetExcelReference(5) + ':' + xlColID + xlRowID).Columns.AutoFit;

            Window.Close;
        end;

        [Scope('OnPrem')]
        procedure CreateRangeName(RangeName: Text[30]; FromColumnNo: Integer; FromRowNo: Integer)
        var
            TempExcelBuf: Record "Excel Buffer" temporary;
            ToxlRowID: Text[10];
        begin

            SetCurrentKey("Row No.", "Column No.");
            if Find('+') then
                ToxlRowID := xlRowID;
            TempExcelBuf.Validate("Row No.", FromRowNo);
            TempExcelBuf.Validate("Column No.", FromColumnNo);
            XlWorkSheet.Names.Add(
              RangeName,
              '=' + GetExcelReference(4) + TempExcelBuf.xlColID + GetExcelReference(4) + TempExcelBuf.xlRowID +
              ':' + GetExcelReference(4) + TempExcelBuf.xlColID + GetExcelReference(4) + ToxlRowID);
        end;

        [Scope('OnPrem')]
        procedure GiveUserControl()
        begin
            XlApplication.Visible(true);
            XlApplication.UserControl(true);
            Clear(XlApplication);
        end;

        [Scope('OnPrem')]
        procedure ReadSheet()
        var
            i: Integer;
            j: Integer;
            Maxi: Integer;
            Maxj: Integer;
            Window: Dialog;
        begin

            Window.Open(
              Text007 +
              '@1@@@@@@@@@@@@@@@@@@@@@@@@\');
            Window.Update(1, 0);

            DeleteAll;
            XlRange := XlWorkSheet.Range(GetExcelReference(5)).SpecialCells(11);
            Maxi := XlRange.Row;
            Maxj := XlRange.Column;
            i := 1;
            repeat
                j := 1;
                Validate("Row No.", i);
                repeat
                    Validate("Column No.", j);
                    "Cell Value as Text" := DelChr(Format(XlWorkSheet.Range(xlColID + xlRowID).Value), '<', ' ');
                    if "Cell Value as Text" <> '' then begin
                        Insert;
                    end;
                    j := j + 1;
                until j > Maxj;
                i := i + 1;
                Window.Update(1, Round(i / Maxi * 10000, 1));
            until i > Maxi;
            XlWorkBook.Close(false);
            XlApplication.Quit;
            Clear(XlApplication);
            Window.Close;
        end;

        [Scope('OnPrem')]
        procedure SelectSheetsName(FileName: Text[250]): Text[250]
        var
            i: Integer;
            SheetName: Text[250];
            EndOfLoop: Integer;
            SheetsList: Text[250];
            OptionNo: Integer;
        begin
            /*
            IF FileName <> '' THEN BEGIN
              IF NOT EXISTS(FileName) THEN
                ERROR(Text003,FileName);
            END ELSE
              EXIT('');

            IF NOT CREATE(XlApplication,TRUE) THEN
              ERROR(Text000);
            XlApplication.Workbooks._Open(FileName);
            XlWorkBook := XlApplication.ActiveWorkbook;
            i := 1;
            EndOfLoop := XlWorkBook.Worksheets.Count;
            WHILE i <= EndOfLoop DO BEGIN
              XlWorksheets := XlWorkBook.Worksheets.Item(i);
              SheetName := XlWorksheets.Name;
              IF (SheetName <> '') AND (STRLEN(SheetsList) + STRLEN(SheetName) < 250) THEN
                SheetsList := SheetsList + SheetName + ','
              ELSE
                i := EndOfLoop;
              i := i + 1;
            END;
            XlWorkBook.Close(FALSE);
            XlApplication.Quit;
            CLEAR(XlApplication);
            OptionNo := STRMENU(SheetsList,1);
            IF OptionNo <> 0 THEN
              EXIT(SELECTSTR(OptionNo,SheetsList))
            ELSE
              EXIT('');
        end;

      //  [Scope('OnPrem')]
        procedure FilterToFormula("Filter": Text[250]; Ref1: Text[250]; Ref2: Text[250]) Formula: Text[250]
        var
            FormulaUnit: array[250] of Code[20];
            IsValue: array[250] of Boolean;
            i: Integer;
            j: Integer;
            CountComparison: Integer;
        begin

            i := 1;
            j := 2;
            repeat
                if StrPos('|&>.<()*-?@', CopyStr(Filter, i, 1)) > 0 then begin
                    if FormulaUnit[j] <> '' then
                        j := j + 1;
                    FormulaUnit[j] := FormulaUnit[j] + CopyStr(Filter, i, 1);
                    if CopyStr(Filter, i, 2) = '..' then begin //Case: X..Y
                        FormulaUnit[j] := FormulaUnit[j] + '.';
                        i := i + 1;
                    end;
                    if (StrPos('><', CopyStr(Filter, i, 1)) > 0) then begin
                        if (StrPos('>=', CopyStr(Filter, i + 1, 1)) > 0) then begin //Case: <>X, <=X, >=X
                            FormulaUnit[j] := FormulaUnit[j] + CopyStr(Filter, i + 1, 1);
                            i := i + 1;
                        end;
                    end;
                    j := j + 1;
                end else begin
                    FormulaUnit[j] := FormulaUnit[j] + CopyStr(Filter, i, 1);
                    IsValue[j] := true;
                end;
                i := i + 1;
            until CopyStr(Filter, i, 1) = '';

            j := 1;
            Formula := '=';
            while NextValue(FormulaUnit, IsValue, j) do begin
                case FormulaUnit[j] of
                    '..':
                        begin
                            case true of
                                IsValue[j - 1] and IsValue[j + 1]:
                                    begin
                                        if FormulaUnit[j - 1] > FormulaUnit[j + 1] then begin
                                            Formula := '';
                                            FormulaUnitErr := Filter + Text008 + FormulaUnit[j - 1] + '..' + FormulaUnit[j + 1] +
                                              Text009;
                                            exit;
                                        end else begin
                                            Formula := Formula + SumIf(Ref1, '>=', FormulaUnit[j - 1], Ref2) + '-' +
                                              SumIf(Ref1, '>=', FormulaUnit[j + 1], Ref2);
                                            FormulaUnit[j - 1] := '';
                                            FormulaUnit[j + 1] := '';
                                        end;
                                    end;
                                IsValue[j - 1] and not IsValue[j + 1]:
                                    begin
                                        Formula := Formula + SumIf(Ref1, '>=', FormulaUnit[j - 1], Ref2);
                                        FormulaUnit[j - 1] := '';
                                    end;
                                not IsValue[j - 1] and IsValue[j + 1]:
                                    begin
                                        Formula := Formula + SumIf(Ref1, '<=', FormulaUnit[j + 1], Ref2);
                                        FormulaUnit[j + 1] := '';
                                    end;
                            end;
                        end;
                    '>':
                        begin
                            Formula := Formula + SumIf(Ref1, '>', FormulaUnit[j + 1], Ref2);
                            CountComparison := CountComparison + 1;
                            FormulaUnit[j + 1] := '';
                        end;
                    '<':
                        begin
                            Formula := Formula + SumIf(Ref1, '<', FormulaUnit[j + 1], Ref2);
                            CountComparison := CountComparison + 1;
                            FormulaUnit[j + 1] := '';
                        end;
                    '>=':
                        begin
                            Formula := Formula + SumIf(Ref1, '>=', FormulaUnit[j + 1], Ref2);
                            CountComparison := CountComparison + 1;
                            FormulaUnit[j + 1] := '';
                        end;
                    '<=':
                        begin
                            Formula := Formula + SumIf(Ref1, '<=', FormulaUnit[j + 1], Ref2);
                            CountComparison := CountComparison + 1;
                            FormulaUnit[j + 1] := '';
                        end;
                    '<>', '&', '+', '-', '/', '*', '?', '@':
                        begin
                            Formula := '';
                            FormulaUnitErr := Filter + Text010 + FormulaUnit[j] + Text009;
                            exit;
                        end;
                    '|':
                        begin
                            if IsValue[j - 1] and (FormulaUnit[j - 1] <> '') then begin
                                Formula := Formula + SumIf(Ref1, '=', FormulaUnit[j - 1], Ref2);
                                FormulaUnit[j - 1] := '';
                            end;
                            Formula := Formula + '+';
                        end;
                    '(', ')':
                        begin
                            Formula := Formula + FormulaUnit[j];
                        end;
                    else begin
                            Formula := '';
                            FormulaUnitErr := Filter + Text010 + FormulaUnit[j] + Text011;
                            exit;
                        end;
                end;
                if CountComparison > 1 then begin
                    Formula := '';
                    FormulaUnitErr := Filter + Text012;
                    exit;
                end;
                FormulaUnit[j] := '';
            end;
            if IsValue[j - 1] and (FormulaUnit[j - 1] <> '') then
                Formula := Formula + SumIf(Ref1, '=', FormulaUnit[j - 1], Ref2);
        end;

        local procedure NextValue(FormulaUnit: array[250] of Code[20]; IsValue: array[250] of Boolean; var j: Integer): Boolean
        begin

            repeat
                j := j + 1;
            until not IsValue[j];
            if FormulaUnit[j] <> '' then
                exit(true)
            else
                exit(false);
        end;

        local procedure SumIf(Ref1: Text[250]; Operator: Text[250]; Value: Code[20]; Ref2: Text[250]): Text[250]
        var
            Symbol: Char;
            IsNumeric: Integer;
        begin

            Symbol := 34;
            exit(
              GetExcelReference(6) + '(' + Ref1 + ';' +
              Format(Symbol) + Operator + '''' + Value + '''' + Format(Symbol) + ';' +
              Ref2 + ')');
        end;

       // [Scope('OnPrem')]
        procedure GetFormulaUnitErr(): Text[250]
        begin
            exit(FormulaUnitErr);
        end;

        //[Scope('OnPrem')]
        procedure GetExcelReference(Which: Integer): Text[250]
        begin

            case Which of
                1:
                    exit(Text013);
                    // DO NOT TRANSLATE: &B is the Excel code to turn bold printing on or off for customized Header/Footer.
                2:
                    exit(Text014);
                    // DO NOT TRANSLATE: &D is the Excel code to print the current date in customized Header/Footer.
                3:
                    exit(Text015);
                    // DO NOT TRANSLATE: &P is the Excel code to print the page number in customized Header/Footer.
                4:
                    exit('$');
                    // DO NOT TRANSLATE: $ is the Excel code for absolute reference to cells.
                5:
                    exit(Text016);
                    // DO NOT TRANSLATE: A1 is the Excel reference of the first cell.
                6:
                    exit(Text017);
                    // DO NOT TRANSLATE: SUMIF is the name of the Excel function used to summarize values according to some conditions.
                7:
                    exit(Text018);
                    // DO NOT TRANSLATE: The #N/A Excel error value occurs when a value is not available to a function or formula.
                8:
                    exit(Text019);
                    // DO NOT TRANSLATE: GLAcc is used to define an Excel range name. You must refer to Excel rules to change this term.
                9:
                    exit(Text020);
                    // DO NOT TRANSLATE: Period is used to define an Excel range name. You must refer to Excel rules to change this term.
                10:
                    exit(Text021);
                    // DO NOT TRANSLATE: Budget is used to define an Excel worksheet name. You must refer to Excel rules to change this term.
            end;
        end;

        //[Scope('OnPrem')]
        procedure CreateSheet2(SheetName: Text[250]; ReportHeader: Text[80]; CompanyName: Text[30]; UserID2: Text[30])
        var
            XlEdgeBottom: Integer;
            XlContinuous: Integer;
            XlLineStyleNone: Integer;
            XlLandscape: Integer;
            CRLF: Char;
            Window: Dialog;
            RecNo: Integer;
            TotalRecNo: Integer;
        begin
            Window.Open(
              Text005 +
              '@1@@@@@@@@@@@@@@@@@@@@@@@@@\');
            Window.Update(1, 0);

            XlEdgeBottom := 9;
            XlContinuous := 1;
            XlLineStyleNone := -4142;
            XlLandscape := 2;
            CRLF := 10;
            RecNo := 1;
            //TotalRecNo := COUNTAPPROX;
            TotalRecNo := ReportedLns.Count;
            //MESSAGE('I counted %1',ReportedLns.COUNT);
            RecNo := 0;

            XlWorkSheet.Name := SheetName;
            if ReportHeader <> '' then
                XlWorkSheet.PageSetup.LeftHeader :=
                  StrSubstNo('%1%2%1%3%4', GetExcelReference(1), ReportHeader, CRLF, CompanyName);
            XlWorkSheet.PageSetup.RightHeader :=
              StrSubstNo(Text006, GetExcelReference(2), GetExcelReference(3), CRLF, UserID2);
            XlWorkSheet.PageSetup.Orientation := XlLandscape;
            if ReportedLns.Find('-') then
                repeat
                    XlWorkSheet.Range(ReportedLns.xlColID + ReportedLns.xlRowID).Value := ReportedLns."Cell Value as Text";
                    //MESSAGE('Value in %1%2 is %3',ReportedLns.xlColID,ReportedLns.xlRowID,ReportedLns."Cell Value as Text")
                until ReportedLns.Next = 0
            else
                Message('Records not Found but Value is ');
            //XlWorkSheet.Range(GetExcelReference(5) + ':' + xlColID + xlRowID).Columns.AutoFit;
            Window.Close;
        end;
    */
}