codeunit 95100 "Workbook Exercises"
{
    trigger OnRun()
    begin
        LoopNo := 25;
        Message('The value of %1 is %2', 'LoopNo', LoopNo);
        Ch := 165;
        Message('The value of %1 is %2', 'Ch', Ch);
        Ch := 199;
        Message('The value of %1 is %2', 'Ch', Ch);
    end;

    var
        LoopNo: Integer;
        Ch: Char;
}
