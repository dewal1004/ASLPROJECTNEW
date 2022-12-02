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
                }
                field("Employee No"; "Employee No")
                {
                }
                field(FullName; FullName)
                {
                    Caption = 'Full Name';
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("Transaction Type"; "Transaction Type")
                {
                }
                field("Sickness Description"; "Sickness Description")
                {
                }
                field("Transaction Description"; "Transaction Description")
                {
                }
                field("Hospital Code"; "Hospital Code")
                {
                }
                field(Beneficiary; Beneficiary)
                {
                }
                field("ASL Ref No"; "ASL Ref No")
                {
                }
                field(Amount; Amount)
                {
                }
                field("Region Code"; "Region Code")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

