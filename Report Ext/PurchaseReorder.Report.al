report 50038 "Purchase Re-order"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PurchaseReorder.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = WHERE(Blocked = CONST(false));
            RequestFilterFields = "No.", "Inventory Posting Group", "Gen. Prod. Posting Group";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__CRM___STR_; "CRM / STR")
            {
            }
            column(Item__Qty__on_Purch__Order_; "Qty. on Purch. Order")
            {
            }
            column(Item__Reorder_Point_; "Reorder Point")
            {
            }
            column(Item__Reorder_Quantity_; "Reorder Quantity")
            {
            }
            column(ExpArrDate; ExpArrDate)
            {
            }
            column(Item__Monthly_Consumption_; "Monthly Consumption")
            {
            }
            column(Item__Base_Unit_of_Measure_; "Base Unit of Measure")
            {
            }
            column(Suggested_Items_For_Re_order_List_Caption; Suggested_Items_For_Re_order_List_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item__No__Caption; FieldCaption("No."))
            {
            }
            column(Item_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Item__CRM___STR_Caption; FieldCaption("CRM / STR"))
            {
            }
            column(Item__Qty__on_Purch__Order_Caption; FieldCaption("Qty. on Purch. Order"))
            {
            }
            column(Item__Reorder_Point_Caption; FieldCaption("Reorder Point"))
            {
            }
            column(Item__Reorder_Quantity_Caption; FieldCaption("Reorder Quantity"))
            {
            }
            column(Expected_Arrival_DateCaption; Expected_Arrival_DateCaptionLbl)
            {
            }
            column(Item__Monthly_Consumption_Caption; FieldCaption("Monthly Consumption"))
            {
            }
            column(Item__Base_Unit_of_Measure_Caption; FieldCaption("Base Unit of Measure"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*Item.CALCFIELDS(Item."CRM / STR",Item."Qty. on Purch. Order");
                IF (Item."CRM / STR"+Item."Qty. on Purch. Order") >Item."Reorder Point" THEN Item."Reorder Quantity":=0
                ELSE
                BEGIN
                  IF Item."Reorder Quantity">0 THEN
                  BEGIN
                    K:=K+10;
                    "Req.Ln".INIT;
                    "Req.Ln"."Worksheet Template Name":=ReqLine."Worksheet Template Name";
                    "Req.Ln"."Journal Batch Name":=ReqLine."Journal Batch Name";
                    "Req.Ln"."Line No.":=K;
                    "Req.Ln".Type:=2;
                    "Req.Ln".VALIDATE("Req.Ln"."No.",Item."No.");
                    "Req.Ln"."Action Message":=1;
                    "Req.Ln".VALIDATE("Req.Ln".Quantity,Item."Reorder Quantity");
                    ExpArrDate:="Req.Ln"."Due Date";
                    IF NOT "Req.Ln".INSERT() THEN
                    BEGIN
                      GLSetUp.GET;
                      IF GLSetUp.Administrator='HRR' THEN "Req.Ln".MODIFY();
                    END;
                  END;
                 END;
                 *////AAA

            end;

            trigger OnPreDataItem()
            begin
                //K:=10000; ///AAA
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        "Req.Ln": Record "Requisition Line";
        K: Integer;
        SalesLine: Record "Sales Line";
        ProdOrderComponent: Record "Prod. Order Component";
        ReqTemplate: Record "Req. Wksh. Template";
        ReqWkshName: Record "Requisition Wksh. Name";
        ReqLine: Record "Requisition Line";
        ReservEntry: Record "Reservation Entry";
        AvailableMgt: Codeunit "Available Management";
        ReserveSalesLine: Codeunit "Sales Line-Reserve";
        ReserveProdOrderComp: Codeunit "Prod. Order Comp.-Reserve";
        ReservMgt: Codeunit "Reservation Management";
        Window: Dialog;
        ReorderQty: Decimal;
        EndingDate: Date;
        PeriodStartingDate: Date;
        PeriodEndingDate: Date;
        FullAutoReservation: Boolean;
        FirstPeriod: Boolean;
        QtyOnHand: Decimal;
        ExpArrDate: Date;
        "------": Text[30];
        GLSetUp: Record "General Ledger Setup";
        Suggested_Items_For_Re_order_List_CaptionLbl: Label 'Suggested Items For Re-order List ';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Expected_Arrival_DateCaptionLbl: Label 'Expected Arrival Date';

    [Scope('OnPrem')]
    procedure SetReqWkshLine(NewReqWkshLine: Record "Requisition Line")
    begin
        //ReqLine := NewReqWkshLine;  ///AAA
    end;
}

