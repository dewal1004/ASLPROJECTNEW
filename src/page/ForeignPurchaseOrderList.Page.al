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
    Caption = 'Foreign Purchase Order List';
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Vendor No."; Rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Pay-to Name"; Rec."Pay-to Name")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Name 2"; Rec."Pay-to Name 2")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Address"; Rec."Pay-to Address")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Address 2"; Rec."Pay-to Address 2")
                {
                    ApplicationArea = All;
                }
                field("Pay-to City"; Rec."Pay-to City")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Contact"; Rec."Pay-to Contact")
                {
                    ApplicationArea = All;
                }
                field("Your Reference"; Rec."Your Reference")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Name 2"; Rec."Ship-to Name 2")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Address"; Rec."Ship-to Address")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Address 2"; Rec."Ship-to Address 2")
                {
                    ApplicationArea = All;
                }
                field("Ship-to City"; Rec."Ship-to City")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Contact"; Rec."Ship-to Contact")
                {
                    ApplicationArea = All;
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Expected Receipt Date"; Rec."Expected Receipt Date")
                {
                    ApplicationArea = All;
                }
                field("Posting Description"; Rec."Posting Description")
                {
                    ApplicationArea = All;
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field("Payment Discount %"; Rec."Payment Discount %")
                {
                    ApplicationArea = All;
                }
                field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
                {
                    ApplicationArea = All;
                }
                field("Shipment Method Code"; Rec."Shipment Method Code")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Vendor Posting Group"; Rec."Vendor Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                }
                field("Currency Factor"; Rec."Currency Factor")
                {
                    ApplicationArea = All;
                }
                field("Prices Including VAT"; Rec."Prices Including VAT")
                {
                    ApplicationArea = All;
                }
                field("Invoice Disc. Code"; Rec."Invoice Disc. Code")
                {
                    ApplicationArea = All;
                }
                field("Language Code"; Rec."Language Code")
                {
                    ApplicationArea = All;
                }
                field("Purchaser Code"; Rec."Purchaser Code")
                {
                    ApplicationArea = All;
                }
                field("Order Class"; Rec."Order Class")
                {
                    ApplicationArea = All;
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;
                }
                field("No. Printed"; Rec."No. Printed")
                {
                    ApplicationArea = All;
                }
                field("On Hold"; Rec."On Hold")
                {
                    ApplicationArea = All;
                }
                field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
                {
                    ApplicationArea = All;
                }
                field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
                {
                    ApplicationArea = All;
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                    ApplicationArea = All;
                }
                field("Recalculate Invoice Disc."; Rec."Recalculate Invoice Disc.")
                {
                    ApplicationArea = All;
                }
                field(Receive; Rec.Receive)
                {
                    ApplicationArea = All;
                }
                field(Invoice; Rec.Invoice)
                {
                    ApplicationArea = All;
                }
                field("Print Posted Documents"; Rec."Print Posted Documents")
                {
                    ApplicationArea = All;
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    ApplicationArea = All;
                }
                field("Receiving No."; Rec."Receiving No.")
                {
                    ApplicationArea = All;
                }
                field("Posting No."; Rec."Posting No.")
                {
                    ApplicationArea = All;
                }
                field("Last Receiving No."; Rec."Last Receiving No.")
                {
                    ApplicationArea = All;
                }
                field("Last Posting No."; Rec."Last Posting No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Order No."; Rec."Vendor Order No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Shipment No."; Rec."Vendor Shipment No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Invoice No."; Rec."Vendor Invoice No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Cr. Memo No."; Rec."Vendor Cr. Memo No.")
                {
                    ApplicationArea = All;
                }
                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                    ApplicationArea = All;
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                }
                field("Transport Method"; Rec."Transport Method")
                {
                    ApplicationArea = All;
                }
                field("VAT Country/Region Code"; Rec."VAT Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Vendor Name 2"; Rec."Buy-from Vendor Name 2")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Address"; Rec."Buy-from Address")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Address 2"; Rec."Buy-from Address 2")
                {
                    ApplicationArea = All;
                }
                field("Buy-from City"; Rec."Buy-from City")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Contact"; Rec."Buy-from Contact")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Post Code"; Rec."Pay-to Post Code")
                {
                    ApplicationArea = All;
                }
                field("Pay-to County"; Rec."Pay-to County")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Country/Region Code"; Rec."Pay-to Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Post Code"; Rec."Buy-from Post Code")
                {
                    ApplicationArea = All;
                }
                field("Buy-from County"; Rec."Buy-from County")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Country/Region Code"; Rec."Buy-from Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Post Code"; Rec."Ship-to Post Code")
                {
                    ApplicationArea = All;
                }
                field("Ship-to County"; Rec."Ship-to County")
                {
                    ApplicationArea = All;
                }
                field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Bal. Account Type"; Rec."Bal. Account Type")
                {
                    ApplicationArea = All;
                }
                field("Order Address Code"; Rec."Order Address Code")
                {
                    ApplicationArea = All;
                }
                field("Entry Point"; Rec."Entry Point")
                {
                    ApplicationArea = All;
                }
                field(Correction; Rec.Correction)
                {
                    ApplicationArea = All;
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                }
                field("Area"; Rec.Area)
                {
                    ApplicationArea = All;
                }
                field("Transaction Specification"; Rec."Transaction Specification")
                {
                    ApplicationArea = All;
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = All;
                }
                field("Posting No. Series"; Rec."Posting No. Series")
                {
                    ApplicationArea = All;
                }
                field("Receiving No. Series"; Rec."Receiving No. Series")
                {
                    ApplicationArea = All;
                }
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ApplicationArea = All;
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Applies-to ID"; Rec."Applies-to ID")
                {
                    ApplicationArea = All;
                }
                field("VAT Base Discount %"; Rec."VAT Base Discount %")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Invoice Discount Calculation"; Rec."Invoice Discount Calculation")
                {
                    ApplicationArea = All;
                }
                field("Invoice Discount Value"; Rec."Invoice Discount Value")
                {
                    ApplicationArea = All;
                }
                field("Send IC Document"; Rec."Send IC Document")
                {
                    ApplicationArea = All;
                }
                field("IC Status"; Rec."IC Status")
                {
                    ApplicationArea = All;
                }
                field("Buy-from IC Partner Code"; Rec."Buy-from IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field("Pay-to IC Partner Code"; Rec."Pay-to IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field("IC Direction"; Rec."IC Direction")
                {
                    ApplicationArea = All;
                }
                field("Prepayment No."; Rec."Prepayment No.")
                {
                    ApplicationArea = All;
                }
                field("Last Prepayment No."; Rec."Last Prepayment No.")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Cr. Memo No."; Rec."Prepmt. Cr. Memo No.")
                {
                    ApplicationArea = All;
                }
                field("Last Prepmt. Cr. Memo No."; Rec."Last Prepmt. Cr. Memo No.")
                {
                    ApplicationArea = All;
                }
                field("Prepayment %"; Rec."Prepayment %")
                {
                    ApplicationArea = All;
                }
                field("Prepayment No. Series"; Rec."Prepayment No. Series")
                {
                    ApplicationArea = All;
                }
                field("Compress Prepayment"; Rec."Compress Prepayment")
                {
                    ApplicationArea = All;
                }
                field("Prepayment Due Date"; Rec."Prepayment Due Date")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Cr. Memo No. Series"; Rec."Prepmt. Cr. Memo No. Series")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Posting Description"; Rec."Prepmt. Posting Description")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Pmt. Discount Date"; Rec."Prepmt. Pmt. Discount Date")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Payment Terms Code"; Rec."Prepmt. Payment Terms Code")
                {
                    ApplicationArea = All;
                }
                field("Prepmt. Payment Discount %"; Rec."Prepmt. Payment Discount %")
                {
                    ApplicationArea = All;
                }
                field("Quote No."; Rec."Quote No.")
                {
                    ApplicationArea = All;
                }
                field("Job Queue Status"; Rec."Job Queue Status")
                {
                    ApplicationArea = All;
                }
                field("Job Queue Entry ID"; Rec."Job Queue Entry ID")
                {
                    ApplicationArea = All;
                }
                field("Incoming Document Entry No."; Rec."Incoming Document Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Creditor No."; Rec."Creditor No.")
                {
                    ApplicationArea = All;
                }
                field("Payment Reference"; Rec."Payment Reference")
                {
                    ApplicationArea = All;
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                }
                field("Invoice Discount Amount"; Rec."Invoice Discount Amount")
                {
                    ApplicationArea = All;
                }
                field("No. of Archived Versions"; Rec."No. of Archived Versions")
                {
                    ApplicationArea = All;
                }
                field("Doc. No. Occurrence"; Rec."Doc. No. Occurrence")
                {
                    ApplicationArea = All;
                }
                field("Campaign No."; Rec."Campaign No.")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Contact No."; Rec."Buy-from Contact No.")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Contact No."; Rec."Pay-to Contact No.")
                {
                    ApplicationArea = All;
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                }
                field("Completely Received"; Rec."Completely Received")
                {
                    ApplicationArea = All;
                }
                field("Posting from Whse. Ref."; Rec."Posting from Whse. Ref.")
                {
                    ApplicationArea = All;
                }
                field("Location Filter"; Rec."Location Filter")
                {
                    ApplicationArea = All;
                }
                field("Requested Receipt Date"; Rec."Requested Receipt Date")
                {
                    ApplicationArea = All;
                }
                field("Promised Receipt Date"; Rec."Promised Receipt Date")
                {
                    ApplicationArea = All;
                }
                field("Lead Time Calculation"; Rec."Lead Time Calculation")
                {
                    ApplicationArea = All;
                }
                field("Inbound Whse. Handling Time"; Rec."Inbound Whse. Handling Time")
                {
                    ApplicationArea = All;
                }
                field("Date Filter"; Rec."Date Filter")
                {
                    ApplicationArea = All;
                }
                field("Vendor Authorization No."; Rec."Vendor Authorization No.")
                {
                    ApplicationArea = All;
                }
                field("Return Shipment No."; Rec."Return Shipment No.")
                {
                    ApplicationArea = All;
                }
                field("Return Shipment No. Series"; Rec."Return Shipment No. Series")
                {
                    ApplicationArea = All;
                }
                field(Ship; Rec.Ship)
                {
                    ApplicationArea = All;
                }
                field("Last Return Shipment No."; Rec."Last Return Shipment No.")
                {
                    ApplicationArea = All;
                }
                field("Assigned User ID"; Rec."Assigned User ID")
                {
                    ApplicationArea = All;
                }
                field("Pending Approvals"; Rec."Pending Approvals")
                {
                    ApplicationArea = All;
                }
                field("Landed Cost Factor"; Rec."Landed Cost Factor")
                {
                    ApplicationArea = All;
                }
                field(Overhead; Rec.Overhead)
                {
                    ApplicationArea = All;
                }
                field("Total Amount Item (LCY)"; Rec."Total Amount Item (LCY)")
                {
                    ApplicationArea = All;
                }
                field("Vendor Freight"; Rec."Vendor Freight")
                {
                    ApplicationArea = All;
                }
                field("Total Amount account"; Rec."Total Amount account")
                {
                    ApplicationArea = All;
                }
                field("Total Amt. Item to Rec. (LCY)"; Rec."Total Amt. Item to Rec. (LCY)")
                {
                    ApplicationArea = All;
                }
                field("Waybill No."; Rec."Waybill No.")
                {
                    ApplicationArea = All;
                }
                field("Form M No."; Rec."Form M No.")
                {
                    ApplicationArea = All;
                }
                field("LC No."; Rec."LC No.")
                {
                    ApplicationArea = All;
                }
                field("LC Opened On"; Rec."LC Opened On")
                {
                    ApplicationArea = All;
                }
                field("Vessel Name"; Rec."Vessel Name")
                {
                    ApplicationArea = All;
                }
                field("Container No."; Rec."Container No.")
                {
                    ApplicationArea = All;
                }
                field("Totat Freight"; Rec."Totat Freight")
                {
                    ApplicationArea = All;
                }
                field("Total Ancillary Charges"; Rec."Total Ancillary Charges")
                {
                    ApplicationArea = All;
                }
                field("Clearing(LCY)"; Rec."Clearing(LCY)")
                {
                    ApplicationArea = All;
                }
                field("Interest Expense(LCY)"; Rec."Interest Expense(LCY)")
                {
                    ApplicationArea = All;
                }
                field("Shipment Status"; Rec."Shipment Status")
                {
                    ApplicationArea = All;
                }
                field(Importer; Rec.Importer)
                {
                    ApplicationArea = All;
                }
                field("Total Freight (LCY)"; Rec."Total Freight (LCY)")
                {
                    ApplicationArea = All;
                }
                field("Total Ancillary Charges(LCY)"; Rec."Total Ancillary Charges(LCY)")
                {
                    ApplicationArea = All;
                }
                field(Validity; Rec.Validity)
                {
                    ApplicationArea = All;
                }
                field("Freight(LCY)LT"; Rec."Freight(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Ancillary(LCY)LT"; Rec."Ancillary(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Duty(LCY)LT"; Rec."Duty(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Insurance(LCY)LT"; Rec."Insurance(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Surcharge Duty(LCY)LT"; Rec."Surcharge Duty(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Ecowas Duty(LCY)LT"; Rec."Ecowas Duty(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("CISS(LCYLT"; Rec."CISS(LCYLT")
                {
                    ApplicationArea = All;
                }
                field("Vat (LCY)LT"; Rec."Vat (LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Clearing(LCY)LT"; Rec."Clearing(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Interest(LCY)LT"; Rec."Interest(LCY)LT")
                {
                    ApplicationArea = All;
                }
                field("Freight(LCY)LTS"; Rec."Freight(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Ancillary(LCY)LTS"; Rec."Ancillary(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Duty(LCY)LTS"; Rec."Duty(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Insurance(LCY)LTS"; Rec."Insurance(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Surcharge Duty(LCY)LTS"; Rec."Surcharge Duty(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Ecowas Duty(LCY)LTS"; Rec."Ecowas Duty(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("CISS(LCYLTS"; Rec."CISS(LCYLTS")
                {
                    ApplicationArea = All;
                }
                field("Vat (LCY)LTS"; Rec."Vat (LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Clearing(LCY)LTS"; Rec."Clearing(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Interest(LCY)LTS"; Rec."Interest(LCY)LTS")
                {
                    ApplicationArea = All;
                }
                field("Original Purc. Order No."; Rec."Original Purc. Order No.")
                {
                    ApplicationArea = All;
                }
                field("Total Quantity Received"; Rec."Total Quantity Received")
                {
                    ApplicationArea = All;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                }
                field("Form M Submitted No.r"; Rec."Form M Submitted No.r")
                {
                    ApplicationArea = All;
                }
                field("Transaction Bank"; Rec."Transaction Bank")
                {
                    ApplicationArea = All;
                }
                field("Form M Submitted Date"; Rec."Form M Submitted Date")
                {
                    ApplicationArea = All;
                }
                field("Form M Approval No."; Rec."Form M Approval No.")
                {
                    ApplicationArea = All;
                }
                field("Form M Approval Date"; Rec."Form M Approval Date")
                {
                    ApplicationArea = All;
                }
                field("Form M Expiry Date"; Rec."Form M Expiry Date")
                {
                    ApplicationArea = All;
                }
                field("Inspection Agent"; Rec."Inspection Agent")
                {
                    ApplicationArea = All;
                }
                field("Insurance Co."; Rec."Insurance Co.")
                {
                    ApplicationArea = All;
                }
                field("Nature of Cover"; Rec."Nature of Cover")
                {
                    ApplicationArea = All;
                }
                field("Insurance Policy No."; Rec."Insurance Policy No.")
                {
                    ApplicationArea = All;
                }
                field("Valid up to"; Rec."Valid up to")
                {
                    ApplicationArea = All;
                }
                field("Inspection No."; Rec."Inspection No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Notified Date"; Rec."Vendor Notified Date")
                {
                    ApplicationArea = All;
                }
                field("Inspection Date"; Rec."Inspection Date")
                {
                    ApplicationArea = All;
                }
                field("Expected Departure"; Rec."Expected Departure")
                {
                    ApplicationArea = All;
                }
                field("Actual Sailing of Vessel"; Rec."Actual Sailing of Vessel")
                {
                    ApplicationArea = All;
                }
                field("Expected Date of Arrival"; Rec."Expected Date of Arrival")
                {
                    ApplicationArea = All;
                }
                field("Actual Date of Arrival"; Rec."Actual Date of Arrival")
                {
                    ApplicationArea = All;
                }
                field("Actual Value"; Rec."Actual Value")
                {
                    ApplicationArea = All;
                }
                field("Reason Code Filter"; Rec."Reason Code Filter")
                {
                    ApplicationArea = All;
                }
                field("Purchase Order Req. No"; Rec."Purchase Order Req. No")
                {
                    ApplicationArea = All;
                }
                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = All;
                }
                field("Payment Status"; Rec."Payment Status")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Approved By"; Rec."Approved By")
                {
                    ApplicationArea = All;
                }
                field("Latest Shipment Date"; Rec."Latest Shipment Date")
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
