codeunit 51101 "Object delete"
{

    trigger OnRun()
    begin
        object.DeleteAll;
        Message('Deleted'); //
    end;

    var
        "object": Record "Operation Daily Radio";
}

