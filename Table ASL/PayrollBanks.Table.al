table 50012 "Payroll-Banks."
{
    DataPerCompany = false;
    DrillDownPageID = "Banks.";
    LookupPageID = "Banks.";

    fields
    {
        field(1; "Code"; Code[20])
        {
            NotBlank = true;

            trigger OnValidate()
            begin
                if (1 < CursorPos) and (CursorPos < MaxStrLen("Search Name")) then begin
                    "Search Name" := DelChr(CopyStr(Code, CursorPos), '<>');
                    "Search Name" := PadStr("Search Name" + ' ' + DelChr(CopyStr(Code, 1, CursorPos - 1), '<>'), MaxStrLen("Search Name"));
                end
                else
                    "Search Name" := Code;
                "Search Name" := DelChr("Search Name", '<');
            end;
        }
        field(2; "Search Name"; Code[20])
        {
        }
        field(3; "Main Bank Code"; Code[10])
        {
            TableRelation = "Payroll-Banks.".Code;
        }
        field(4; Name; Text[30])
        {
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Search Name")
        {
        }
    }

    fieldgroups
    {
    }

    var
        CursorPos: Integer;
}

