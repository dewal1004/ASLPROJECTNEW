page 50095 "Foreign Purchase Order List"
{
    CardPageID = "Purchase Order Foreign";
    Editable = false;
    PageType = List;
    SourceTable = "Purchase Header";
    SourceTableView = WHERE ("Document Type" = CONST (Order));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document Type"; "Document Type")
                {
                }
                field("Buy-from Vendor No."; "Buy-from Vendor No.")
                {
                }
                field("No."; "No.")
                {
                }
                field("Pay-to Vendor No."; "Pay-to Vendor No.")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field(Amount; Amount)
                {
                }
                field("Pay-to Name"; "Pay-to Name")
                {
                }
                field("Pay-to Name 2"; "Pay-to Name 2")
                {
                }
                field("Pay-to Address"; "Pay-to Address")
                {
                }
                field("Pay-to Address 2"; "Pay-to Address 2")
                {
                }
                field("Pay-to City"; "Pay-to City")
                {
                }
                field("Pay-to Contact"; "Pay-to Contact")
                {
                }
                field("Your Reference"; "Your Reference")
                {
                }
                field("Ship-to Code"; "Ship-to Code")
                {
                }
                field("Ship-to Name"; "Ship-to Name")
                {
                }
                field("Ship-to Name 2"; "Ship-to Name 2")
                {
                }
                field("Ship-to Address"; "Ship-to Address")
                {
                }
                field("Ship-to Address 2"; "Ship-to Address 2")
                {
                }
                field("Ship-to City"; "Ship-to City")
                {
                }
                field("Ship-to Contact"; "Ship-to Contact")
                {
                }
                field("Order Date"; "Order Date")
                {
                }
                field("Posting Date"; "Posting Date")
                {
                }
                field("Expected Receipt Date"; "Expected Receipt Date")
                {
                }
                field("Posting Description"; "Posting Description")
                {
                }
                field("Payment Terms Code"; "Payment Terms Code")
                {
                }
                field("Due Date"; "Due Date")
                {
                }
                field("Payment Discount %"; "Payment Discount %")
                {
                }
                field("Pmt. Discount Date"; "Pmt. Discount Date")
                {
                }
                field("Shipment Method Code"; "Shipment Method Code")
                {
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                }
                field("Vendor Posting Group"; "Vendor Posting Group")
                {
                }
                field("Currency Code"; "Currency Code")
                {
                }
                field("Currency Factor"; "Currency Factor")
                {
                }
                field("Prices Including VAT"; "Prices Including VAT")
                {
                }
                field("Invoice Disc. Code"; "Invoice Disc. Code")
                {
                }
                field("Language Code"; "Language Code")
                {
                }
                field("Purchaser Code"; "Purchaser Code")
                {
                }
                field("Order Class"; "Order Class")
                {
                }
                field(Comment; Comment)
                {
                }
                field("No. Printed"; "No. Printed")
                {
                }
                field("On Hold"; "On Hold")
                {
                }
                field("Applies-to Doc. Type"; "Applies-to Doc. Type")
                {
                }
                field("Applies-to Doc. No."; "Applies-to Doc. No.")
                {
                }
                field("Bal. Account No."; "Bal. Account No.")
                {
                }
                field("Recalculate Invoice Disc."; "Recalculate Invoice Disc.")
                {
                }
                field(Receive; Receive)
                {
                }
                field(Invoice; Invoice)
                {
                }
                field("Print Posted Documents"; "Print Posted Documents")
                {
                }
                field("Amount Including VAT"; "Amount Including VAT")
                {
                }
                field("Receiving No."; "Receiving No.")
                {
                }
                field("Posting No."; "Posting No.")
                {
                }
                field("Last Receiving No."; "Last Receiving No.")
                {
                }
                field("Last Posting No."; "Last Posting No.")
                {
                }
                field("Vendor Order No."; "Vendor Order No.")
                {
                }
                field("Vendor Shipment No."; "Vendor Shipment No.")
                {
                }
                field("Vendor Invoice No."; "Vendor Invoice No.")
                {
                }
                field("Vendor Cr. Memo No."; "Vendor Cr. Memo No.")
                {
                }
                field("VAT Registration No."; "VAT Registration No.")
                {
                }
                field("Sell-to Customer No."; "Sell-to Customer No.")
                {
                }
                field("Reason Code"; "Reason Code")
                {
                }
                field("Gen. Bus. Posting Group"; "Gen. Bus. Posting Group")
                {
                }
                field("Transaction Type"; "Transaction Type")
                {
                }
                field("Transport Method"; "Transport Method")
                {
                }
                field("VAT Country/Region Code"; "VAT Country/Region Code")
                {
                }
                field("Buy-from Vendor Name"; "Buy-from Vendor Name")
                {
                }
                field("Buy-from Vendor Name 2"; "Buy-from Vendor Name 2")
                {
                }
                field("Buy-from Address"; "Buy-from Address")
                {
                }
                field("Buy-from Address 2"; "Buy-from Address 2")
                {
                }
                field("Buy-from City"; "Buy-from City")
                {
                }
                field("Buy-from Contact"; "Buy-from Contact")
                {
                }
                field("Pay-to Post Code"; "Pay-to Post Code")
                {
                }
                field("Pay-to County"; "Pay-to County")
                {
                }
                field("Pay-to Country/Region Code"; "Pay-to Country/Region Code")
                {
                }
                field("Buy-from Post Code"; "Buy-from Post Code")
                {
                }
                field("Buy-from County"; "Buy-from County")
                {
                }
                field("Buy-from Country/Region Code"; "Buy-from Country/Region Code")
                {
                }
                field("Ship-to Post Code"; "Ship-to Post Code")
                {
                }
                field("Ship-to County"; "Ship-to County")
                {
                }
                field("Ship-to Country/Region Code"; "Ship-to Country/Region Code")
                {
                }
                field("Bal. Account Type"; "Bal. Account Type")
                {
                }
                field("Order Address Code"; "Order Address Code")
                {
                }
                field("Entry Point"; "Entry Point")
                {
                }
                field(Correction; Correction)
                {
                }
                field("Document Date"; "Document Date")
                {
                }
                field("Area"; Area)
                {
                }
                field("Transaction Specification"; "Transaction Specification")
                {
                }
                field("Payment Method Code"; "Payment Method Code")
                {
                }
                field("No. Series"; "No. Series")
                {
                }
                field("Posting No. Series"; "Posting No. Series")
                {
                }
                field("Receiving No. Series"; "Receiving No. Series")
                {
                }
                field("Tax Area Code"; "Tax Area Code")
                {
                }
                field("Tax Liable"; "Tax Liable")
                {
                }
                field("VAT Bus. Posting Group"; "VAT Bus. Posting Group")
                {
                }
                field("Applies-to ID"; "Applies-to ID")
                {
                }
                field("VAT Base Discount %"; "VAT Base Discount %")
                {
                }
                field(Status; Status)
                {
                }
                field("Invoice Discount Calculation"; "Invoice Discount Calculation")
                {
                }
                field("Invoice Discount Value"; "Invoice Discount Value")
                {
                }
                field("Send IC Document"; "Send IC Document")
                {
                }
                field("IC Status"; "IC Status")
                {
                }
                field("Buy-from IC Partner Code"; "Buy-from IC Partner Code")
                {
                }
                field("Pay-to IC Partner Code"; "Pay-to IC Partner Code")
                {
                }
                field("IC Direction"; "IC Direction")
                {
                }
                field("Prepayment No."; "Prepayment No.")
                {
                }
                field("Last Prepayment No."; "Last Prepayment No.")
                {
                }
                field("Prepmt. Cr. Memo No."; "Prepmt. Cr. Memo No.")
                {
                }
                field("Last Prepmt. Cr. Memo No."; "Last Prepmt. Cr. Memo No.")
                {
                }
                field("Prepayment %"; "Prepayment %")
                {
                }
                field("Prepayment No. Series"; "Prepayment No. Series")
                {
                }
                field("Compress Prepayment"; "Compress Prepayment")
                {
                }
                field("Prepayment Due Date"; "Prepayment Due Date")
                {
                }
                field("Prepmt. Cr. Memo No. Series"; "Prepmt. Cr. Memo No. Series")
                {
                }
                field("Prepmt. Posting Description"; "Prepmt. Posting Description")
                {
                }
                field("Prepmt. Pmt. Discount Date"; "Prepmt. Pmt. Discount Date")
                {
                }
                field("Prepmt. Payment Terms Code"; "Prepmt. Payment Terms Code")
                {
                }
                field("Prepmt. Payment Discount %"; "Prepmt. Payment Discount %")
                {
                }
                field("Quote No."; "Quote No.")
                {
                }
                field("Job Queue Status"; "Job Queue Status")
                {
                }
                field("Job Queue Entry ID"; "Job Queue Entry ID")
                {
                }
                field("Incoming Document Entry No."; "Incoming Document Entry No.")
                {
                }
                field("Creditor No."; "Creditor No.")
                {
                }
                field("Payment Reference"; "Payment Reference")
                {
                }
                field("Dimension Set ID"; "Dimension Set ID")
                {
                }
                field("Invoice Discount Amount"; "Invoice Discount Amount")
                {
                }
                field("No. of Archived Versions"; "No. of Archived Versions")
                {
                }
                field("Doc. No. Occurrence"; "Doc. No. Occurrence")
                {
                }
                field("Campaign No."; "Campaign No.")
                {
                }
                field("Buy-from Contact No."; "Buy-from Contact No.")
                {
                }
                field("Pay-to Contact No."; "Pay-to Contact No.")
                {
                }
                field("Responsibility Center"; "Responsibility Center")
                {
                }
                field("Completely Received"; "Completely Received")
                {
                }
                field("Posting from Whse. Ref."; "Posting from Whse. Ref.")
                {
                }
                field("Location Filter"; "Location Filter")
                {
                }
                field("Requested Receipt Date"; "Requested Receipt Date")
                {
                }
                field("Promised Receipt Date"; "Promised Receipt Date")
                {
                }
                field("Lead Time Calculation"; "Lead Time Calculation")
                {
                }
                field("Inbound Whse. Handling Time"; "Inbound Whse. Handling Time")
                {
                }
                field("Date Filter"; "Date Filter")
                {
                }
                field("Vendor Authorization No."; "Vendor Authorization No.")
                {
                }
                field("Return Shipment No."; "Return Shipment No.")
                {
                }
                field("Return Shipment No. Series"; "Return Shipment No. Series")
                {
                }
                field(Ship; Ship)
                {
                }
                field("Last Return Shipment No."; "Last Return Shipment No.")
                {
                }
                field("Assigned User ID"; "Assigned User ID")
                {
                }
                field("Pending Approvals"; "Pending Approvals")
                {
                }
                field("Landed Cost Factor"; "Landed Cost Factor")
                {
                }
                field(Overhead; Overhead)
                {
                }
                field("Total Amount Item (LCY)"; "Total Amount Item (LCY)")
                {
                }
                field("Vendor Freight"; "Vendor Freight")
                {
                }
                field("Total Amount account"; "Total Amount account")
                {
                }
                field("Total Amt. Item to Rec. (LCY)"; "Total Amt. Item to Rec. (LCY)")
                {
                }
                field("Waybill No."; "Waybill No.")
                {
                }
                field("Form M No."; "Form M No.")
                {
                }
                field("LC No."; "LC No.")
                {
                }
                field("LC Opened On"; "LC Opened On")
                {
                }
                field("Vessel Name"; "Vessel Name")
                {
                }
                field("Container No."; "Container No.")
                {
                }
                field("Totat Freight"; "Totat Freight")
                {
                }
                field("Total Ancillary Charges"; "Total Ancillary Charges")
                {
                }
                field("Clearing(LCY)"; "Clearing(LCY)")
                {
                }
                field("Interest Expense(LCY)"; "Interest Expense(LCY)")
                {
                }
                field("Shipment Status"; "Shipment Status")
                {
                }
                field(Importer; Importer)
                {
                }
                field("Total Freight (LCY)"; "Total Freight (LCY)")
                {
                }
                field("Total Ancillary Charges(LCY)"; "Total Ancillary Charges(LCY)")
                {
                }
                field(Validity; Validity)
                {
                }
                field("Freight(LCY)LT"; "Freight(LCY)LT")
                {
                }
                field("Ancillary(LCY)LT"; "Ancillary(LCY)LT")
                {
                }
                field("Duty(LCY)LT"; "Duty(LCY)LT")
                {
                }
                field("Insurance(LCY)LT"; "Insurance(LCY)LT")
                {
                }
                field("Surcharge Duty(LCY)LT"; "Surcharge Duty(LCY)LT")
                {
                }
                field("Ecowas Duty(LCY)LT"; "Ecowas Duty(LCY)LT")
                {
                }
                field("CISS(LCYLT"; "CISS(LCYLT")
                {
                }
                field("Vat (LCY)LT"; "Vat (LCY)LT")
                {
                }
                field("Clearing(LCY)LT"; "Clearing(LCY)LT")
                {
                }
                field("Interest(LCY)LT"; "Interest(LCY)LT")
                {
                }
                field("Freight(LCY)LTS"; "Freight(LCY)LTS")
                {
                }
                field("Ancillary(LCY)LTS"; "Ancillary(LCY)LTS")
                {
                }
                field("Duty(LCY)LTS"; "Duty(LCY)LTS")
                {
                }
                field("Insurance(LCY)LTS"; "Insurance(LCY)LTS")
                {
                }
                field("Surcharge Duty(LCY)LTS"; "Surcharge Duty(LCY)LTS")
                {
                }
                field("Ecowas Duty(LCY)LTS"; "Ecowas Duty(LCY)LTS")
                {
                }
                field("CISS(LCYLTS"; "CISS(LCYLTS")
                {
                }
                field("Vat (LCY)LTS"; "Vat (LCY)LTS")
                {
                }
                field("Clearing(LCY)LTS"; "Clearing(LCY)LTS")
                {
                }
                field("Interest(LCY)LTS"; "Interest(LCY)LTS")
                {
                }
                field("Original Purc. Order No."; "Original Purc. Order No.")
                {
                }
                field("Total Quantity Received"; "Total Quantity Received")
                {
                }
                field("Line Amount"; "Line Amount")
                {
                }
                field("Form M Submitted No.r"; "Form M Submitted No.r")
                {
                }
                field("Transaction Bank"; "Transaction Bank")
                {
                }
                field("Form M Submitted Date"; "Form M Submitted Date")
                {
                }
                field("Form M Approval No."; "Form M Approval No.")
                {
                }
                field("Form M Approval Date"; "Form M Approval Date")
                {
                }
                field("Form M Expiry Date"; "Form M Expiry Date")
                {
                }
                field("Inspection Agent"; "Inspection Agent")
                {
                }
                field("Insurance Co."; "Insurance Co.")
                {
                }
                field("Nature of Cover"; "Nature of Cover")
                {
                }
                field("Insurance Policy No."; "Insurance Policy No.")
                {
                }
                field("Valid up to"; "Valid up to")
                {
                }
                field("Inspection No."; "Inspection No.")
                {
                }
                field("Vendor Notified Date"; "Vendor Notified Date")
                {
                }
                field("Inspection Date"; "Inspection Date")
                {
                }
                field("Expected Departure"; "Expected Departure")
                {
                }
                field("Actual Sailing of Vessel"; "Actual Sailing of Vessel")
                {
                }
                field("Expected Date of Arrival"; "Expected Date of Arrival")
                {
                }
                field("Actual Date of Arrival"; "Actual Date of Arrival")
                {
                }
                field("Actual Value"; "Actual Value")
                {
                }
                field("Reason Code Filter"; "Reason Code Filter")
                {
                }
                field("Purchase Order Req. No"; "Purchase Order Req. No")
                {
                }
                field("Created By"; "Created By")
                {
                }
                field("Payment Status"; "Payment Status")
                {
                }
                field(Description; Description)
                {
                }
                field("Approved By"; "Approved By")
                {
                }
                field("Latest Shipment Date"; "Latest Shipment Date")
                {
                }
            }
        }
        area(factboxes)
        {
            part(IncomingDocAttachFactBox; "Incoming Doc. Attach. FactBox")
            {
                ShowFilter = false;
            }
            part(Control221; "Vendor Details FactBox")
            {
                SubPageLink = "No." = FIELD ("Buy-from Vendor No."),
                              "Date Filter" = FIELD ("Date Filter");
                Visible = true;
            }
            systempart(Control220; Links)
            {
                Visible = false;
            }
            systempart(Control219; Notes)
            {
                Visible = true;
            }
        }
    }

    actions
    {
    }
}

