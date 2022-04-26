table 90029 "Sea CatchY"
{
    Caption = 'Item';
    DrillDownPageID = "Lost Days (Vessel)";
    LookupPageID = "Lost Days (Vessel)";
    Permissions = TableData "Reservation Entry" = d;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';

            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    GetJobSetup;
                    NoSeriesMgt.TestManual(JobSetup."Catch Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "0"; Integer)
        {
            Caption = 'U - 10';

            trigger OnValidate()
            begin
                I := FieldNo("0");
                Content[I] := Format("0");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(3; "1"; Integer)
        {
            Caption = '10 - 20';

            trigger OnValidate()
            begin
                I := FieldNo("1");
                Content[I] := Format("1");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(4; "2"; Integer)
        {
            Caption = '20 - 30';

            trigger OnValidate()
            begin
                I := FieldNo("2");
                Content[I] := Format("2");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(5; "3"; Integer)
        {
            Caption = '30 - 40';

            trigger OnValidate()
            begin
                I := FieldNo("3");
                Content[I] := Format("3");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(6; "4"; Integer)
        {
            Caption = '40 - 60';

            trigger OnValidate()
            begin
                I := FieldNo("4");
                Content[I] := Format("4");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(7; "5"; Integer)
        {
            Caption = '60 - 80';

            trigger OnValidate()
            begin
                I := FieldNo("5");
                Content[I] := Format("5");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(8; "6"; Integer)
        {
            Caption = '80 - 100';
        }
        field(9; "7"; Integer)
        {
            Caption = '100 - 120';
        }
        field(10; "8"; Integer)
        {
            Caption = '120 - 150';
        }
        field(11; "9"; Integer)
        {
            Caption = '30-20';
        }
        field(12; "10"; Integer)
        {
            Caption = 'U - 10';
        }
        field(1002; "0A"; Code[10])
        {
            Caption = 'U - 10';
            TableRelation = "Unit of Measure" WHERE("In Use" = CONST(true),
                                                     "Catch Code" = FILTER(<> ''));

            trigger OnValidate()
            begin
                I := FieldNo("0A");
                Content[I] := Format("0A");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(1003; "1A"; Code[10])
        {
            Caption = '10 - 20';
            TableRelation = "Unit of Measure" WHERE("In Use" = CONST(true),
                                                     "Catch Code" = FILTER(<> ''));

            trigger OnValidate()
            begin
                I := FieldNo("1A");
                Content[I] := Format("1A");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(1004; "2A"; Code[10])
        {
            Caption = '20 - 30';
            TableRelation = "Unit of Measure" WHERE("In Use" = CONST(true),
                                                     "Catch Code" = FILTER(<> ''));

            trigger OnValidate()
            begin
                I := FieldNo("2A");
                Content[I] := Format("2A");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(1005; "3A"; Code[10])
        {
            Caption = '30 - 40';
            TableRelation = "Unit of Measure" WHERE("In Use" = CONST(true),
                                                     "Catch Code" = FILTER(<> ''));

            trigger OnValidate()
            begin
                I := FieldNo("3A");
                Content[I] := Format("3A");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(1006; "4A"; Code[10])
        {
            Caption = '40 - 60';
            TableRelation = "Unit of Measure" WHERE("In Use" = CONST(true),
                                                     "Catch Code" = FILTER(<> ''));

            trigger OnValidate()
            begin
                I := FieldNo("4A");
                Content[I] := Format("4A");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(1007; "5A"; Code[10])
        {
            Caption = '60 - 80';
            TableRelation = "Unit of Measure" WHERE("In Use" = CONST(true),
                                                     "Catch Code" = FILTER(<> ''));

            trigger OnValidate()
            begin
                I := FieldNo("5A");
                Content[I] := Format("5A");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(1008; "6A"; Code[10])
        {
            Caption = '80 - 100';
        }
        field(1009; "7A"; Code[10])
        {
            Caption = '100 - 120';
        }
        field(1010; "8A"; Code[10])
        {
            Caption = '120 - 150';
        }
        field(1011; "9A"; Code[10])
        {
            Caption = '30-20';
        }
        field(1012; "10A"; Code[10])
        {
            Caption = 'U - 10';
        }
        field(2002; "0B"; Code[10])
        {
            Caption = 'U - 10';
            TableRelation = "Reason Code" WHERE("In Use" = CONST(true),
                                                 Type = CONST(Brands));

            trigger OnValidate()
            begin
                I := FieldNo("0B");
                Content[I] := Format("0B");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(2003; "1B"; Code[10])
        {
            Caption = '10 - 20';
            TableRelation = "Reason Code" WHERE("In Use" = CONST(true),
                                                 Type = CONST(Brands));

            trigger OnValidate()
            begin
                I := FieldNo("1B");
                Content[I] := Format("1B");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(2004; "2B"; Code[10])
        {
            Caption = '20 - 30';
            TableRelation = "Reason Code" WHERE("In Use" = CONST(true),
                                                 Type = CONST(Brands));

            trigger OnValidate()
            begin
                I := FieldNo("2B");
                Content[I] := Format("2B");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(2005; "3B"; Code[10])
        {
            Caption = '30 - 40';
            TableRelation = "Reason Code" WHERE("In Use" = CONST(true),
                                                 Type = CONST(Brands));

            trigger OnValidate()
            begin
                I := FieldNo("3B");
                Content[I] := Format("3B");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(2006; "4B"; Code[10])
        {
            Caption = '40 - 60';
            TableRelation = "Reason Code" WHERE("In Use" = CONST(true),
                                                 Type = CONST(Brands));

            trigger OnValidate()
            begin
                I := FieldNo("4B");
                Content[I] := Format("4B");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(2007; "5B"; Code[10])
        {
            Caption = '60 - 80';
            TableRelation = "Reason Code" WHERE("In Use" = CONST(true),
                                                 Type = CONST(Brands));

            trigger OnValidate()
            begin
                I := FieldNo("5B");
                Content[I] := Format("5B");
                UpdateCatchMatrix(I, Content[I]);
            end;
        }
        field(50097; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(50098; "Job No."; Code[10])
        {
            //***TableRelation = Job WHERE (Status = CONST ("Voyage Start"));

            trigger OnValidate()
            begin
                if Voy.Get("Job No.") then begin

                end;
            end;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        if "No." = '' then begin
            GetJobSetup;
            JobSetup.TestField("Catch Nos.");
            NoSeriesMgt.InitSeries(JobSetup."Catch Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    var
        JobSetup: Record "Jobs Setup";
        CatchMatrix: Record "Course Types";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        HasInvtSetup: Boolean;
        Voy: Record Job;
        I: Integer;
        Content: array[3000] of Text[30];

    //[Scope('OnPrem')]
    procedure AssistEdit(): Boolean
    begin
        GetJobSetup;
        JobSetup.TestField("Catch Nos.");
        if NoSeriesMgt.SelectSeries(JobSetup."Catch Nos.", xRec."No. Series", "No. Series") then begin
            NoSeriesMgt.SetSeries("No.");
            exit(true);
        end;
    end;

    //[Scope('OnPrem')]
    procedure GetJobSetup()
    begin
        if not HasInvtSetup then begin
            JobSetup.Get;
            HasInvtSetup := true;
        end;
    end;

    //[Scope('OnPrem')]
    procedure UpdateCatchMatrix(var Fldno: Integer; var FldContent: Text[30])
    begin
        CatchMatrix.Init;
        CatchMatrix."Course Type Code" := "No.";
        CatchMatrix.Description := Format(Fldno);
        // CatchMatrix.Content:=FldContent;
        if not CatchMatrix.Insert then CatchMatrix.Modify;
    end;
}

