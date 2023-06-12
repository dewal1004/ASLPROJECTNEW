page 50091 "IOU"
{
    PageType = List;
    SourceTable = IOU;
    UsageCategory = Lists;
    ApplicationArea = All, Basic;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;
                }
                field(EmployeeName; Rec.EmployeeName)
                {
                    Caption = 'Full Name';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field(Redeemed; Rec.Redeemed)
                {
                    ApplicationArea = All;
                }
                field("Redeemded by Voucher No."; Rec."Redeemded by Voucher No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    local procedure EmployeeNameOnInputChange(var Text: Text[1024])
    begin
        Rec.EmployeeName
    end;
}

