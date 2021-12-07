pageextension 50310 pageextension50310 extends "Purch. Invoice Subform"
{
    layout
    {
        modify(FilteredTypeField)
        {

            //Unsupported feature: Property Insertion (AutoFormatType) on "FilteredTypeField(Control 7)".


            //Unsupported feature: Property Insertion (AutoFormatExpr) on "FilteredTypeField(Control 7)".

            CaptionClass = DocumentTotals.GetTotalInclVATCaption(PurchHeader."Currency Code");
            StyleExpr = TotalAmountStyle;
        }
        modify("Return Reason Code")
        {

            //Unsupported feature: Property Modification (Name) on ""Return Reason Code"(Control 78)".


            //Unsupported feature: Property Modification (SourceExpr) on ""Return Reason Code"(Control 78)".


            //Unsupported feature: Property Modification (ImplicitType) on ""Return Reason Code"(Control 78)".

            Caption = 'Inventory Posting Group';
        }
        modify("Document No.")
        {

            //Unsupported feature: Property Modification (Name) on ""Document No."(Control 21)".


            //Unsupported feature: Property Modification (SourceExpr) on ""Document No."(Control 21)".

            Visible = false;

            //Unsupported feature: Property Modification (ImplicitType) on ""Document No."(Control 21)".

        }
        modify("Line No.")
        {

            //Unsupported feature: Property Modification (Name) on ""Line No."(Control 23)".


            //Unsupported feature: Property Modification (SourceExpr) on ""Line No."(Control 23)".

            Visible = false;

            //Unsupported feature: Property Modification (ImplicitType) on ""Line No."(Control 23)".

        }
        modify(Control33)
        {

            //Unsupported feature: Property Modification (ControlType) on "Control33(Control 33)".


            //Unsupported feature: Property Modification (Name) on "Control33(Control 33)".

            Caption = 'Invoice Discount Amount';

            //Unsupported feature: Property Insertion (SourceExpr) on "Control33(Control 33)".


            //Unsupported feature: Property Insertion (AutoFormatType) on "Control33(Control 33)".


            //Unsupported feature: Property Insertion (AutoFormatExpr) on "Control33(Control 33)".

            //     Editable = InvDiscAmountEditable;  //Refactor
            //     Style = Subordinate;
            //     StyleExpr = RefreshMessageEnabled;
            // }

            //Unsupported feature: Property Modification (Level) on "AmountBeforeDiscount(Control 25)".


            //Unsupported feature: Property Modification (Level) on "InvoiceDiscountAmount(Control 31)".


            //Unsupported feature: Property Modification (Level) on ""Invoice Disc. Pct."(Control 29)".


            //Unsupported feature: Property Modification (Name) on ""Invoice Disc. Pct."(Control 29)".
        }

        modify(Control15)
        {

            //Unsupported feature: Property Modification (ControlType) on "Control15(Control 15)".


            //Unsupported feature: Property Modification (Name) on "Control15(Control 15)".

            Caption = 'Invoice Discount %';

            //Unsupported feature: Property Insertion (DecimalPlaces) on "Control15(Control 15)".


            //Unsupported feature: Property Insertion (SourceExpr) on "Control15(Control 15)".

            Visible = true;
            Editable = false;
            // Style = Subordinate;
            // StyleExpr = RefreshMessageEnabled;
        }
        modify("Total Amount Excl. VAT")
        {

            //Unsupported feature: Property Modification (Level) on ""Total Amount Excl. VAT"(Control 13)".


            //Unsupported feature: Property Modification (Name) on ""Total Amount Excl. VAT"(Control 13)".

            Caption = 'Total VAT';

            //Unsupported feature: Property Modification (SourceExpr) on ""Total Amount Excl. VAT"(Control 13)".


            //Unsupported feature: Property Insertion (ImplicitType) on ""Total Amount Excl. VAT"(Control 13)".

        }
        modify("Total VAT Amount")
        {

            //Unsupported feature: Property Modification (Level) on ""Total VAT Amount"(Control 11)".


            //Unsupported feature: Property Modification (Name) on ""Total VAT Amount"(Control 11)".

            Caption = 'Total Amount Excl. VAT';

            //Unsupported feature: Property Modification (SourceExpr) on ""Total VAT Amount"(Control 11)".


            //Unsupported feature: Property Insertion (DrillDown) on ""Total VAT Amount"(Control 11)".

        }
        modify("Total Amount Incl. VAT")
        {

            //Unsupported feature: Property Modification (Level) on ""Total Amount Incl. VAT"(Control 9)".


            //Unsupported feature: Property Modification (Name) on ""Total Amount Incl. VAT"(Control 9)".


            //Unsupported feature: Property Modification (SourceExpr) on ""Total Amount Incl. VAT"(Control 9)".


            //Unsupported feature: Property Insertion (DrillDown) on ""Total Amount Incl. VAT"(Control 9)".

            Enabled = RefreshMessageEnabled;
            ShowCaption = false;

            //Unsupported feature: Property Insertion (ImplicitType) on ""Total Amount Incl. VAT"(Control 9)".

        }

        //Unsupported feature: Property Deletion (Editable) on ""Document No."(Control 21)".


        //Unsupported feature: Property Deletion (Editable) on ""Line No."(Control 23)".

        modify(Control39)
        {
            Visible = false;
        }

        //Unsupported feature: Code Insertion on ""Invoice Discount Amount"(Control 33)".

        //trigger OnAfterValidate()
        //Parameters and return type have not been exported.
        //var
        //PurchaseHeader: Record "Purchase Header";
        //begin
        /*
        PurchaseHeader.Get("Document Type","Document No.");
        PurchCalcDiscByType.ApplyInvDiscBasedOnAmt(TotalPurchaseLine."Inv. Discount Amount",PurchaseHeader);
        CurrPage.Update(false);
        */
        //end;

        //Unsupported feature: Property Deletion (GroupType) on "Control33(Control 33)".


        //Unsupported feature: Property Deletion (ShowCaption) on "Control33(Control 33)".


        //Unsupported feature: Property Deletion (CaptionML) on "InvoiceDiscountAmount(Control 31)".


        //Unsupported feature: Property Deletion (AutoFormatType) on "InvoiceDiscountAmount(Control 31)".


        //Unsupported feature: Property Deletion (Editable) on "InvoiceDiscountAmount(Control 31)".


        //Unsupported feature: Property Deletion (CaptionML) on ""Invoice Disc. Pct."(Control 29)".


        //Unsupported feature: Property Deletion (GroupType) on "Control15(Control 15)".


        //Unsupported feature: Property Deletion (ShowCaption) on "Control15(Control 15)".


        //Unsupported feature: Property Deletion (DrillDown) on ""Total Amount Excl. VAT"(Control 13)".


        //Unsupported feature: Property Deletion (ImplicitType) on ""Total VAT Amount"(Control 11)".



        //Unsupported feature: Code Insertion on "RefreshTotals(Control 9)".

        //trigger OnDrillDown()
        //begin
        /*
        DocumentTotals.PurchaseRedistributeInvoiceDiscountAmounts(Rec,VATAmount,TotalPurchaseLine);
        CurrPage.Update(false);
        */
        //end;

        //Unsupported feature: Property Deletion (CaptionML) on ""Total Amount Incl. VAT"(Control 9)".


        //Unsupported feature: Property Deletion (AutoFormatType) on ""Total Amount Incl. VAT"(Control 9)".

        addfirst(Content)
        {
            group(Control350)
            {
                ShowCaption = false;
            }
        }
        addafter("Line No.")
        {
            field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
            {
            }
        }
        moveafter(InvoiceDiscountAmount; Control33)
        moveafter(FilteredTypeField; "Total Amount Incl. VAT")
        moveafter("Total VAT Amount"; FilteredTypeField)

        // moveafter("Invoice Discount Amount"; Control15)
        // moveafter(Co2ntrol1900000001; InvoiceDiscountAmount)
        // moveafter(InvoiceDiscountPct; "Total VAT Amount")
    }


    var
        TotalAmountStyle: Text;
        RefreshMessageEnabled: Boolean;
        RefreshMessageText: Text;
        TypeChosen: Boolean;
        PurchHeader: Record "Purchase Header";
}

