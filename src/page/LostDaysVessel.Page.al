page 50089 "Lost Days (Vessel)"
{
    PageType = Card;
    SaveValues = true;
    SourceTable = Location;
    SourceTableView = WHERE("Location Type" = CONST(Vessel));
    Caption = 'Lost Days (Vessel)';
    layout
    {
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
}
