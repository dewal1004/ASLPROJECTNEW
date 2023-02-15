page 50009 "Utilities."
{
    Caption = 'Utilities Menu';
    PageType = Card;

    layout
    {
        area(content)
        {
        }
    }

    actions
    {
        area(processing)
        {
            action("Close and Copy to next Period")
            {
                Caption = 'Close and Copy to next Period';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "Balance At Date (Cust/Vend)VJ";
                Visible = false;
                ApplicationArea = All;
            }
            action("Create New Payslips")
            {
                Caption = 'Create New Payslips';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "ASL Create New payslips - New";
                Visible = true;
                ApplicationArea = All;
            }
            action("Create next Payroll")
            {
                Caption = 'Create next Payroll';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "PRoll; Create next Payroll";
                ApplicationArea = All;
            }
            action("Close Paryoll")
            {
                Caption = 'Close Paryoll';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "PRoll; Close Period";
                ApplicationArea = All;
            }
            action("Increment Employee Earnings by %age")
            {
                Caption = 'Increment Employee Earnings by %age';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "Increment Employee Earnings";
                ApplicationArea = All;
            }
            action("Amend Posting Details")
            {
                Caption = 'Amend Posting Details';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "Issues To Cost Centers";
                ApplicationArea = All;
            }
            action("Amend PaySlip Appearance")
            {
                Caption = 'Amend PaySlip Appearance';
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                //***R RunObject = Report "Transfer Processing/Fish Shop";
            }
            action("Transfer E/D Definitions")
            {
                Caption = 'Transfer E/D Definitions';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "PRoll; Transfer ED definitions";
                ApplicationArea = All;
            }
        }
    }
}

