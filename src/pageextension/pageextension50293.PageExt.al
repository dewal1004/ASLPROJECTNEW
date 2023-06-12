pageextension 50293 "pageextension50293" extends "Alternative Address Card"
{

    //Unsupported feature: Property Modification (Id) on "Text000(Variable 1000)".

    //var
    //>>>> ORIGINAL VALUE:
    //Text000 : 1000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Text000 : 1100;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "Employee(Variable 1001)".

    //var
    //>>>> ORIGINAL VALUE:
    //Employee : 1001;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Employee : 1101;
    //Variable type has not been exported.

    var
        // Mail: Codeunit Mail;
        Applicant: Record Applicants;


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

