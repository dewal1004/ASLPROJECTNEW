report 50185 "Daily Stock Position by Loc-FS"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/DailyStockPositionbyLocFS.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;

    dataset
    {
        dataitem(Location; Location)
        {
            DataItemTableView = WHERE("Location Type" = FILTER(Store), Code = FILTER(<> 'GNRL ASL'));
            column(Item_TABLECAPTION__________ItemFilter; Item.TableCaption + ': ' + ItemFilter)
            {
            }
            column(USERID; UserId)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(Period_Length_Used____PeriodLength; 'Period Length Used :' + PeriodLength)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(Text004_FORMAT_PeriodStartDate_4__; Text004 + Format(PeriodStartDate[4]))
            {
            }
            column(Text004_FORMAT_PeriodStartDate_5__; Text004 + Format(PeriodStartDate[5]))
            {
            }
            column(IssueName_5__; IssueName[5])
            {

            }
            column(IssueName_4__; IssueName[4])
            {

            }
            column(IssueName_3__; IssueName[3])
            {

            }
            column(IssueName_2__; IssueName[2])
            {

            }
            column(IssueName_1__; IssueName[1])
            {

            }
            column(Location_Code; Code)
            {
            }
            column(Location_Name; Name)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Report__Periodic_Movement_Caption; Item_Report__Periodic_Movement_CaptionLbl)
            {
            }
            column(SalesCaption; SalesCaptionLbl)
            {
            }
            column(PurchaseCaption; PurchaseCaptionLbl)
            {
            }
            column(Transfer_InCaption; Transfer_InCaptionLbl)
            {
            }
            column(ReceiptCaption; ReceiptCaptionLbl)
            {
            }
            column(Opening_StockCaption; Opening_StockCaptionLbl)
            {
            }
            column(DescriptionCaption; DescriptionCaptionLbl)
            {
            }
            column(No_Caption; No_CaptionLbl)
            {
            }
            column(Transfer_OutCaption; Transfer_OutCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Closing_StockCaption; Closing_StockCaptionLbl)
            {
            }
            column(Value_of_SalesCaption; Value_of_SalesCaptionLbl)
            {
            }
            column(Value_of_ComplimentCaption; Value_of_ComplimentCaptionLbl)
            {
            }
            column(Achieved_PriceCaption; Achieved_PriceCaptionLbl)
            {
            }
            column(Price_ListCaption; Price_ListCaptionLbl)
            {
            }
            dataitem(Item; Item)
            {
                DataItemTableView = SORTING("S/No.", "Gen. Prod. Posting Group") WHERE("Statistics Group" = FILTER(1 .. 4), Inventory = FILTER(<> 0));
                RequestFilterFields = "No.", "Statistics Group", "Location Filter";
                column(Item__Statistics_Group_; "Statistics Group")
                {
                }
                column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
                {
                }
                column(Item__No__; "No.")
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
                column(Stk_4__; Stk[4])
                {

                }
                column(Stk_10__; Stk[10])
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
                column(Stk_3__; Stk[3])
                {

                }
                column(Stk_9__; Stk[9])
                {

                }
                column(Stk_15__; Stk[15])
                {

                }
                column(Stk_16__; Stk[16])
                {

                }
                column(Stk_17__; Stk[17])
                {

                }
                column(Stk_22__; Stk[22])
                {

                }
                column(Stk_23__; Stk[23])
                {

                }
                column(Stk_24__; Stk[24])
                {

                }
                column(Stk_25__; Stk[25])
                {

                }
                column(Stk_21__; Stk[21])
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
                column(Stk_4___Control1000000105; Stk[4])
                {

                }
                column(Stk_10___Control1000000106; Stk[10])
                {

                }
                column(Stk_5___Control1000000107; Stk[5])
                {

                }
                column(Stk_3___Control1000000109; Stk[3])
                {

                }
                column(Stk_9___Control1000000110; Stk[9])
                {

                }
                column(Stk_15___Control1000000004; Stk[15])
                {

                }
                column(Stk_6___Control1000000005; Stk[6])
                {

                }
                column(Stk_7___Control1000000006; Stk[7])
                {

                }
                column(Stk_21___Control1000000029; Stk[21])
                {

                }
                column(Stk_22___Control1000000073; Stk[22])
                {

                }
                column(Stk_23___Control1000000074; Stk[23])
                {

                }
                column(Stk_24___Control1000000075; Stk[24])
                {

                }
                column(Stk_25___Control1000000076; Stk[25])
                {

                }
                column(TotalFor___FIELDCAPTION__Statistics_Group__; TotalFor + FieldCaption("Statistics Group"))
                {
                }
                column(Stk_1___Control1000000009; Stk[1])
                {

                }
                column(Stk_2___Control1000000010; Stk[2])
                {

                }
                column(Stk_4___Control1000000091; Stk[4])
                {

                }
                column(Stk_10___Control1000000092; Stk[10])
                {

                }
                column(Stk_5___Control1000000093; Stk[5])
                {

                }
                column(Stk_3___Control1000000095; Stk[3])
                {

                }
                column(Stk_9___Control1000000096; Stk[9])
                {

                }
                column(Stk_17___Control1000000007; Stk[17])
                {

                }
                column(Stk_16___Control1000000008; Stk[16])
                {

                }
                column(Stk_15___Control1000000011; Stk[15])
                {

                }
                column(Stk_6___Control1000000013; Stk[6])
                {

                }
                column(Stk_7___Control1000000014; Stk[7])
                {

                }
                column(Stk_21___Control1000000080; Stk[21])
                {

                }
                column(Stk_22___Control1000000083; Stk[22])
                {

                }
                column(Stk_23___Control1000000084; Stk[23])
                {

                }
                column(Stk_24___Control1000000085; Stk[24])
                {

                }
                column(Stk_25___Control1000000090; Stk[25])
                {

                }
                column(Stk_2___Control1000000068; Stk[2])
                {

                }
                column(Stk_1___Control1000000069; Stk[1])
                {

                }
                column(Stk_4___Control1000000077; Stk[4])
                {

                }
                column(Stk_10___Control1000000078; Stk[10])
                {

                }
                column(Stk_5___Control1000000079; Stk[5])
                {

                }
                column(Stk_3___Control1000000081; Stk[3])
                {

                }
                column(Stk_9___Control1000000082; Stk[9])
                {

                }
                column(Stk_15___Control1000000023; Stk[15])
                {

                }
                column(Stk_6___Control1000000024; Stk[6])
                {

                }
                column(Stk_7___Control1000000025; Stk[7])
                {

                }
                column(Stk_21___Control1000000094; Stk[21])
                {

                }
                column(Stk_22___Control1000000097; Stk[22])
                {

                }
                column(Stk_23___Control1000000098; Stk[23])
                {

                }
                column(Stk_24___Control1000000099; Stk[24])
                {

                }
                column(Stk_25___Control1000000104; Stk[25])
                {

                }
                column(Stk_11__; Stk[11])
                {

                }
                column(Stk_11___Control1000000062; Stk[11])
                {
                }
                column(Stk_12__; Stk[12])
                {
                }
                column(Stk_13__; Stk[13])
                {
                }
                column(Stk_14__; Stk[14])
                {
                }
                column(Stk_10___Control1000000072; Stk[10])
                {
                }
                column(Stk_16___Control1000000003; Stk[16])
                {
                }
                column(Item__Statistics_Group_Caption; FieldCaption("Statistics Group"))
                {
                }
                column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
                {
                }
                dataitem("Value Entry"; "Value Entry")
                {
                    DataItemLink = "Item No." = FIELD("No.");
                    DataItemTableView = SORTING("Location Code", "Posting Date", "Source Code") WHERE("Source Code" = CONST('SALES'));
                    column(Value_Entry__Entry_No__; "Entry No.")
                    {
                    }
                    column(Value_Entry__Item_No__; "Item No.")
                    {
                    }
                    column(Value_Entry__Posting_Date_; "Posting Date")
                    {
                    }
                    column(Value_Entry__Item_Ledger_Entry_Type_; "Item Ledger Entry Type")
                    {
                    }
                    column(SalesAmt; SalesAmt)
                    {
                    }
                    column(SalesQty; SalesQty)
                    {
                    }
                    column(SalesAmt_Control1000000087; SalesAmt)
                    {
                    }
                    column(SalesQty_Control1000000103; SalesQty)
                    {
                    }
                    column(SalesAmt_SalesQty; SalesAmt / SalesQty)
                    {
                    }
                    column(Item__No___Control1000000031; Item."No.")
                    {
                    }
                    column(Item_Description_Control1000000108; Item.Description)
                    {
                    }
                    column(Stk_1___Control1000000111; Stk[1])
                    {

                    }
                    column(Stk_2___Control1000000112; Stk[2])
                    {

                    }
                    column(Stk_3___Control1000000113; Stk[3])
                    {

                    }
                    column(Stk_4___Control1000000114; Stk[4])
                    {

                    }
                    column(Stk_5___Control1000000115; Stk[5])
                    {

                    }
                    column(Stk_9___Control1000000116; Stk[9])
                    {

                    }
                    column(Stk_21___Control1000000117; Stk[21])
                    {

                    }
                    column(Stk_22___Control1000000118; Stk[22])
                    {

                    }
                    column(Stk_23___Control1000000119; Stk[23])
                    {

                    }
                    column(Stk_24___Control1000000120; Stk[24])
                    {

                    }
                    column(Stk_25___Control1000000121; Stk[25])
                    {

                    }
                    column(Stk_10___Control1000000122; Stk[10])
                    {

                    }
                    column(Stk_6___Control1000000123; Stk[6])
                    {

                    }
                    column(Stk_7___Control1000000124; Stk[7])
                    {

                    }
                    column(Stk_15___Control1000000125; Stk[15])
                    {

                    }
                    column(Stk_16___Control1000000126; Stk[16])
                    {

                    }
                    column(SalesAmt_SalesQty_Control1000000127; SalesAmt / SalesQty)
                    {

                    }

                    trigger OnAfterGetRecord()
                    begin
                        //MESSAGE('Amt is %1',GetItPrice("Item No.","Posting Date"));
                        SalesAmt := SalesAmt + "Invoiced Quantity" * GetItPrice("Item No.", "Posting Date");
                        SalesQty := SalesQty + "Invoiced Quantity";
                    end;

                    trigger OnPreDataItem()
                    begin
                        "Value Entry".SetRange("Value Entry"."Location Code", Location.Code);
                        "Value Entry".SetRange("Value Entry"."Posting Date", PeriodStartDate[4], PeriodStartDate[5]);
                        CurrReport.CreateTotals(SalesAmt, SalesQty);
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    SetFilter("Date Filter", '');
                    CalcFields(Inventory);
                    //Stk[7]:=Inventory;

                    SetFilter("Date Filter", '%1..%2', 0D, PeriodStartDate[5]);
                    CalcFields(Inventory);
                    Stk[6] := Inventory;

                    SetFilter("Date Filter", '%1..%2', PeriodStartDate[4], PeriodStartDate[5]);
                    CalcFields("Purchases (Qty.)", "Sales (Qty.)", "Transferred (Qty.)", "Transferred (Qty.) From Loc", "Sales Value");
                    Stk[4] := "Purchases (Qty.)";
                    Stk[5] := "Sales (Qty.)";
                    Stk[7] := -"Sales Value";

                    Stk[8] := "Transferred (Qty.)";
                    Stk[9] := -"Transferred (Qty.) From Loc";
                    Stk[3] := Stk[8] + Stk[9];

                    //Take Care of Jobs Journal entry This has to be reverse when issued
                    CalcFields("Positive Adjmt. (Qty.)", "Negative Adjmt. (Qty.)", "Posve Adjmt. (Qty.)", "Negve Adjmt. (Qty.)");
                    Stk[2] := "Positive Adjmt. (Qty.)" + "Posve Adjmt. (Qty.)" - "Negve Adjmt. (Qty.)";     //Receipts
                    Stk[10] := "Negative Adjmt. (Qty.)" + "Posve Adjmt. (Qty.)" - "Negve Adjmt. (Qty.)";    //Issues
                    //Break issue into types
                    J := IssNos;
                    if (Stk[10] <> 0) and (J <> 0) then;
                    repeat
                        SetFilter("Issues Filter", IssueName[J]);
                        CalcFields("Negative Adjmt. (Qty.)", "Posve Adjmt. (Qty.)", "Negve Adjmt. (Qty.)");
                        Stk[20 + J] := "Negative Adjmt. (Qty.)" + "Posve Adjmt. (Qty.)" - "Negve Adjmt. (Qty.)";
                        J := J - 1;
                    until J = 0;
                    SetRange("Issues Filter");
                    SetRange("Source No. Filter");

                    SetFilter("Date Filter", '%1..%2', 0D, CalcDate('<1D>', PeriodStartDate[4]));
                    CalcFields(Inventory);
                    Stk[1] := Inventory;

                    SetFilter("Date Filter", '');
                    CalcFields("Purchases (Qty.)", "Sales (Qty.)", "Positive Adjmt. (Qty.)", "Negative Adjmt. (Qty.)", "Transferred (Qty.)");
                    CalcFields(Inventory);

                    if Stk[5] <> 0 then Stk[16] := Stk[7] / Stk[5] else Stk[16] := 0;
                    if "Unit Price" <> 0 then Stk[17] := "Unit Price" else Stk[17] := GetItPrice("No.", PeriodStartDate[5]);

                    if
                     (Stk[1] <> 0) or
                     (Stk[2] <> 0) or
                     (Stk[3] <> 0) or
                     (Stk[4] <> 0) or
                     (Stk[5] <> 0) or
                     (Stk[6] <> 0) or
                     (Stk[7] <> 0) or
                     (Stk[8] <> 0) then
                        PrintLine := true else
                        PrintLine := false;

                    if DaysOnly then begin
                        if
                         (Stk[2] <> 0) or
                         (Stk[3] <> 0) or
                         (Stk[4] <> 0) or
                         (Stk[5] <> 0) or
                         (Stk[8] <> 0) then
                            PrintLine := true else
                            PrintLine := false;
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo("Inventory Posting Group");
                    CurrReport.CreateTotals(Stk[1], Stk[2], Stk[3], Stk[4], Stk[5], Stk[6], Stk[7], Stk[8], Stk[9], Stk[10]);
                    CurrReport.CreateTotals(Stk[11], Stk[12], Stk[13], Stk[14], Stk[15], Stk[16], Stk[17]);
                    CurrReport.CreateTotals(Stk[21], Stk[22], Stk[23], Stk[24], Stk[25], Stk[26], Stk[27]);
                    SetFilter("Location Filter", Location.Code);
                end;
            }

            trigger OnPreDataItem()
            begin
                // IssueType.SETRANGE(IssueType.Others,TRUE);
                // IssueType.SETRANGE(IssueType.Type,1);
                IssNos := IssueType.Count;
                J := IssNos;
                //MESSAGE(FORMAT(J));
                if IssueType.Find('+') then
                    repeat
                        IssueName[J] := IssueType.Code;
                        J := J - 1;
                    until IssueType.Next(-1) = 0;
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
        ItemFilter := Item.GetFilters;
        PeriodStartDate[4] := CalcDate('-' + PeriodLength + '+1D', PeriodStartDate[5]);
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        "---": Integer;
        PriceList: Record "Sales Price";
        IssueType: Record "Standard Text";
        PrintLine: Boolean;
        DaysOnly: Boolean;
        i: Integer;
        J: Integer;
        IssNos: Integer;
        IssQty: array[10] of Decimal;
        Stk: array[40] of Decimal;
        SalesAmt: Decimal;
        SalesQty: Decimal;
        ItemFilter: Text[250];
        IssueName: array[10] of Text[30];
        PeriodLength: Code[20];
        Text001: Label '1D';
        Text002: Label 'Enter the ending date';
        Text003: Label '0D';
        Text004: Label 'As at ';
        Text011: Label '1M';
        PeriodStartDate: array[7] of Date;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Item_Report__Periodic_Movement_CaptionLbl: Label 'Item Report (Periodic Movement)';
        SalesCaptionLbl: Label 'Sales';
        PurchaseCaptionLbl: Label 'Purchase';
        Transfer_InCaptionLbl: Label 'Transfer In';
        ReceiptCaptionLbl: Label 'Receipt';
        Opening_StockCaptionLbl: Label 'Opening Stock';
        DescriptionCaptionLbl: Label 'Description';
        No_CaptionLbl: Label 'No.';
        Transfer_OutCaptionLbl: Label 'Transfer Out';
        TotalCaptionLbl: Label 'Total';
        Closing_StockCaptionLbl: Label 'Closing Stock';
        Value_of_SalesCaptionLbl: Label 'Value of Sales';
        Value_of_ComplimentCaptionLbl: Label 'Value of Compliment';
        Achieved_PriceCaptionLbl: Label 'Achieved Price';
        Price_ListCaptionLbl: Label 'Price List';

    // //[Scope('OnPrem')]
    procedure GetItPrice(Nos: Code[20]; PDays: Date): Decimal
    var
        Itempr: Record "Sales Price";
        jobsetup: Record "Jobs Setup";
        Prc: Decimal;
    begin
        Itempr.SetRange(Itempr."Item No.", Nos);
        Itempr.SetRange(Itempr."Starting Date", 0D, PDays);
        //IF Location.Code='FISH-SHOP' THEN Itempr.SETRANGE(Itempr."Price Group Code",'FS');
        if Itempr.Find('+') then
            Prc := Itempr."Unit Price" else begin
            //Itempr.SETRANGE(Itempr."Price Group Code",jobsetup."Default Price Group Code");
            if Itempr.Find('+') then
                Prc := Itempr."Unit Price" else begin
                Prc := 0;  //IF Flag THEN MESSAGE('Price Missing for Item %1',Nos);
            end;
        end;
        exit(Prc);
    end;
}

