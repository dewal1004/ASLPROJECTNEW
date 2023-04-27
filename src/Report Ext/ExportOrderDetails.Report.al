report 50198 "Export Order Details"
{
    // "Source No. Filter" is used for Customer Filter
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ExportOrderDetails.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem("Sea Food categories"; "Sea Food categories")
        {
            DataItemTableView = SORTING("Sea food code") ORDER(Descending);
            column(USERID; UserId)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
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
            column(TotSales_Control1000000023; TotSales)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Export_Order_DetailsCaption; Export_Order_DetailsCaptionLbl)
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
            column(Total_SalesCaption; Total_SalesCaptionLbl)
            {
            }
            column(Sea_Food_categories_Sea_food_code; "Sea food code")
            {
            }
            dataitem(Item; Item)
            {
                DataItemTableView = SORTING("SF Cat", "No. 2") WHERE("Gen. Prod. Posting Group" = FILTER('FIS'), "Sales (Qty.)" = FILTER(<> 0), "Location Filter" = FILTER('CRM-ASL'), "Global Dimension 1 Filter" = FILTER('EXPT'));
                RequestFilterFields = "Date Filter", "Source No. Filter";
                column(Item__Item_Category_Code_; "Item Category Code")
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
                column(TotalFor_COPYSTR__Sea_Food_categories___Sea_food_code__5_; TotalFor + CopyStr("Sea Food categories"."Sea food code", 5))
                {
                }
                column(Item__Sales__Qty____Control1000000032; "Sales (Qty.)")
                {
                }
                column(Item__Item_Category_Code_Caption; FieldCaption("Item Category Code"))
                {
                }
                column(Item_SF_Cat; "SF Cat")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    TotSales := TotSales + Item."Sales (Qty.)";
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo("No. 2");
                    if GetFilter("Date Filter") = '' then
                        SetRange("Date Filter", CalcDate('-1D', WorkDate));
                    SetRange("SF Cat", CopyStr("Sea Food categories"."Sea food code", 5));

                    RepFilter := GetFilters;
                end;
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        RepFilter: Text[120];
        TotSales: Decimal;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Export_Order_DetailsCaptionLbl: Label 'Export Order Details';
        COPYSTR__Sea_food_code__5_CaptionLbl: Label 'Label1000000007';
        Total_SalesCaptionLbl: Label 'Total Sales';
}

