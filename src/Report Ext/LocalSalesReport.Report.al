report 50078 "Local Sales Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/LocalSalesReport.rdlc';
    Caption = 'Inventory - Top 10 List';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem(Item; Item)
        {
        }
        dataitem("Integer"; "Integer")
        {
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
            column(TStk; TStk)
            {
                DecimalPlaces = 0 : 5;
            }
            column(Item__Sales__Qty___; Item."Sales (Qty.)")
            {
                DecimalPlaces = 0 : 5;
            }
            column(Item__Unit_Price_; Item."Unit Price")
            {
                AutoFormatType = 1;
            }
            column(OpStk; OpStk)
            {
                DecimalPlaces = 0 : 5;
            }
            column(Recpt; Recpt)
            {
                DecimalPlaces = 0 : 5;
            }
            column(ClsStk; ClsStk)
            {
                DecimalPlaces = 0 : 5;
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
            column(OpStk_Control1000000007; OpStk)
            {
                DecimalPlaces = 0 : 5;
            }
            column(Recpt_Control1000000011; Recpt)
            {
                DecimalPlaces = 0 : 5;
            }
            column(TStk_Control1000000012; TStk)
            {
                DecimalPlaces = 0 : 5;
            }
            column(ClsStk_Control1000000013; ClsStk)
            {
                DecimalPlaces = 0 : 5;
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
            column(Total_StkCaption; Total_StkCaptionLbl)
            {
            }
            column(Item__Sales__Qty___Caption; Item__Sales__Qty___CaptionLbl)
            {
            }
            column(Item__Unit_Price_Caption; Item.FieldCaption("Unit Price"))
            {
            }
            column(OpStkCaption; OpStkCaptionLbl)
            {
            }
            column(RecptCaption; RecptCaptionLbl)
            {
            }
            column(ClsStkCaption; ClsStkCaptionLbl)
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
        Total_StkCaptionLbl: Label 'Total Stk';
        Item__Sales__Qty___CaptionLbl: Label 'Sales (KGS)';
        OpStkCaptionLbl: Label 'Op Stk';
        RecptCaptionLbl: Label 'Receipts';
        ClsStkCaptionLbl: Label 'Cls Stk';
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

