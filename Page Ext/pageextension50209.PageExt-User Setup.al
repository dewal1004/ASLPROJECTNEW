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
            }
        }
        addafter("Time Sheet Admin.")
        {
            field("Create Loan"; "Create Loan")
            {
                ShowCaption = true;
            }
            field("Unblock Employee"; "Unblock Employee")
            {
                ShowCaption = true;
            }
            field("Edit Resource"; "Edit Resource")
            {
                ShowCaption = true;
            }
            field("Periodic Activits/SetUp Access"; "Periodic Activits/SetUp Access")
            {
                ShowCaption = true;
            }
            field("Job Catch"; "Job Catch")
            {
                ShowCaption = true;
            }
            field("Pick Blocked Empl in Journal"; "Pick Blocked Empl in Journal")
            {
                ShowCaption = true;
            }
            field("JrnllineShowCRM-ASL"; "JrnllineShowCRM-ASL")
            {
            }
            field("Confirm StockOutWarning"; "Confirm StockOutWarning")
            {
                ShowCaption = true;
                Visible = true;
            }
            field("Sales Price"; "Sales Price")
            {
            }
            field("Store Req 1st Approval"; "Store Req 1st Approval")
            {
            }
            field("Store Req Final Approval"; "Store Req Final Approval")
            {
            }
            field("Print DN"; "Print DN")
            {
            }
            field("Reprint DN"; "Reprint DN")
            {
            }
            field("Return Release To Open"; "Return Release To Open")
            {
                Caption = 'Change Status Release To Open';
            }
            field("Print MR"; "Print MR")
            {
            }
            field("Reprint MR"; "Reprint MR")
            {
            }
            field("Modify Item"; "Modify Item")
            {
            }
            field("Modify Vendor"; "Modify Vendor")
            {
            }
            field("Use Item Journal"; "Use Item Journal")
            {
            }
            field("Modify Customer"; "Modify Customer")
            {
            }
        }
    }
}

