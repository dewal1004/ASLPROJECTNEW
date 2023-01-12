pageextension 50209 pageextension50209 extends "User Setup"
{
    // 
    // UNL-ASL3.60.01.009 (Santus) June 14, 2005
    // -> added new control "Pick Blocked Empl in Journal";
    layout
    {
        addafter("Allow Posting To")
        {
            field("E-Mail"; "E-Mail")
            {
                ApplicationArea = All;
            }
        }
        addafter("Time Sheet Admin.")
        {
            field("Create Loan"; "Create Loan")
            {
                ShowCaption = true;
                ApplicationArea = All;
            }
            field("Unblock Employee"; "Unblock Employee")
            {
                ShowCaption = true;
                ApplicationArea = All;
            }
            field("Edit Resource"; "Edit Resource")
            {
                ShowCaption = true;
                ApplicationArea = All;
            }
            field("Periodic Activits/SetUp Access"; "Periodic Activits/SetUp Access")
            {
                ShowCaption = true;
                ApplicationArea = All;
            }
            field("Job Catch"; "Job Catch")
            {
                ShowCaption = true;
                ApplicationArea = All;
            }
            field("Pick Blocked Empl in Journal"; "Pick Blocked Empl in Journal")
            {
                ShowCaption = true;
                ApplicationArea = All;
            }
            field("JrnllineShowCRM-ASL"; "JrnllineShowCRM-ASL")
            {
                ApplicationArea = All;
            }
            field("Confirm StockOutWarning"; "Confirm StockOutWarning")
            {
                ShowCaption = true;
                Visible = true;
                ApplicationArea = All;
            }
            field("Sales Price"; "Sales Price")
            {
                ApplicationArea = All;
            }
            field("Store Req 1st Approval"; "Store Req 1st Approval")
            {
                ApplicationArea = All;
            }
            field("Store Req Final Approval"; "Store Req Final Approval")
            {
                ApplicationArea = All;
            }
            field("Fish Stk Req F.Approval"; "Fish Stk Req F.Approval")
            {
                ApplicationArea = All;
            }
            field("Print DN"; "Print DN")
            {
                ApplicationArea = All;
            }
            field("Reprint DN"; "Reprint DN")
            {
                ApplicationArea = All;
            }
            field("Return Release To Open"; "Return Release To Open")
            {
                Caption = 'Change Status Release To Open';
                ApplicationArea = All;
            }
            field("Print MR"; "Print MR")
            {
                ApplicationArea = All;
            }
            field("Reprint MR"; "Reprint MR")
            {
                ApplicationArea = All;
            }
            field("Modify Item"; "Modify Item")
            {
                ApplicationArea = All;
            }
            field("Modify Vendor"; "Modify Vendor")
            {
                ApplicationArea = All;
            }
            field("Use Item Journal"; "Use Item Journal")
            {
                ApplicationArea = All;
            }
            field("Modify Customer"; "Modify Customer")
            {
                ApplicationArea = All;
            }
        }
    }
}

