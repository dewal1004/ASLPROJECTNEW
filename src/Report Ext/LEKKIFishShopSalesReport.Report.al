report 50225 "LEKKI Fish Shop Sales Report"
{
    // "Sea Food categories"
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/LEKKIFishShopSalesReport.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'LEKKI Fish Shop Sales Report';
    dataset
    {
        dataitem("Sea Food categories"; "Sea Food categories")
        {
            column(USERID; UserId)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(RepFilter; RepFilter)
            {
            }
            column(Sea_Food_categories__Sea_food_Description_; "Sea food Description")
            {
            }
            column(COPYSTR__Sea_food_code__5_; CopyStr("Sea food code", 5))
            {
            }
            column(TotSales; TotSales)
            {
            }
            column(TotSales_Control1000000012; TotSales)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Lekki_Fish_Shop_Sales_ReportCaption; Lekki_Fish_Shop_Sales_ReportCaptionLbl)
            {
            }
            column(Item__Sales__LCY__Caption; Item.FieldCaption("Sales (LCY)"))
            {
            }
            column(Sales__LCY____Sales__Qty___Caption; Sales__LCY____Sales__Qty___CaptionLbl)
            {
            }
            column(Item__Sales__Qty___Caption; Item.FieldCaption("Sales (Qty.)"))
            {
            }
            column(Item_DescriptionCaption; Item.FieldCaption(Description))
            {
            }
            column(Item__No__Caption; Item.FieldCaption("No."))
            {
            }
            column(Sea_Food_categories__Sea_food_Description_Caption; FieldCaption("Sea food Description"))
            {
            }
            column(COPYSTR__Sea_food_code__5_Caption; COPYSTR__Sea_food_code__5_CaptionLbl)
            {
            }
            column(Total_SalesCaptions; Total_SalesCaptionLbl)
            {
            }
            column(Sea_Food_categories_Sea_food_code; "Sea food code")
            {
            }
            dataitem(Item; Item)
            {
                column(Item__Item_Category_Code_; "Item Category Code")
                {
                }
                column(ItemNo; Item."No.")
                {
                }
                column(ItemDescription; Item.Description)
                {
                }
                column(Item__No__; "No.")
                {
                }
                column(Item_Description; Description)
                {
                }
                column(Item__Sales__Qty___; "Sales (Qty.)")
                {
                }
                column(Sales__LCY____Sales__Qty___; "Sales (LCY)" / "Sales (Qty.)")
                {
                }
                column(Item__Sales__LCY__; "Sales (LCY)")
                {
                }
                column(TotalFor_COPYSTR__Sea_Food_categories___Sea_food_code__5_; TotalFor + CopyStr("Sea Food categories"."Sea food code", 5))
                {
                }
                column(Item__Sales__Qty____Control1000000032; "Sales (Qty.)")
                {
                }
                column(Item__Sales__LCY___Control1000000033; "Sales (LCY)")
                {
                }
                column(Item__Item_Category_Code_Caption; FieldCaption("Item Category Code"))
                {
                }
                column(Item_SF_Cat; "SF Cat")
                {
                }
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
        RepFilter := Item.GetFilters;
    end;

    var
        TotalFor: Label 'Total for ';
        RepFilter: Text[120];
        TotSales: Decimal;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Lekki_Fish_Shop_Sales_ReportCaptionLbl: Label 'Lekki Fish Shop Sales Report';
        Sales__LCY____Sales__Qty___CaptionLbl: Label 'Unit Price';
        COPYSTR__Sea_food_code__5_CaptionLbl: Label 'Label1000000007';
        Total_SalesCaptionLbl: Label 'Total Sales';
}
