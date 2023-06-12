table 60029 "Educational Institute NU*"
{
    DataCaptionFields = "Institute Code", "Institute Name";
    // DrillDownPageID = 60042;
    // LookupPageID = 60042;  ****

    fields
    {
        field(1; "Institute Code"; Code[6])
        {
            NotBlank = true;
        }
        field(2; "Institute Grp"; Code[4])
        {
            NotBlank = true;
            TableRelation = "Education Institute Grp NU*"."Group Code";

            trigger OnValidate()
            begin
                GrpNo := "Institute Grp";

                if EduGrp.Get(GrpNo) then
                    Validate("Institute Grp Name", EduGrp.Description);

                EduRec.SetCurrentKey("Institute Grp");
                EduRec.SetFilter(EduRec."Institute Grp", GrpNo);



                if EduRec.Find('+') then begin
                    "Institute Grp" := GrpNo;
                    EduNo := IncStr(EduRec."Institute Code");
                    Validate("Institute Code", EduNo);
                end
                else begin
                    "Institute Grp" := GrpNo;
                    EduNo := GrpNo + '01';
                    Validate("Institute Code", EduNo);
                end;
            end;
        }
        field(3; "Institute Name"; Text[50])
        {
        }
        field(4; "Institute Grp Name"; Text[50])
        {
        }
        field(5; "Staffs In"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("Employee Qualification" WHERE("Institution/Company" = FIELD("Institute Code")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Institute Grp", "Institute Code")
        {
            Clustered = true;
        }
        key(Key2; "Institute Code")
        {
        }
    }

    fieldgroups
    {
    }

    var
        EduRec: Record "Educational Institute NU*";
        EduGrp: Record "Education Institute Grp NU*";
        EduNo: Code[6];
        GrpNo: Code[4];
}

