tableextension 50286 "tableextension50286" extends "Employee Relative"
{
    fields
    {
        modify("Employee No.")
        {
            TableRelation = IF (Source = CONST(" ")) Employee
            ELSE
            IF (Source = CONST(Applicant)) Applicants;
        }
        field(50000; Source; Option)
        {
            OptionMembers = " ",Applicant;
        }
        field(50001; Address; Text[80])
        {
        }
    }


    //Unsupported feature: Code Insertion on "OnInsert".

    //trigger OnInsert()
    //begin
    /*

    //Univision Insert 31/10/01
    if Source=Source::" " then
    begin

      employee.Get("Employee No.");
    //  Name := Employee."Last Name";
    //  "Employee Status" := Employee.Status;
    end
      else
        begin
          Applicant.Get("Employee No.");
    //      Name := Applicant."Last Name";
    //      "Application Status" := Applicant."Application Status";
        end;

    //Univision Finish 31/10/01
    */
    //end;

    var
        employee: Record Employee;
        Applicant: Record Applicants;
}

