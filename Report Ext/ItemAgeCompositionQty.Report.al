report 50216 "Item Age Composition Qty"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ItemAgeCompositionQty.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Inventory Posting Group", "Statistics Group", "Location Filter";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Item_TABLECAPTION__________ItemFilter; Item.TableCaption + ': ' + ItemFilter)
            {
            }
            column(PeriodStartDate_2____1; PeriodStartDate[2] + 1)
            {
            }
            column(PeriodStartDate_1___; PeriodStartDate[1])
            {
            }
            column(PeriodStartDate_3____1; PeriodStartDate[3] + 1)
            {
            }
            column(PeriodStartDate_2_; PeriodStartDate[2])
            {
            }
            column(PeriodStartDate_4_____1; PeriodStartDate[4] + 1)
            {
            }
            column(PeriodStartDate_3___; PeriodStartDate[3])
            {
            }
            column(InvtQty_1_; InvtQty[1])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_2_; InvtQty[2])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_3_; InvtQty[3])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_4_; InvtQty[4])
            {
                AutoFormatType = 1;
            }
            column(Item_Item_Description; Item.Description)
            {
            }
            column(Item_Item__No__; Item."No.")
            {
            }
            column(InvtQty_4__Control1000000026; InvtQty[4])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_2__Control1000000027; InvtQty[2])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_1__Control1000000028; InvtQty[1])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_3__Control1000000029; InvtQty[3])
            {
                AutoFormatType = 1;
            }
            column(BalanceAtDate; BalanceAtDate)
            {
            }
            column(InvtQty_4__Control1000000012; InvtQty[4])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_3__Control1000000013; InvtQty[3])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_2__Control1000000014; InvtQty[2])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_1__Control1000000015; InvtQty[1])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_4__Control1000000017; InvtQty[4])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_3__Control1000000018; InvtQty[3])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_2__Control1000000019; InvtQty[2])
            {
                AutoFormatType = 1;
            }
            column(InvtQty_1__Control1000000020; InvtQty[1])
            {
                AutoFormatType = 1;
            }
            column(Item_Age_Composition___QtyCaption; Item_Age_Composition___QtyCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(BalanceCaption; BalanceCaptionLbl)
            {
            }
            column(Item_Item_DescriptionCaption; Item_Item_DescriptionCaptionLbl)
            {
            }
            column(Item_NoCaption; Item_NoCaptionLbl)
            {
            }
            column(before___Caption; before___CaptionLbl)
            {
            }
            column(Control3Caption; Control3CaptionLbl)
            {
            }
            column(ContinueCaption; ContinueCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                BalanceAtDate := 0;
                TotalBal := 0;

                for i := 1 to 4 do
                    InvtQty[i] := 0;

                ItemRec.Get(Item."No.");
                ItemRec.SetRange(ItemRec."Date Filter", 0D, EndDate);
                ItemRec.CalcFields(ItemRec."Net Change");
                BalanceAtDate := ItemRec."Net Change";

                for i := 1 to 4 do begin
                    ItemRec.Reset;
                    ItemRec.Get(Item."No.");
                    ItemRec.SetRange(ItemRec."Date Filter", PeriodStartDate[i + 1] + 1, PeriodStartDate[i]);
                    ItemRec.CalcFields(ItemRec."Purchases (Qty.)");
                    if (TotalBal + ItemRec."Purchases (Qty.)") >= BalanceAtDate then begin
                        InvtQty[i] := BalanceAtDate - TotalBal;
                        TotalBal := TotalBal + InvtQty[i];
                        i := 4
                    end else begin
                        InvtQty[i] := ItemRec."Purchases (Qty.)";
                        TotalBal := TotalBal + InvtQty[i];
                    end;
                end;
                if TotalBal < BalanceAtDate then
                    InvtQty[4] := BalanceAtDate - TotalBal;
            end;

            trigger OnPostDataItem()
            begin
                InvtQty[i] := ItemRec."Purchases (Qty.)";
                if (TotalBal + InvtQty[i]) > BalanceAtDate then
                    i := 4
                else
                    TotalBal := TotalBal + InvtQty[i];
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(InvtQty);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Control2)
                {
                    ShowCaption = false;
                    field(EndDate; EndDate)
                    {
                        ApplicationArea = All;
                    }
                    field(PeriodLength; PeriodLength)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        ItemFilter := Item.GetFilters;

        PeriodStartDate[1] := EndDate;
        for i := 2 to 4 do begin
            PeriodStartDate[i] := CalcDate('-' + PeriodLength, PeriodStartDate[i - 1]);
        end;
        PeriodStartDate[5] := 19000101D;

        with ValueEntry do begin

            SetCurrentKey("Item Ledger Entry No.", Inventoriable,
                             "Expected Cost", "Partial Revaluation", "Entry Type");
            SetFilter("Variant Code", Item.GetFilter("Variant Filter"));
            SetFilter("Location Code", Item.GetFilter("Location Filter"));
            SetFilter("Global Dimension 1 Code", Item.GetFilter("Global Dimension 1 Filter"));
            SetFilter("Global Dimension 2 Code", Item.GetFilter("Global Dimension 2 Filter"));
        end;
    end;

    var
        Text001: Label '1M';
        Text002: Label 'Enter the ending date';
        Text003: Label '0D';
        ItemRec: Record Item;
        ValueEntry: Record "Value Entry";
        ItemCostMgt: Codeunit ItemCostManagement;
        ItemFilter: Text[250];
        InvtValue: array[6] of Decimal;
        InvtQty: array[6] of Decimal;
        TotalInvoicedQty: Decimal;
        UnitCost: Decimal;
        PeriodStartDate: array[6] of Date;
        PeriodLength: Code[20];
        i: Integer;
        TotalInvtValue: Decimal;
        TotalInvtQty: Decimal;
        PrintLine: Boolean;
        AverageCost: Decimal;
        AverageCostACY: Decimal;
        EndDate: Date;
        BalanceAtDate: Decimal;
        TotalBal: Decimal;
        Item_Age_Composition___QtyCaptionLbl: Label 'Item Age Composition - Qty';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        BalanceCaptionLbl: Label 'Balance';
        Item_Item_DescriptionCaptionLbl: Label 'Description';
        Item_NoCaptionLbl: Label 'Item No';
        before___CaptionLbl: Label 'before...';
        Control3CaptionLbl: Label 'Label3';
        ContinueCaptionLbl: Label 'Continue';
        TotalCaptionLbl: Label 'Total';
}

