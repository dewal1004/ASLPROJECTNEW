tableextension 50284 "tableextension50284" extends "Employee Qualification"
{
    fields
    {

        //Unsupported feature: Code Insertion on ""Employee No."(Field 1)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*

        if Source=Source::" " then
        begin
           Employee.Get("Employee No.");
          "Employee Status" := Employee.Status;
        end
          else
            begin
              Applicant.Get("Employee No.");
              "Application Status" := Applicant."Application Status";
            end;

        //IF NOT Employee.GET("Employee No.") THEN Applicant.GET("Employee No.");;
        */
        //end;
        field(50002; Source; Option)
        {
            Description = 'keep this';
            OptionMembers = " ",Applicant;

            trigger OnValidate()
            begin
                if (Source = Source::Applicant) then
                    Validate(Type, Type::External);
            end;
        }
        field(50003; "Application Status"; Option)
        {
            OptionMembers = " ","Under Interview","Short Listed",Accepted,Rejected;
        }
        field(50004; "Qualification Group"; Option)
        {
            OptionMembers = " ",Educational,Professional;
        }
    }


    //Unsupported feature: Code Modification on "OnDelete".

    //trigger OnDelete()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if Comment then
      Error(Text000);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //IF Comment THEN
     // ERROR(Text000);

    if Comment then
      Error('You cannot delete employee qualification information if there are comments associated with it.');
    */
    //end;


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Employee.Get("Employee No.");
    "Employee Status" := Employee.Status;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Employee.Get("Employee No.");
    "Employee Status" := Employee.Status;

    if Source=Source::" " then
    begin

        Employee.Get("Employee No.");
      "Employee Status" := Employee.Status;
    end
      else
        begin
          Applicant.Get("Employee No.");
          "Application Status" := Applicant."Application Status";
        end;
    */
    //end;

    var
        Applicant: Record Applicants;
}

