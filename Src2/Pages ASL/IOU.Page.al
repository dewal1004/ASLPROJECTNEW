page 50091 IOU
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
                field(Date; Date)
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Employee No."; "Employee No.")
                {
                    ApplicationArea = All;
                }
                field(EmployeeName; EmployeeName)
                {
                    Caption = 'Full Name';
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field("Due Date"; "Due Date")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field(Redeemed; Redeemed)
                {
                    ApplicationArea = All;
                }
                field("Redeemded by Voucher No."; "Redeemded by Voucher No.")
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
        EmployeeName
    end;
}

