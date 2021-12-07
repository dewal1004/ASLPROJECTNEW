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
        YesOrNo: Boolean;
        Amount: Decimal;
        "When Was It": Date;
        "What Time": Time;
        Description: Text[30];
        "Code Number": Code[10];
        Ch: Char;
        Color: Option Red,Orange,Yellow,Green,Blue,Violet;
}

