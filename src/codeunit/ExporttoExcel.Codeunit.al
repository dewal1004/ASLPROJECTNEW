codeunit 50007 "Export to Excel"
{
    trigger OnRun()
    begin
    end;

    var
        recExcelBuffer: Record "Excel Buffer" temporary;
        intLoop: Integer;
        intArrayLength: Integer;

    [Scope('OnPrem')]
    procedure ExportToExcel(txtExportValue: array[255] of Text[250]; intColumnCount: Integer; intRowNo: Integer; blnBold: Boolean; blnUnderline: Boolean)
    begin
        intArrayLength := intColumnCount;
        for intLoop := 1 to intArrayLength do begin
            recExcelBuffer.Bold := blnBold;
            recExcelBuffer.Underline := blnUnderline;
            recExcelBuffer.Validate(recExcelBuffer."Row No.", intRowNo);
            recExcelBuffer.Validate(recExcelBuffer."Column No.", intLoop);
            recExcelBuffer."Cell Value as Text" := txtExportValue[intLoop];
            recExcelBuffer.Insert();
        end;
    end;

    [Scope('OnPrem')]
    procedure CreateWorkbook(txtSheetName: Text[250]; txtDescription: Text[250])
    begin
        //recExcelBuffer.CreateBook('Sheet1');
        // recExcelBuffer.CreateBookAndOpenExcel(txtSheetName, txtSheetName, txtDescription, CompanyName, UserId);  //Export to Excel currently exist in other form ***AA
        //recExcelBuffer.CreateSheet(txtSheetName, txtDescription, COMPANYNAME, USERID);
        //recExcelBuffer.UpdateBookStream;
    end;

    [Scope('OnPrem')]
    procedure "---mcrsw037---"()
    begin
    end;

    [Scope('OnPrem')]
    procedure OpenWorkbook(txtFileName: Text[250]; txtSheetName: Text[250]; txtDescription: Text[250]; txtSaveFileName: Text[250])
    begin
        // recExcelBuffer.OpenBook(txtFileName, txtSheetName);//***  //Outofscope Other Fns available for Exporrt to Excel
        //recExcelBuffer.CreateSheet(txtSheetName, txtDescription, COMPANYNAME, USERID);    //to be checked
        if txtSaveFileName <> '' then;
        //recExcelBuffer.SaveBook(txtSaveFileName);        //to be chcked
        // recExcelBuffer.OpenBook(txtSaveFileName, 'Data');  *** //Out of scope New export mehtopd exist.

        //recExcelBuffer.UpdateBookStream;
    end;
}
