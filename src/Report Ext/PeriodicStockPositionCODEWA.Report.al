report 50022 "Periodic Stock Position-CODEWA"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/PeriodicStockPositionCODEWA.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Periodic Stock Position-CODEWA';
    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Statistics Group", "Location Filter";
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
            column(Item_TABLECAPTION__________ItemFilter; Item.TableCaption + ': ' + ItemFilter)
            {
            }
            column(Period_Length_Used____PeriodLength; 'Period Length Used :' + PeriodLength)
            {
            }
            column(Text004_FORMAT_PeriodStartDate_4__; Text004 + Format(PeriodStartDate[4]))
            {
            }
            column(Text004_FORMAT_PeriodStartDate_5__; Text004 + Format(PeriodStartDate[5]))
            {
            }
            column(Item__Statistics_Group_; "Statistics Group")
            {
            }
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Inventory; Item.Inventory)
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Stk_6__; Stk[6])
            {
            }
            column(Stk_2__; Stk[2])
            {
            }
            column(Stk_3__; Stk[3])
            {
            }
            column(Stk_4__; Stk[4])
            {
            }
            column(Stk_5__; Stk[5])
            {
            }
            column(Stk_1__; Stk[1])
            {
            }
            column(Stk_7__; Stk[7])
            {
            }
            column(Stk_8__; Stk[8])
            {
            }
            column(Stk_9__; Stk[9])
            {
            }
            column(DDD; DDD)
            {
            }
            column(CCC; CCC)
            {
            }
            column(BBB; BBB)
            {
            }
            column(AAA; AAA)
            {
            }
            column(TotalFor___FIELDCAPTION__Inventory_Posting_Group__; TotalFor + FieldCaption("Inventory Posting Group"))
            {
            }
            column(Stk_1___Control1000000000; Stk[1])
            {
            }
            column(Stk_2___Control1000000001; Stk[2])
            {
            }
            column(Stk_3___Control1000000002; Stk[3])
            {
            }
            column(Stk_4___Control1000000003; Stk[4])
            {
            }
            column(Stk_5___Control1000000004; Stk[5])
            {
            }
            column(Stk_6___Control1000000005; Stk[6])
            {
            }
            column(Stk_7___Control1000000013; Stk[7])
            {
            }
            column(Stk_8___Control1000000029; Stk[8])
            {
            }
            column(Stk_9___InvtPostingGrp; Stk[9])
            {
            }
            column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
            {
            }
            column(Stk_1___Control1000000006; Stk[1])
            {
            }
            column(Stk_2___Control1000000007; Stk[2])
            {
            }
            column(Stk_3___Control1000000008; Stk[3])
            {
            }
            column(Stk_4___Control1000000009; Stk[4])
            {
            }
            column(Stk_5___Control1000000010; Stk[5])
            {
            }
            column(Stk_6___Control1000000011; Stk[6])
            {
            }
            column(Stk_7___Control1000000014; Stk[7])
            {
            }
            column(Stk_8___Control1000000031; Stk[8])
            {
            }
            column(Stk_9___StatisticsGrp1; Stk[9])
            {
            }
            column(Stk_1___Control1000000021; Stk[1])
            {
            }
            column(Stk_2___Control1000000022; Stk[2])
            {
            }
            column(Stk_3___Control1000000023; Stk[3])
            {
            }
            column(Stk_4___Control1000000024; Stk[4])
            {
            }
            column(Stk_5___Control1000000025; Stk[5])
            {
            }
            column(Stk_6___Control1000000026; Stk[6])
            {
            }
            column(Stk_7___Control1000000027; Stk[7])
            {
            }
            column(Stk_8___Control1000000032; Stk[8])
            {
            }
            column(Stk_9___StatisticGrp2; Stk[9])
            {
            }
            column(Item_Report__Periodic_Movement_Caption; Item_Report__Periodic_Movement_CaptionLbl)
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
            column(Stk_6__Caption; Stk_6__CaptionLbl)
            {
            }
            column(Stk_2__Caption; Stk_2__CaptionLbl)
            {
            }
            column(Stk_3__Caption; Stk_3__CaptionLbl)
            {
            }
            column(Stk_4__Caption; Stk_4__CaptionLbl)
            {
            }
            column(Stk_5__Caption; Stk_5__CaptionLbl)
            {
            }
            column(Stk_1__Caption; Stk_1__CaptionLbl)
            {
            }
            column(Stk_7__Caption; Stk_7__CaptionLbl)
            {
            }
            column(Stk_8__Caption; Stk_8__CaptionLbl)
            {
            }
            column(Stk_9__Caption; Stk_9__CaptionLbl)
            {
            }
            column(Item__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                SetFilter("Date Filter", '%1..%2', 0D, PeriodStartDate[5]);
                CalcFields("Purchases (Qty.)");
                //CALCFIELDS();
                SetFilter("Date Filter", '');
                CalcFields(Inventory);
                Stk[7] := Inventory;

                SetFilter("Date Filter", '%1..%2', 0D, PeriodStartDate[5]);
                CalcFields("Net Change");
                Stk[6] := "Net Change";

                SetFilter("Date Filter", '%1..%2', PeriodStartDate[4], PeriodStartDate[5]);
                CalcFields("Sales (Qty.)");
                CalcFields("Transferred (Qty.)");
                CalcFields("Transfered Shipment (Qty.)");
                CalcFields("Transfered Receipt (Qty.)");
                CalcFields("Purchases (Qty.)");
                CalcFields("Output Quantity");
                CalcFields("Production Consumed (Qty.)");
                CalcFields("Assembly Consumed (Qty.)");

                Stk[3] := "Purchases (Qty.)";
                Stk[5] := "Sales (Qty.)";
                //Stk[8]:="Transferred (Qty.)";
                Stk[8] := "Transfered Shipment (Qty.)";
                Stk[9] := "Transfered Receipt (Qty.)";
                //SETFILTER("Date Filter",'%1..%2',PeriodStartDate[4],PeriodStartDate[5]);
                //CALCFIELDS("Transferred (Qty.)");

                //Take Care of Jobs Journal entry This has to be reverse when issued
                CalcFields("Positive Adjmt. (Qty.)", "Negative Adjmt. (Qty.)", "Output Quantity");
                "Posve Adjmt. (Qty.)" := Item.PosAdjmtQty("No.", GetFilter("Date Filter"), GetFilter("Location Filter"),
                  GetFilter(Item."Issues Filter"));
                "Negve Adjmt. (Qty.)" := Item.NegAdjmtQty("No.", GetFilter("Date Filter"), GetFilter("Location Filter"),
                  GetFilter(Item."Issues Filter"));
                Stk[2] := "Positive Adjmt. (Qty.)" + "Posve Adjmt. (Qty.)" - "Negve Adjmt. (Qty.)" + "Output Quantity";
                Stk[4] := "Negative Adjmt. (Qty.)" + "Posve Adjmt. (Qty.)" - "Negve Adjmt. (Qty.)" + "Production Consumed (Qty.)" + "Assembly Consumed (Qty.)";
                SetRange("Source No. Filter");

                SetFilter("Date Filter", '%1..%2', 0D, CalcDate('<-1D>', PeriodStartDate[4]));
                CalcFields("Net Change");
                Stk[1] := "Net Change";

                SetFilter("Date Filter", '');
                CalcFields("Purchases (Qty.)", "Sales (Qty.)", "Positive Adjmt. (Qty.)", "Negative Adjmt. (Qty.)", "Transferred (Qty.)", "Transfered Shipment (Qty.)", "Transfered Receipt (Qty.)");
                CalcFields(Inventory, "Output Quantity");

                if (Stk[1] = 0) and (Stk[2] = 0) and (Stk[3] = 0) and (Stk[4] = 0) and (Stk[5] = 0) and (Stk[6] = 0) and (Stk[7] = 0) and (Stk[8] = 0) and (Stk[9] = 0) then
                    CurrReport.Skip();

                if DaysOnly then
                    if
                     (Stk[2] <> 0) or
                     (Stk[3] <> 0) or
                     (Stk[4] <> 0) or
                     (Stk[5] <> 0) or
                     (Stk[8] <> 0) or
                     (Stk[9] <> 0) then
                        PrintLine := true else
                        PrintLine := false;
                DDD := Stk[1] + Stk[2] + Stk[3] - Stk[4] - Stk[5] + Stk[8] + (Stk[9]);
            end;

            trigger OnPostDataItem()
            begin
                SetFilter("Source No. Filter", '');
                CalcFields("Positive Adjmt. (Qty.)", "Negative Adjmt. (Qty.)", "Output Quantity");
                Stk[2] := "Positive Adjmt. (Qty.)" + "Output Quantity";
                Stk[4] := "Negative Adjmt. (Qty.)";

                SetFilter("Source No. Filter", '');
                CalcFields("Positive Adjmt. (Qty.)", "Negative Adjmt. (Qty.)");
                Stk[4] := "Positive Adjmt. (Qty.)" + "Output Quantity";
                Stk[2] := "Negative Adjmt. (Qty.)";
                SetRange("Source No. Filter");
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Inventory Posting Group");
                CurrReport.CreateTotals(Stk[1], Stk[2], Stk[3], Stk[4], Stk[5], Stk[6], Stk[7], Stk[8], Stk[9]);
                AAA := 0;
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
                    field("Period Length"; PeriodLength)
                    {
                        ApplicationArea = All;
                    }
                    field("Page Orientation"; PageOrientation)
                    {
                        ApplicationArea = All;
                    }
                    field("Ending Date"; PeriodStartDate[5])
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin

            if PeriodStartDate[5] = 0D then
                PeriodStartDate[5] := CalcDate('<-1D>', WorkDate());
            if PeriodLength = '' then
                PeriodLength := Text001;
            DaysOnly := false;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        Bold := true;
        UnderLine := true;
        Italic := true;
        TopPage := true;
        PageOrientation := 1;
        FontSize := 7;
    end;

    trigger OnPreReport()
    begin
        ItemFilter := Item.GetFilters;

        PeriodStartDate[4] := CalcDate('-' + PeriodLength + '+1D', PeriodStartDate[5]);

        //PeriodStartDate[4] := CALCDATE('<+1D>',EndingDate);
        //PeriodStartDate[4] := CALCDATE('<-d>',CALCDATE("Comparison Date Formula",EndDate)
        //PeriodStartDate[4] := CALCDATE('<-D' + FORMAT(PeriodLength) + '-D>',PeriodStartDate[5]);
        //PeriodStartDate[4] := CALCDATE(PeriodLength+'-1D',PeriodStartDate[5]);
    end;

    var
        LastFieldNo: Integer;
        TotalFor: Label 'Total for ';
        ItemFilter: Text[250];
        PeriodStartDate: array[7] of Date;
        PeriodLength: Code[20];
        PrintLine: Boolean;
        Text001: Label '1D';
        Stk: array[9] of Decimal;
        Text004: Label 'As at ';
        DaysOnly: Boolean;
        TopPage: Boolean;
        Bold: Boolean;
        UnderLine: Boolean;
        Italic: Boolean;
        FontSize: Integer;
        PageOrientation: Option "Excel Default",Portrait,Landscape;
        Item_Report__Periodic_Movement_CaptionLbl: Label 'Item Report (Periodic Movement)';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Stk_6__CaptionLbl: Label 'Closing Stock';
        Stk_2__CaptionLbl: Label 'Receipt';
        Stk_3__CaptionLbl: Label 'Purchase';
        Stk_4__CaptionLbl: Label 'Issues';
        Stk_5__CaptionLbl: Label 'Sales';
        Stk_1__CaptionLbl: Label 'Opening Stock';
        Stk_7__CaptionLbl: Label 'Inventory';
        Stk_8__CaptionLbl: Label 'Transfer Shipment';
        AAA: Decimal;
        BBB: Decimal;
        CCC: Decimal;
        DDD: Decimal;
        Stk_9__CaptionLbl: Label 'Transfer Receipt';

    [Scope('OnPrem')]
    procedure UpdateCell(Row: Integer; Col: Integer; ValueText: Text[200]; Bold: Boolean; Italic: Boolean; Underline: Boolean; FontSize: Integer)
    begin
        /*xlSheet.Range(GetCol(Col)+FORMAT(Row)).Value := ValueText;
        IF Bold THEN
          xlSheet.Range(GetCol(Col)+FORMAT(Row)).Font.Bold := Bold;
        IF Italic THEN
          xlSheet.Range(GetCol(Col)+FORMAT(Row)).Font.Italic := Italic;
        IF Underline THEN
          xlSheet.Range(GetCol(Col)+FORMAT(Row)).Font.Underline := Underline;
        xlSheet.Range(GetCol(Col)+FORMAT(Row)).Font.Size := FontSize;*/
    end;

    [Scope('OnPrem')]
    procedure GetCol(CN: Integer): Text[30]
    var
        xlColID: Text[10];
        x: Integer;
        c: Integer;
        i: Integer;
    begin
        xlColID := '';
        if CN <> 0 then begin
            x := CN - 1;
            c := 65 + x mod 26;
            xlColID[10] := c;
            i := 10;
            while x > 25 do begin
                x := x div 26;
                i := i - 1;
                c := 64 + x mod 26;
                xlColID[i] := c;
            end;
            for x := i to 10 do
                xlColID[1 + x - i] := xlColID[x];
        end;
        exit(xlColID);
    end;
}
