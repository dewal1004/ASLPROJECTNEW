page 80088 "Catch Form II"
{
    // Packg
    // Bran
    // `B."0B"

    PageType = Card;
    SourceTable = "Medical Record";
    Caption = 'Catch Form II';
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;
                }
            }
            group("White Hon/Wild Tiger/Headless")
            {
                field("Employee No"; Rec."Employee No")
                {
                    ApplicationArea = All;
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ApplicationArea = All;
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                }
                field("Hospital Code"; Rec."Hospital Code")
                {
                    ApplicationArea = All;
                }
                field(Beneficiary; Rec.Beneficiary)
                {
                    ApplicationArea = All;
                }
                field("ASL Ref No"; Rec."ASL Ref No")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Region Code"; Rec."Region Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
            }
            group("Brwn Hon/Cut. Fish/Crab/Others")
            {
            }
            group("Flw Tiger/Shrimp In Bags")
            {
            }
            group("Net Fish")
            {
            }
            group("Hook Fish")
            {
            }
        }
    }

    actions
    {
        area(creation)
        {
            action(List)
            {
                Caption = 'List';
                ApplicationArea = All;
            }
        }
    }

    var
        Packg: array[150] of Code[10];
        Bran: array[150] of Code[10];
        I: Integer;

    local procedure InitAll()
    begin
        for I := 1 to 150 do begin
            Packg[I] := Packg[1];
            Bran[I] := Bran[1];
        end;
    end;
}
