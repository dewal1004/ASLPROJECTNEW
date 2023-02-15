page 50095 "Foreign Purchase Order List"
{
    CardPageID = "Purchase Order Foreign";
    Editable = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = all;

    SourceTable = "Purchase Header";
    SourceTableView = WHERE("Document Type" = CONST(Order),
                            "Order Type" = FILTER(Foreign));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document Type"; "Document Type")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Vendor No."; "Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Vendor No."; "Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; "Location Code")
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field("Pay-to Name"; "Pay-to Name")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Name 2"; "Pay-to Name 2")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Address"; "Pay-to Address")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Address 2"; "Pay-to Address 2")
                {
                    ApplicationArea = All;
                }
                field("Pay-to City"; "Pay-to City")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Contact"; "Pay-to Contact")
                {
                    ApplicationArea = All;
                }
                field("Your Reference"; "Your Reference")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Code"; "Ship-to Code")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Name"; "Ship-to Name")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Name 2"; "Ship-to Name 2")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Address"; "Ship-to Address")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Address 2"; "Ship-to Address 2")
                {
                    ApplicationArea = All;
                }
                field("Ship-to City"; "Ship-to City")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Contact"; "Ship-to Contact")
                {
                    ApplicationArea = All;
                }
                field("Order Date"; "Order Date")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Expected Receipt Date"; "Expected Receipt Date")
                {
                    ApplicationArea = All;
                }
                field("Posting Description"; "Posting Description")
                {
                    ApplicationArea = All;
                }
                field("Payment Terms Code"; "Payment Terms Code")
                {
                    ApplicationArea = All;
                }
                field("Due Date"; "Due Date")
                {
                    ApplicationArea = All;
                }
                field("Payment Discount %"; "Payment Discount %")
                {
                    ApplicationArea = All;
                }
                field("Pmt. Discount Date"; "Pmt. Discount Date")
                {
                    ApplicationArea = All;
                }
                field("Shipment Method Code"; "Shipment Method Code")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Vendor Posting Group"; "Vendor Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; "Currency Code")
                {
                    ApplicationArea = All;
                }
                field("Currency Factor"; "Currency Factor")
                {
                    ApplicationArea = All;
                }
                field("Prices Including VAT"; "Prices Including VAT")
                {
                    ApplicationArea = All;
                }
                field("Invoice Disc. Code"; "Invoice Disc. Code")
                {
                    ApplicationArea = All;
                }
                field("Language Code"; "Language Code")
                {
                    ApplicationArea = All;
                }
                field("Purchaser Code"; "Purchaser Code")
                {
                    ApplicationArea = All;
                }
                field("Order Class"; "Order Class")
                {
                    ApplicationArea = All;
                }
                field(Comment; Comment)
                {
                    ApplicationArea = All;
                }
                field("No. Printed"; "No. Printed")
                {
                    ApplicationArea = All;
                }
                field("On Hold"; "On Hold")
                {
                    ApplicationArea = All;
                }
                field("Applies-to Doc. Type"; "Applies-to Doc. Type")
                {
                    ApplicationArea = All;
                }
                field("Applies-to Doc. No."; "Applies-to Doc. No.")
                {
                    ApplicationArea = All;
                }
                field("Bal. Account No."; "Bal. Account No.")
                {
                    ApplicationArea = All;
                }
                field("Recalculate Invoice Disc."; "Recalculate Invoice Disc.")
                {
                    ApplicationArea = All;
                }
                field(Receive; Receive)
                {
                    ApplicationArea = All;
                }
                field(Invoice; Invoice)
                {
                    ApplicationArea = All;
                }
                field("Print Posted Documents"; "Print Posted Documents")
                {
                    ApplicationArea = All;
                }
                field("Amount Including VAT"; "Amount Including VAT")
                {
                    ApplicationArea = All;
                }
                field("Receiving No."; "Receiving No.")
                {
                    ApplicationArea = All;
                }
                field("Posting No."; "Posting No.")
                {
                    ApplicationArea = All;
                }
                field("Last Receiving No."; "Last Receiving No.")
                {
                    ApplicationArea = All;
                }
                field("Last Posting No."; "Last Posting No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Order No."; "Vendor Order No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Shipment No."; "Vendor Shipment No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Invoice No."; "Vendor Invoice No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Cr. Memo No."; "Vendor Cr. Memo No.")
                {
                    ApplicationArea = All;
                }
                field("VAT Registration No."; "VAT Registration No.")
                {
                    ApplicationArea = All;
                }
                field("Sell-to Customer No."; "Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Reason Code"; "Reason Code")
                {
                    ApplicationArea = All;
                }
                field("Gen. Bus. Posting Group"; "Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Transaction Type"; "Transaction Type")
                {
                    ApplicationArea = All;
                }
                field("Transport Method"; "Transport Method")
                {
                    ApplicationArea = All;
                }
                field("VAT Country/Region Code"; "VAT Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Vendor Name"; "Buy-from Vendor Name")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Vendor Name 2"; "Buy-from Vendor Name 2")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Address"; "Buy-from Address")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Address 2"; "Buy-from Address 2")
                {
                    ApplicationArea = All;
                }
                field("Buy-from City"; "Buy-from City")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Contact"; "Buy-from Contact")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Post Code"; "Pay-to Post Code")
                {
                    ApplicationArea = All;
                }
                field("Pay-to County"; "Pay-to County")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Country/Region Code"; "Pay-to Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Post Code"; "Buy-from Post Code")
                {
                    ApplicationArea = All;
                }
                field("Buy-from County"; "Buy-from County")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Country/Region Code"; "Buy-from Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Post Code"; "Ship-to Post Code")
                {
                    ApplicationArea = All;
                }
                field("Ship-to County"; "Ship-to County")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Country/Region Code"; "Ship-to Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Bal. Account Type"; "Bal. Account Type")
                {
                    ApplicationArea = All;
                }
                field("Order Address Code"; "Order Address Code")
                {
                    ApplicationArea = All;
                }
                field("Entry Point"; "Entry Point")
                {
                    ApplicationArea = All;
                }
                field(Correction; Correction)
                {
                    ApplicationArea = All;
                }
                field("Document Date"; "Document Date")
                {
                    ApplicationArea = All;
                }
                field("Area"; Area)
                {
                    ApplicationArea = All;
                }
                field("Transaction Specification"; "Transaction Specification")
                {
                    ApplicationArea = All;
                }
                field("Payment Method Code"; "Payment Method Code")
                {
                    ApplicationArea = All;
                }
                field("No. Series"; "No. Series")
                {
                    ApplicationArea = All;
                }
                field("Posting No. Series"; "Posting No. Series")
                {
                    ApplicationArea = All;
                }
                field("Receiving No. Series"; "Receiving No. Series")
                {
                    ApplicationArea = All;
                }
                field("Tax Area Code"; "Tax Area Code")
                {
                    ApplicationArea = All;
                }
                field("Tax Liable"; "Tax Liable")
                {
                    ApplicationArea = All;
                }
                field("VAT Bus. Posting Group"; "VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Applies-to ID"; "Applies-to ID")
                {
                    ApplicationArea = All;
                }
                field("VAT Base Discount %"; "VAT Base Discount %")
                {
                    ApplicationArea = All;
                }
                field(Status; Status)
                {
                    ApplicationArea = All;
                }
                field("Invoice Discount Calculation"; "Invoice Discount Calculation")
                {
                    ApplicationArea = All;
                }
                field("Invoice Discount Value"; "Invoice Discount Value")
                {
                    ApplicationArea = All;
                }
                field("Send IC Document"; "Send IC Document")
                {
                    ApplicationArea = All;
                }
                field("IC Status"; "IC Status")
                {
                    ApplicationArea = All;
                }
                field("Buy-from IC Partner Code"; "Buy-from IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field("Pay-to IC Partner Code"; "Pay-to IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field("IC Direction"; "IC Direction")
                {
                    ApplicationArea = All;
                }
                field("Prepayment No."; "Prepayment No.")
                {
                    ApplicationArea = All;
                }
                field("Last Prepayment No."; "Last Prepayment No.")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Cr. Memo No."; "Prepmt. Cr. Memo No.")
                {
                    ApplicationArea = All;
                }
                field("Last Prepmt. Cr. Memo No."; "Last Prepmt. Cr. Memo No.")
                {
                    ApplicationArea = All;
                }
                field("Prepayment %"; "Prepayment %")
                {
                    ApplicationArea = All;
                }
                field("Prepayment No. Series"; "Prepayment No. Series")
                {
                    ApplicationArea = All;
                }
                field("Compress Prepayment"; "Compress Prepayment")
                {
                    ApplicationArea = All;
                }
                field("Prepayment Due Date"; "Prepayment Due Date")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Cr. Memo No. Series"; "Prepmt. Cr. Memo No. Series")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Posting Description"; "Prepmt. Posting Description")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Pmt. Discount Date"; "Prepmt. Pmt. Discount Date")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Payment Terms Code"; "Prepmt. Payment Terms Code")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Payment Discount %"; "Prepmt. Payment Discount %")
                {
                    ApplicationArea = All;
                }
                field("Quote No."; "Quote No.")
                {
                    ApplicationArea = All;
                }
                field("Job Queue Status"; "Job Queue Status")
                {
                    ApplicationArea = All;
                }
                field("Job Queue Entry ID"; "Job Queue Entry ID")
                {
                    ApplicationArea = All;
                }
                field("Incoming Document Entry No."; "Incoming Document Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Creditor No."; "Creditor No.")
                {
                    ApplicationArea = All;
                }
                field("Payment Reference"; "Payment Reference")
                {
                    ApplicationArea = All;
                }
                field("Dimension Set ID"; "Dimension Set ID")
                {
                    ApplicationArea = All;
                }
                field("Invoice Discount Amount"; "Invoice Discount Amount")
                {
                    ApplicationArea = All;
                }
                field("No. of Archived Versions"; "No. of Archived Versions")
                {
                    ApplicationArea = All;
                }
                field("Doc. No. Occurrence"; "Doc. No. Occurrence")
                {
                    ApplicationArea = All;
                }
                field("Campaign No."; "Campaign No.")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Contact No."; "Buy-from Contact No.")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Contact No."; "Pay-to Contact No.")
                {
                    ApplicationArea = All;
                }
                field("Responsibility Center"; "Responsibility Center")
                {
                    ApplicationArea = All;
                }
                field("Completely Received"; "Completely Received")
                {
                    ApplicationArea = All;
                }
                field("Posting from Whse. Ref."; "Posting from Whse. Ref.")
                {
                    ApplicationArea = All;
                }
                field("Location Filter"; "Location Filter")
                {
                    ApplicationArea = All;
                }
                field("Requested Receipt Date"; "Requested Receipt Date")
                {
                    ApplicationArea = All;
                }
                field("Promised Receipt Date"; "Promised Receipt Date")
                {
                    ApplicationArea = All;
                }
                field("Lead Time Calculation"; "Lead Time Calculation")
                {
                    ApplicationArea = All;
                }
                field("Inbound Whse. Handling Time"; "Inbound Whse. Handling Time")
                {
                    ApplicationArea = All;
                }
                field("Date Filter"; "Date Filter")
                {
                    ApplicationArea = All;
                }
                field("Vendor Authorization No."; "Vendor Authorization No.")
                {
                    ApplicationArea = All;
                }
                field("Return Shipment No."; "Return Shipment No.")
                {
                    ApplicationArea = All;
                }
                field("Return Shipment No. Series"; "Return Shipment No. Series")
                {
                    ApplicationArea = All;
                }
                field(Ship; Ship)
                {
                    ApplicationArea = All;
                }
                field("Last Return Shipment No."; "Last Return Shipment No.")
                {
                    ApplicationArea = All;
                }
                field("Assigned User ID"; "Assigned User ID")
                {
                    ApplicationArea = All;
                }
                field("Pending Approvals"; "Pending Approvals")
                {
                    ApplicationArea = All;
                }
                field("Landed Cost Factor"; "Landed Cost Factor")
                {
                    ApplicationArea = All;
                }
                field(Overhead; Overhead)
                {
                    ApplicationArea = All;
                }
                field("Total Amount Item (LCY)"; "Total Amount Item (LCY)")
                {
                    ApplicationArea = All;
                }
                field("Vendor Freight"; "Vendor Freight")
                {
                    ApplicationArea = All;
                }
                field("Total Amount account"; "Total Amount account")
                {
                    ApplicationArea = All;
                }
                field("Total Amt. Item to Rec. (LCY)"; "Total Amt. Item to Rec. (LCY)")
                {
                    ApplicationArea = All;
                }
                field("Waybill No."; "Waybill No.")
                {
                    ApplicationArea = All;
                }
                field("Form M No."; "Form M No.")
                {
                    ApplicationArea = All;
                }
                field("LC No."; "LC No.")
                {
                    ApplicationArea = All;
                }
                field("LC Opened On"; "LC Opened On")
                {
                    ApplicationArea = All;
                }
                field("Vessel Name"; "Vessel Name")
                {
                    ApplicationArea = All;
                }
                field("Container No."; "Container No.")
                {
                    ApplicationArea = All;
                }
                field("Totat Freight"; "Totat Freight")
                {
                    ApplicationArea = All;
                }
                field("Total Ancillary Charges"; "Total Ancillary Charges")
                {
                    ApplicationArea = All;
                }
                field("Clearing(LCY)"; "Clearing(LCY)")
                {
                    ApplicationArea = All;
                }
                field("Interest Expense(LCY)"; "Interest Expense(LCY)")
                {
                    ApplicationArea = All;
                }
                field("Shipment Status"; "Shipment Status")
                {
                    ApplicationArea = All;
                }
                field(Importer; Importer)
                {
                    ApplicationArea = All;
                }
                field("Total Freight (LCY)"; "Total Freight (LCY)")
                {
                    ApplicationArea = All;
                }
                field("Total Ancillary Charges(LCY)"; "Total Ancillary Charges(LCY)")
                {
                    ApplicationArea = All;
                }
                field(Validity; Validity)
                {
                    ApplicationArea = All;
                }
                field("Freight(LCY)LT"; "Freight(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Ancillary(LCY)LT"; "Ancillary(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Duty(LCY)LT"; "Duty(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Insurance(LCY)LT"; "Insurance(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Surcharge Duty(LCY)LT"; "Surcharge Duty(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Ecowas Duty(LCY)LT"; "Ecowas Duty(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("CISS(LCYLT"; "CISS(LCYLT")
                {
                    ApplicationArea = All;
                }
                field("Vat (LCY)LT"; "Vat (LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Clearing(LCY)LT"; "Clearing(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Interest(LCY)LT"; "Interest(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Freight(LCY)LTS"; "Freight(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Ancillary(LCY)LTS"; "Ancillary(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Duty(LCY)LTS"; "Duty(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Insurance(LCY)LTS"; "Insurance(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Surcharge Duty(LCY)LTS"; "Surcharge Duty(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Ecowas Duty(LCY)LTS"; "Ecowas Duty(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("CISS(LCYLTS"; "CISS(LCYLTS")
                {
                    ApplicationArea = All;
                }
                field("Vat (LCY)LTS"; "Vat (LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Clearing(LCY)LTS"; "Clearing(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Interest(LCY)LTS"; "Interest(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Original Purc. Order No."; "Original Purc. Order No.")
                {
                    ApplicationArea = All;
                }
                field("Total Quantity Received"; "Total Quantity Received")
                {
                    ApplicationArea = All;
                }
                field("Line Amount"; "Line Amount")
                {
                    ApplicationArea = All;
                }
                field("Form M Submitted No.r"; "Form M Submitted No.r")
                {
                    ApplicationArea = All;
                }
                field("Transaction Bank"; "Transaction Bank")
                {
                    ApplicationArea = All;
                }
                field("Form M Submitted Date"; "Form M Submitted Date")
                {
                    ApplicationArea = All;
                }
                field("Form M Approval No."; "Form M Approval No.")
                {
                    ApplicationArea = All;
                }
                field("Form M Approval Date"; "Form M Approval Date")
                {
                    ApplicationArea = All;
                }
                field("Form M Expiry Date"; "Form M Expiry Date")
                {
                    ApplicationArea = All;
                }
                field("Inspection Agent"; "Inspection Agent")
                {
                    ApplicationArea = All;
                }
                field("Insurance Co."; "Insurance Co.")
                {
                    ApplicationArea = All;
                }
                field("Nature of Cover"; "Nature of Cover")
                {
                    ApplicationArea = All;
                }
                field("Insurance Policy No."; "Insurance Policy No.")
                {
                    ApplicationArea = All;
                }
                field("Valid up to"; "Valid up to")
                {
                    ApplicationArea = All;
                }
                field("Inspection No."; "Inspection No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Notified Date"; "Vendor Notified Date")
                {
                    ApplicationArea = All;
                }
                field("Inspection Date"; "Inspection Date")
                {
                    ApplicationArea = All;
                }
                field("Expected Departure"; "Expected Departure")
                {
                    ApplicationArea = All;
                }
                field("Actual Sailing of Vessel"; "Actual Sailing of Vessel")
                {
                    ApplicationArea = All;
                }
                field("Expected Date of Arrival"; "Expected Date of Arrival")
                {
                    ApplicationArea = All;
                }
                field("Actual Date of Arrival"; "Actual Date of Arrival")
                {
                    ApplicationArea = All;
                }
                field("Actual Value"; "Actual Value")
                {
                    ApplicationArea = All;
                }
                field("Reason Code Filter"; "Reason Code Filter")
                {
                    ApplicationArea = All;
                }
                field("Purchase Order Req. No"; "Purchase Order Req. No")
                {
                    ApplicationArea = All;
                }
                field("Created By"; "Created By")
                {
                    ApplicationArea = All;
                }
                field("Payment Status"; "Payment Status")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Approved By"; "Approved By")
                {
                    ApplicationArea = All;
                }
                field("Latest Shipment Date"; "Latest Shipment Date")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            part(IncomingDocAttachFactBox; "Incoming Doc. Attach. FactBox")
            {
                ShowFilter = false;
                ApplicationArea = All;
            }
            part(Control221; "Vendor Details FactBox")
            {
                SubPageLink = "No." = FIELD("Buy-from Vendor No."),
                              "Date Filter" = FIELD("Date Filter");
                Visible = true;
                ApplicationArea = All;
            }
            systempart(Control220; Links)
            {
                Visible = false;
                ApplicationArea = All;
            }
            systempart(Control219; Notes)
            {
                Visible = true;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}

