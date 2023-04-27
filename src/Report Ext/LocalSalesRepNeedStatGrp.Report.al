report 50235 "Local Sales Rep-Need Stat Grp"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/LocalSalesRepNeedStatGrp.rdlc';
    Caption = 'Inventory - Top 10 List';

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("No.") WHERE("Gen. Prod. Posting Group" = FILTER('FIS'), "Location Filter" = FILTER('CRM-ASL'), "Sales (LCY)" = FILTER(<> 0));
            RequestFilterFields = "No.", "Inventory Posting Group", "Statistics Group", "Date Filter";

            trigger OnAfterGetRecord()
            begin
                Window.Update(1, "No.");
                CalcFields("Sales (LCY)", Inventory);
                if ("Sales (LCY)" = 0) and (Inventory = 0) and not PrintAlsoIfZero then
                    CurrReport.Skip;

                ItemAmount.Init;
                ItemAmount."Item No." := "No.";
                if ShowType = ShowType::"Sales (LCY)" then begin
                    ItemAmount.Amount := "Sales (LCY)";
                    ItemAmount."Amount 2" := Inventory;
                end else begin
                    ItemAmount.Amount := Inventory;
                    ItemAmount."Amount 2" := "Sales (LCY)";
                end;
                if ShowSorting = ShowSorting::Largest then begin
                    ItemAmount.Amount := -ItemAmount.Amount;
                    ItemAmount."Amount 2" := -ItemAmount."Amount 2";
                end;
                ItemAmount.Insert;
                if (NoOfRecordsToPrint = 0) or (i < NoOfRecordsToPrint) then
                    i := i + 1
                else begin
                    ItemAmount.Find('+');
                    ItemAmount.Delete;
                end;
            end;

            trigger OnPreDataItem()
            begin
                Window.Open(Text000);
                ItemAmount.DeleteAll;
                i := 0;
                CurrReport.CreateTotals("Sales (LCY)", Inventory);

                if Item.GetFilter(Item."Date Filter") = '' then
                    SetRange("Date Filter", CalcDate('-1D', WorkDate));
            end;
        }
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(STRSUBSTNO_Text001_ItemDateFilter_; StrSubstNo(Text001, ItemDateFilter))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID________; UserId + ' :  ')
            {
            }
            column(STRSUBSTNO_Text002_Sequence_Heading_; StrSubstNo(Text002, Sequence, Heading))
            {
            }
            column(STRSUBSTNO___1___2__Item_TABLECAPTION_ItemFilter_; StrSubstNo('%1: %2', Item.TableCaption, ItemFilter))
            {
            }
            column(Integer_Number; Number)
            {
            }
            column(Item__No__; Item."No.")
            {
            }
            column(Item_Description; Item.Description)
            {
            }
            column(Item__Sales__LCY__; Item."Sales (LCY)")
            {
                AutoFormatType = 1;
            }
            column(Item__Sales__Qty___; Item."Sales (Qty.)")
            {
                DecimalPlaces = 0 : 5;
            }
            column(Item__Unit_Price_; Item."Unit Price")
            {
                AutoFormatType = 1;
            }
            column(Item__Sales__LCY___Control24; Item."Sales (LCY)")
            {
                AutoFormatType = 1;
            }
            column(Item_Inventory; Item.Inventory)
            {
                DecimalPlaces = 0 : 5;
            }
            column(ItemSales; ItemSales)
            {
                AutoFormatType = 1;
            }
            column(QtyOnHand; QtyOnHand)
            {
                DecimalPlaces = 0 : 5;
            }
            column(SalesAmountPct; SalesAmountPct)
            {
                AutoFormatType = 1;
                DecimalPlaces = 1 : 1;
            }
            column(QtyOnHandPct; QtyOnHandPct)
            {
                DecimalPlaces = 1 : 1;
            }
            column(Item__Sales__Qty____Control1000000014; Item."Sales (Qty.)")
            {
                DecimalPlaces = 0 : 5;
            }
            column(Local_Sales_ReportCaption; Local_Sales_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(This_report_also_includes_items_not_on_inventory_or_that_are_not_sold_Caption; This_report_also_includes_items_not_on_inventory_or_that_are_not_sold_CaptionLbl)
            {
            }
            column(Integer_NumberCaption; Integer_NumberCaptionLbl)
            {
            }
            column(Item__No__Caption; Item.FieldCaption("No."))
            {
            }
            column(Item_DescriptionCaption; Item.FieldCaption(Description))
            {
            }
            column(Item__Sales__LCY__Caption; Item.FieldCaption("Sales (LCY)"))
            {
            }
            column(Item__Sales__Qty___Caption; Item__Sales__Qty___CaptionLbl)
            {
            }
            column(Item__Unit_Price_Caption; Item.FieldCaption("Unit Price"))
            {
            }
            column(Item__Sales__LCY___Control24Caption; Item__Sales__LCY___Control24CaptionLbl)
            {
            }
            column(ItemSalesCaption; ItemSalesCaptionLbl)
            {
            }
            column(SalesAmountPctCaption; SalesAmountPctCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Number = 1 then begin
                    if not ItemAmount.Find('-') then
                        CurrReport.Break;
                    if ShowSorting = ShowSorting::Largest then
                        MaxAmount := -ItemAmount.Amount
                    else begin
                        ItemAmount2 := ItemAmount;
                        if ItemAmount.Next(NoOfRecordsToPrint - 1) > 0 then;
                        MaxAmount := ItemAmount.Amount;
                        ItemAmount := ItemAmount2;
                    end;
                end else
                    if ItemAmount.Next = 0 then
                        CurrReport.Break;
                Item.Get(ItemAmount."Item No.");
                Item.CalcFields("Sales (LCY)", Inventory);
                Item.CalcFields(Item."Sales (Qty.)", Item."Purchases (Qty.)");
                Item.CalcFields(Item."Positive Adjmt. (Qty.)", Item."Negative Adjmt. (Qty.)");
                Item.CalcFields(Item."Net Change", Item."Transferred (Qty.)");
                if ShowSorting = ShowSorting::Largest then begin
                    ItemAmount.Amount := -ItemAmount.Amount;
                    ItemAmount."Amount 2" := -ItemAmount."Amount 2";
                end;
                if (MaxAmount > 0) and (ItemAmount.Amount > 0) then
                    BarText := PadStr('', Round(ItemAmount.Amount / MaxAmount * 45, 1), '*')
                else
                    BarText := '';
                if ShowSorting = ShowSorting::Largest then begin
                    ItemAmount.Amount := -ItemAmount.Amount;
                    ItemAmount."Amount 2" := -ItemAmount."Amount 2";
                end;
            end;

            trigger OnPreDataItem()
            begin

                Window.Close;
                ItemSales := Item."Sales (LCY)";
                QtyOnHand := Item.Inventory;
                CurrReport.CreateTotals(Item."Sales (LCY)", Item.Inventory);
                CurrReport.CreateTotals(Recpt, TStk, OpStk, ClsStk, Item."Sales (Qty.)");


                if Item."Sales (Qty.)" <> 0 then
                    Item."Unit Price" := Round(Item."Sales (LCY)" / Item."Sales (Qty.)", 0.01)
                else
                    Item."Unit Price" := 0;
                if Item2.Get(Item."No.") then begin
                    Item2.CopyFilters(Item);
                    Item2.SetRange(Item2."Date Filter", 0D, CalcDate('-1D', Predate));
                    Item2.CalcFields(Item2.Inventory);
                    OpStk := Item2.Inventory;
                    Item2.SetRange(Item2."Date Filter", 0D, Predate);
                    Item2.CalcFields(Item2.Inventory);
                    ClsStk := Item2.Inventory;
                end;
                Recpt := Item."Purchases (Qty.)" + Item."Positive Adjmt. (Qty.)" + Item."Transferred (Qty.)";
                TStk := OpStk + Recpt;

                SalesAmountPct := Pct(Item."Sales (LCY)", ItemSales);
                QtyOnHandPct := Pct(Item.Inventory, QtyOnHand);
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

    trigger OnPreReport()
    begin
        if Item.GetFilter(Item."Date Filter") = '' then
            Item.SetRange(Item."Date Filter", CalcDate('-1D', WorkDate));

        ItemFilter := Item.GetFilters;
        ItemDateFilter := Item.GetFilter("Date Filter");
        Sequence := LowerCase(Format(SelectStr(ShowSorting + 1, Text004)));
        Heading := Format(SelectStr(ShowType + 1, Text005));
        Predate := Item.GetRangeMin(Item."Date Filter");
        //MESSAGE('The Date is %1',Predate);
    end;

    var
        Text000: Label 'Sorting items    #1##########';
        Text001: Label 'Period: %1';
        Text002: Label 'Ranked according to %1 %2';
        Text003: Label 'Portion of %1';
        Window: Dialog;
        ItemAmount: Record "Item Amount" temporary;
        ItemAmount2: Record "Item Amount";
        ItemFilter: Text[250];
        ItemDateFilter: Text[30];
        Sequence: Text[30];
        Heading: Text[30];
        ShowSorting: Option Largest,Smallest;
        ShowType: Option "Sales (LCY)",Inventory;
        NoOfRecordsToPrint: Integer;
        PrintAlsoIfZero: Boolean;
        ItemSales: Decimal;
        QtyOnHand: Decimal;
        SalesAmountPct: Decimal;
        QtyOnHandPct: Decimal;
        MaxAmount: Decimal;
        BarText: Text[50];
        i: Integer;
        Text004: Label 'Largest,Smallest';
        Text005: Label 'Sales (LCY),Inventory';
        Item2: Record Item;
        Predate: Date;
        Recpt: Decimal;
        TStk: Decimal;
        OpStk: Decimal;
        ClsStk: Decimal;
        DatFilt: Date;
        Local_Sales_ReportCaptionLbl: Label 'Local Sales Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        This_report_also_includes_items_not_on_inventory_or_that_are_not_sold_CaptionLbl: Label 'This report also includes items not on inventory or that are not sold.';
        Integer_NumberCaptionLbl: Label 'Rank';
        Item__Sales__Qty___CaptionLbl: Label 'Sales (KGS)';
        Item__Sales__LCY___Control24CaptionLbl: Label 'Total';
        ItemSalesCaptionLbl: Label 'Total Sales';
        SalesAmountPctCaptionLbl: Label '% of Total Sales';

    local procedure Pct(Numeral1: Decimal; Numeral2: Decimal): Decimal
    begin
        if Numeral2 = 0 then
            exit(0);
        exit(Round(Numeral1 / Numeral2 * 100, 0.1));
    end;
}

