report 50102 "Customer/Item Sale"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/CustomerItemSale.rdlc';
    Caption = 'Customer/Item Sales';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem(Customer; Customer)
        {
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", "Customer Posting Group";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(STRSUBSTNO_Text000_PeriodText_; StrSubstNo(Text000, PeriodText))
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
            column(Customer_TABLECAPTION__________CustFilter; Customer.TableCaption + ': ' + CustFilter)
            {
            }
            column(Value_Entry__TABLECAPTION__________ItemLedgEntryFilter; "Value Entry".TableCaption + ': ' + ItemLedgEntryFilter)
            {
            }
            column(Customer__No__; "No.")
            {
            }
            column(Customer_Name; Name)
            {
            }
            column(Customer__Phone_No__; "Phone No.")
            {
            }
            column(Customer_Item_SalesCaption; Customer_Item_SalesCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(All_amounts_are_in_LCYCaption; All_amounts_are_in_LCYCaptionLbl)
            {
            }
            column(Value_Entry__Item_No__Caption; "Value Entry".FieldCaption("Item No."))
            {
            }
            column(Item_DescriptionCaption; Item_DescriptionCaptionLbl)
            {
            }
            column(Invoiced_Quantity_Caption; Invoiced_Quantity_CaptionLbl)
            {
            }
            column(Item__Base_Unit_of_Measure_Caption; Item__Base_Unit_of_Measure_CaptionLbl)
            {
            }
            column(Customer__Phone_No__Caption; FieldCaption("Phone No."))
            {
            }
            column(Customer_Global_Dimension_1_Filter; "Global Dimension 1 Filter")
            {
            }
            column(Customer_Global_Dimension_2_Filter; "Global Dimension 2 Filter")
            {
            }
            dataitem("Value Entry"; "Value Entry")
            {
                DataItemLink = "Source No." = FIELD("No."), "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"), "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter");
                DataItemTableView = SORTING("Source Type", "Source No.", "Item Ledger Entry Type", "Item No.", "Posting Date") WHERE("Source Type" = CONST(Customer), "Item Ledger Entry Type" = CONST(Sale), "Expected Cost" = CONST(false));
                RequestFilterFields = "Item No.", "Inventory Posting Group", "Posting Date";
                column(Value_Entry__Item_No__; "Item No.")
                {
                }
                column(Item_Description; Item.Description)
                {
                }
                column(Invoiced_Quantity_; -"Invoiced Quantity")
                {
                    DecimalPlaces = 0 : 5;
                }
                column(Item__Base_Unit_of_Measure_; Item."Base Unit of Measure")
                {
                }
                column(Customer_Name_Control36; Customer.Name)
                {
                }
                column(Invoiced_Quantity__Control1000000000; -"Invoiced Quantity")
                {
                }
                column(TotalCaption; TotalCaptionLbl)
                {
                }
                column(Value_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Value_Entry_Source_No_; "Source No.")
                {
                }
                column(Value_Entry_Global_Dimension_1_Code; "Global Dimension 1 Code")
                {
                }
                column(Value_Entry_Global_Dimension_2_Code; "Global Dimension 2 Code")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    Profit := "Sales Amount (Actual)" - "Cost Amount (Actual)";
                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.CreateTotals("Invoiced Quantity", "Sales Amount (Actual)", Profit, "Discount Amount");
                    CurrReport.CreateTotals("Value Entry"."Invoiced Quantity");


                    CalcProfitPct;



                    CalcProfitPct;
                    if not Item.Get("Item No.") then
                        Item.Init
                end;
            }

            trigger OnPreDataItem()
            begin
                CurrReport.NewPagePerRecord := PrintOnlyOnePerPage;
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
        CustFilter := Customer.GetFilters;
        ItemLedgEntryFilter := "Value Entry".GetFilters;
        PeriodText := "Value Entry".GetFilter("Posting Date");
    end;

    var
        Text000: Label 'Period: %1';
        Item: Record Item;
        CustFilter: Text[250];
        ItemLedgEntryFilter: Text[250];
        PeriodText: Text[30];
        PrintOnlyOnePerPage: Boolean;
        Profit: Decimal;
        ProfitPct: Decimal;
        Customer_Item_SalesCaptionLbl: Label 'Customer/Item Sales';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        All_amounts_are_in_LCYCaptionLbl: Label 'All amounts are in LCY';
        Item_DescriptionCaptionLbl: Label 'Description';
        Invoiced_Quantity_CaptionLbl: Label 'Invoiced Quantity';
        Item__Base_Unit_of_Measure_CaptionLbl: Label 'Unit of Measure';
        TotalCaptionLbl: Label 'Total';

    local procedure CalcProfitPct()
    begin

        if "Value Entry"."Sales Amount (Actual)" <> 0 then
            ProfitPct := Round(100 * Profit / "Value Entry"."Sales Amount (Actual)", 0.1)
        else
            ProfitPct := 0;
    end;
}

