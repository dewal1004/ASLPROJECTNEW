report 50228 "Itemwise Yearly Consumption"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ItemwiseYearlyConsumption.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem(Location; Location)
        {
            DataItemTableView = SORTING(Code) WHERE("Location Type" = CONST(Vessel));
            RequestFilterFields = "Code";
            RequestFilterHeading = 'Vessel Filter';
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
            column(Consumption_for_year_____FORMAT_DATE2DMY_EndDate_3__; 'Consumption for year ' + Format(Date2DMY(EndDate, 3)))
            {
            }
            column(ItemName_1_; ItemName[1])
            {
            }
            column(ItemName_2_; ItemName[2])
            {
            }
            column(ItemName_3_; ItemName[3])
            {
            }
            column(ItemName_6_; ItemName[6])
            {
            }
            column(ItemName_5_; ItemName[5])
            {
            }
            column(ItemName_4_; ItemName[4])
            {
            }
            column(ItemName_9_; ItemName[9])
            {
            }
            column(ItemName_8_; ItemName[8])
            {
            }
            column(ItemName_7_; ItemName[7])
            {
            }
            column(ItemName_10_; ItemName[10])
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
            column(Qty_6_; Qty[6])
            {
            }
            column(Qty_5_; Qty[5])
            {
            }
            column(Qty_4_; Qty[4])
            {
            }
            column(Qty_9_; Qty[9])
            {
            }
            column(Qty_8_; Qty[8])
            {
            }
            column(Qty_7_; Qty[7])
            {
            }
            column(Qty_10_; Qty[10])
            {
            }
            column(Grand_Total_; 'Grand Total')
            {
            }
            column(Qty_1__Qty_2__Qty_3__Qty_4__Qty_5__Qty_6__Qty_7__Qty_8__Qty_9__Qty_10_; Qty[1] + Qty[2] + Qty[3] + Qty[4] + Qty[5] + Qty[6] + Qty[7] + Qty[8] + Qty[9] + Qty[10])
            {
            }
            column(Qty_10__Control1000000011; Qty[10])
            {
            }
            column(Qty_9__Control1000000012; Qty[9])
            {
            }
            column(Qty_8__Control1000000013; Qty[8])
            {
            }
            column(Qty_7__Control1000000023; Qty[7])
            {
            }
            column(Qty_6__Control1000000025; Qty[6])
            {
            }
            column(Qty_5__Control1000000026; Qty[5])
            {
            }
            column(Qty_4__Control1000000027; Qty[4])
            {
            }
            column(Qty_3__Control1000000034; Qty[3])
            {
            }
            column(Qty_2__Control1000000035; Qty[2])
            {
            }
            column(Qty_1__Control1000000036; Qty[1])
            {
            }
            column(Itewisme_Yearly_ConsumptionCaption; Itewisme_Yearly_ConsumptionCaptionLbl)
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

            trigger OnAfterGetRecord()
            begin
                for i := 1 to 10 do begin
                    if Item.Get(ItemCode[i]) then begin
                        Item.SetFilter("Location Filter", Location.Code);
                        Item.SetFilter("Date Filter", '%1..%2', StartDate, EndDate);
                        Item.CalcFields("Transferred (Qty.)");
                        Qty[i] := Item."Transferred (Qty.)";
                    end;
                end;
                Total := Qty[1] + Qty[2] + Qty[3] + Qty[4] + Qty[5] + Qty[6] + Qty[7] + Qty[8] + Qty[9] + Qty[10];

                if Total = 0 then
                    CurrReport.Skip;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(Qty);
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
                    field("Current Date "; RefDate)
                    {
                    }
                    field("Item 1"; ItemCode[1])
                    {
                        TableRelation = Item;
                    }
                    field("Item 2"; ItemCode[2])
                    {
                        TableRelation = Item;
                    }
                    field("Item 3"; ItemCode[3])
                    {
                        TableRelation = Item;
                    }
                    field("Item 4"; ItemCode[4])
                    {
                        TableRelation = Item;
                    }
                    field("Item 5"; ItemCode[5])
                    {
                        TableRelation = Item;
                    }
                    field("Item 6"; ItemCode[6])
                    {
                        TableRelation = Item;
                    }
                    field("Item 7"; ItemCode[7])
                    {
                        TableRelation = Item;
                    }
                    field("Item 8"; ItemCode[8])
                    {
                        TableRelation = Item;
                    }
                    field("Item 9"; ItemCode[9])
                    {
                        TableRelation = Item;
                    }
                    field("Item 10"; ItemCode[10])
                    {
                        TableRelation = Item;
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
        k := 0;
        for i := 1 to 10 do begin
            if not Item.Get(ItemCode[i]) then
                k := k + 1
            else
                ItemName[i] := Item.Description;
        end;

        if k = 10 then
            Error(Text100);

        StartDate := CalcDate('-CY', RefDate);
        EndDate := CalcDate('CY', StartDate);
    end;

    var
        Item: Record Item;
        RefDate: Date;
        StartDate: Date;
        EndDate: Date;
        ItemCode: array[10] of Code[20];
        Text100: Label 'Please select Item!';
        ItemName: array[10] of Text[30];
        i: Integer;
        k: Integer;
        Qty: array[10] of Decimal;
        Total: Decimal;
        Itewisme_Yearly_ConsumptionCaptionLbl: Label 'Itewisme Yearly Consumption';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        TotalCaptionLbl: Label 'TOTAL';
}

