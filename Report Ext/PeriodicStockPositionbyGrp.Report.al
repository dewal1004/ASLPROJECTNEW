/// <summary>
/// Report Periodic Stock Position by Grp (ID 50184).
/// </summary>
report 50184 "Periodic Stock Position by Grp"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PeriodicStockPositionbyGrp.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("Item Category Code", "No. 2");
            RequestFilterFields = "No.", "Item Category Code", "Statistics Group", "Location Filter";
            column(COMPANYNAME; CompanyName)
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
            column(Item__Item_Category_Code_; "Item Category Code")
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
            column(Item__Item_Category_Code__Control1000000034; "Item Category Code")
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
            column(Item_Report__Periodic_Movement_Caption; Item_Report__Periodic_Movement_CaptionLbl)
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
            column(Item__Item_Category_Code_Caption; FieldCaption("Item Category Code"))
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }
            column(EndingDate; "Ending Date")
            {
            }
            column(PrintLine; PrintLine)
            {
            }
            column(Item_Inventory; Item.Inventory)
            {
            }

            trigger OnAfterGetRecord()
            begin

                if PeriodStartDate[5] = 0D then
                    Error(Text002);

                if PeriodLength = '' then
                    PeriodLength := Text003;

                // CurrReport.ShowOutput := FooterPrinted;  //***Refactor
                FooterPrinted := false;

                //***Refactor  - Currentoutput should be handled through RDLC
                // CurrReport.ShowOutput :=
                //   CurrReport.TotalsCausedBy = Item.FieldNo("Item Category Code");
                // CurrReport.ShowOutput(false);

                // CurrReport.ShowOutput :=
                //   CurrReport.TotalsCausedBy = Item.FieldNo("Inventory Posting Group");
                // CurrReport.ShowOutput(false);

                // CurrReport.ShowOutput :=
                //   CurrReport.TotalsCausedBy = LastFieldNo;

                // CurrReport.ShowOutput(PrintLine);
                // CurrReport.ShowOutput(false);

                // if not FooterPrinted then
                //     LastFieldNo := CurrReport.TotalsCausedBy;
                // CurrReport.ShowOutput := not FooterPrinted;
                // FooterPrinted := true;

                // CurrReport.ShowOutput :=
                //   CurrReport.TotalsCausedBy = Item.FieldNo("Inventory Posting Group");
                // CurrReport.ShowOutput(false);

                // CurrReport.ShowOutput :=
                //   CurrReport.TotalsCausedBy = Item.FieldNo("Item Category Code");
                //CurrReport.SHOWOUTPUT(FALSE);

                SetFilter("Date Filter", '');
                CalcFields(Inventory);
                Stk[7] := Inventory;

                SetFilter("Date Filter", '%1..%2', 0D, PeriodStartDate[5]);
                CalcFields(Inventory);
                Stk[6] := Inventory;

                SetFilter("Date Filter", '%1..%2', PeriodStartDate[4], PeriodStartDate[5]);
                CalcFields("Purchases (Qty.)", "Sales (Qty.)", "Transferred (Qty.)");
                Stk[3] := "Purchases (Qty.)";
                Stk[5] := "Sales (Qty.)";
                Stk[8] := "Transferred (Qty.)";

                //Take Care of Jobs Journal entry This has to be reverse when issued
                CalcFields("Positive Adjmt. (Qty.)", "Negative Adjmt. (Qty.)");//,"Posve Adjmt. (Qty.)","Negve Adjmt. (Qty.)");
                Stk[2] := "Positive Adjmt. (Qty.)" + "Posve Adjmt. (Qty.)" - "Negve Adjmt. (Qty.)";
                Stk[4] := "Negative Adjmt. (Qty.)" + "Posve Adjmt. (Qty.)" - "Negve Adjmt. (Qty.)";
                SetRange("Source No. Filter");

                SetFilter("Date Filter", '%1..%2', 0D, CalcDate('<-1D>', PeriodStartDate[4]));
                CalcFields(Inventory);
                Stk[1] := Inventory;

                SetFilter("Date Filter", '');
                CalcFields("Purchases (Qty.)", "Sales (Qty.)", "Positive Adjmt. (Qty.)", "Negative Adjmt. (Qty.)", "Transferred (Qty.)");
                CalcFields(Inventory);

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

                ItemFilter := Item.GetFilters;
                PeriodStartDate[4] := CalcDate('-' + PeriodLength + '+1D', PeriodStartDate[5]); //#
            end;

            trigger OnPostDataItem()
            begin
                /*
                SETFILTER("Source No. Filter",'''');
                CALCFIELDS("Positive Adjmt. (Qty.)","Negative Adjmt. (Qty.)");
                Stk[2]:="Positive Adjmt. (Qty.)";
                Stk[4]:="Negative Adjmt. (Qty.)";

                SETFILTER("Source No. Filter",'<>''');
                CALCFIELDS("Positive Adjmt. (Qty.)","Negative Adjmt. (Qty.)");
                Stk[4]:="Positive Adjmt. (Qty.)";
                Stk[2]:="Negative Adjmt. (Qty.)";
                SETRANGE("Source No. Filter");

                */

            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("Inventory Posting Group");
                CurrReport.CreateTotals(Stk[1], Stk[2], Stk[3], Stk[4], Stk[5], Stk[6], Stk[7], Stk[8]);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field("Ending Date"; PeriodStartDate[5])
                    {
                    }
                    field("Period Length"; PeriodLength)
                    {
                    }
                    field("Days Only"; DaysOnly)
                    {
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
        PeriodStartDate[4] := CalcDate('-' + PeriodLength + '+1D', PeriodStartDate[5]);
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        "---": Integer;
        ItemFilter: Text[250];
        PeriodStartDate: array[7] of Date;
        PeriodLength: Code[20];
        i: Integer;
        PrintLine: Boolean;
        Text001: Label '1D';
        Text002: Label 'Enter the ending date';
        Text003: Label '0D';
        Stk: array[8] of Decimal;
        Text004: Label 'As at ';
        DaysOnly: Boolean;
        Item_Report__Periodic_Movement_CaptionLbl: Label 'Item Report (Periodic Movement)';
        Stk_6__CaptionLbl: Label 'Closing Stock';
        Stk_2__CaptionLbl: Label 'Receipt';
        Stk_3__CaptionLbl: Label 'Purchase';
        Stk_4__CaptionLbl: Label 'Issues';
        Stk_5__CaptionLbl: Label 'Sales';
        Stk_1__CaptionLbl: Label 'Opening Stock';
        Stk_7__CaptionLbl: Label 'Inventory';
        Stk_8__CaptionLbl: Label 'Transfer';
        "Ending Date": Date;
}

