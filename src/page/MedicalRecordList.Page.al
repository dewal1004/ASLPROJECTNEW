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
                field("Line No"; "Line No")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; "Employee No")
                {
                    ApplicationArea = All;
                }
                field(FullName; FullName)
                {
                    Caption = 'Full Name';
                    ApplicationArea = All;
                }
                field("Transaction Date"; "Transaction Date")
                {
                    ApplicationArea = All;
                }
                field("Transaction Type"; "Transaction Type")
                {
                    ApplicationArea = All;
                }
                field("Sickness Description"; "Sickness Description")
                {
                    ApplicationArea = All;
                }
                field("Transaction Description"; "Transaction Description")
                {
                    ApplicationArea = All;
                }
                field("Hospital Code"; "Hospital Code")
                {
                    ApplicationArea = All;
                }
                field(Beneficiary; Beneficiary)
                {
                    ApplicationArea = All;
                }
                field("ASL Ref No"; "ASL Ref No")
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field("Region Code"; "Region Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
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

