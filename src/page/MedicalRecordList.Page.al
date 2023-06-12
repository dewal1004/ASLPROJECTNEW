page 50041 "Medical Record List"
{
    PageType = ListPart;
    SourceTable = "Medical Record";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; Rec."Employee No")
                {
                    ApplicationArea = All;
                }
                field(FullName; Rec.FullName)
                {
                    Caption = 'Full Name';
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
                field("Sickness Description"; Rec."Sickness Description")
                {
                    ApplicationArea = All;
                }
                field("Transaction Description"; Rec."Transaction Description")
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
        }
    }

    actions
    {
    }
}

