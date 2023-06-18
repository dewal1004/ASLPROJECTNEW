report 50227 "Vesselwise Consumption 3years"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/VesselwiseConsumption3years.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Vesselwise Consumption 3years';
    dataset
    {
        dataitem(Location; Location)
        {
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(USERID; UserId)
            {
            }
            column(Consumption_of_____Item_Description_________ItemCode; 'Consumption of ' + Item.Description + ' ' + ItemCode)
            {
            }
            column(FORMAT_StartDate_1__0___Year4___; Format(StartDate[1], 0, '<Year4>'))
            {
            }
            column(FORMAT_StartDate_2__0___Year4___; Format(StartDate[2], 0, '<Year4>'))
            {
            }
            column(FORMAT_StartDate_3__0___Year4___; Format(StartDate[3], 0, '<Year4>'))
            {
            }
            column(Location_Code; Code)
            {
            }
            column(Location_Name; Name)
            {
            }
            column(Qty_1_; Qty[1])
            {
            }
            column(Qty_2_; Qty[2])
            {
            }
            column(Qty_3_; Qty[3])
            {
            }
            column(Total; Total)
            {
            }
            column(Grand_Total_; 'Grand Total')
            {
            }
            column(Qty_1__Control1000000011; Qty[1])
            {
            }
            column(Qty_2__Control1000000012; Qty[2])
            {
            }
            column(Qty_3__Control1000000013; Qty[3])
            {
            }
            column(Qty_1__Qty_2__Qty_3_; Qty[1] + Qty[2] + Qty[3])
            {
            }
            column(Vesselwise_Consumption_Last_3_yearsCaption; Vesselwise_Consumption_Last_3_yearsCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Location_CodeCaption; FieldCaption(Code))
            {
            }
            column(Location_NameCaption; FieldCaption(Name))
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
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
                    field("Current Date"; RefDate)
                    {
                        ApplicationArea = All;
                    }
                    field("Item "; ItemCode)
                    {
                        TableRelation = Item;
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
        if ItemCode = '' then
            Error(Text100);

        StartDate[3] := CalcDate('-CY', RefDate);
        StartDate[2] := CalcDate('-CY', StartDate[3] - 1);
        StartDate[1] := CalcDate('-CY', StartDate[2] - 1);

        EndDate[3] := CalcDate('CY', StartDate[3]);
        EndDate[2] := CalcDate('CY', StartDate[2]);
        EndDate[1] := CalcDate('CY', StartDate[1]);
    end;

    var
        Item: Record Item;
        RefDate: Date;
        StartDate: array[3] of Date;
        EndDate: array[3] of Date;
        ItemCode: Code[20];
        Text100: Label 'Please select Item!';
        Qty: array[3] of Decimal;
        Total: Decimal;
        Vesselwise_Consumption_Last_3_yearsCaptionLbl: Label 'Vesselwise Consumption Last 3 years';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        TotalCaptionLbl: Label 'TOTAL';
}
