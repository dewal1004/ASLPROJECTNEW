page 50091 IOU
{
    PageType = Card;
    SourceTable = IOU;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Date; Date)
                {
                }
                field("No."; "No.")
                {
                }
                field("Employee No."; "Employee No.")
                {
                }
                field(EmployeeName; EmployeeName)
                {
                    Caption = 'Full Name';
                }
                field(Amount; Amount)
                {
                }
                field("Due Date"; "Due Date")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field(Redeemed; Redeemed)
                {
                }
                field("Redeemded by Voucher No."; "Redeemded by Voucher No.")
                {
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

