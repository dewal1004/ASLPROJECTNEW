pageextension 50293 "pageextension50293" extends "Alternative Address Card"
{

    //Unsupported feature: Code Insertion on "OnAfterGetCurrRecord".

    //trigger OnAfterGetCurrRecord()
    //begin
    /*
    SetRange(Code);
    */
    //end;

    //Unsupported feature: Code Modification on "Caption(PROCEDURE 1)".

    //procedure Caption();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if Employee.Get("Employee No.") then
      exit("Employee No." + ' ' + Employee.FullName + ' ' + Code);

    exit(Text000);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    {IF Employee.GET("Employee No.") THEN
      EXIT("Employee No." + ' ' + Employee.FullName + ' ' + Code);

    EXIT(Text000);}

    if Source=Source::" " then begin
    if Employee.Get("Employee No.") then
      exit("Employee No." + ' ' + Employee.FullName + ' ' + Code)
    else
      exit('untitled');
    end
    else
    begin
    if Applicant.Get("Employee No.") then
      exit("Employee No." + ' ' + Applicant.FullName + ' ' + Code)
    else
      exit('untitled');
    end;
    */
    //end;
}
