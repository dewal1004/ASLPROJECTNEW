page 50080 "Daily B/Up by Loc/Ves PGrp"
{
    // Code
    // //

    PageType = Card;
    SaveValues = true;
    SourceTable = "Inventory Posting Group";
    UsageCategory = Administration;
    ApplicationArea = all;
    SourceTableView = SORTING("S/No.")
                      WHERE("Statistics Group" = FILTER(> 0),
                            "In Use" = CONST(true));
    Caption = 'Daily B/Up by Loc/Ves PGrp';
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    local procedure FindPeriod(SearchText: Code[10])
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    begin
    end;

    [Scope('OnPrem')]
    procedure UpdateMatrix()
    begin
    end;

    local procedure FindPeriod2(SearchText: Code[10])
    begin
    end;

    local procedure Bin(SearchText: Code[10])
    begin
    end;
}
