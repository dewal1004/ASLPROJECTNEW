report 90187 "Periodic Stock PositionX"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/PeriodicStockPositionX.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
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
            column(Item__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
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
                group(Options)
                {
                    field("PeriodStartDate[5]"; PeriodStartDate[5])
                    {
                        ShowCaption = false;
                    }
                    field(PeriodLength; PeriodLength)
                    {
                        ShowCaption = false;
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
        Text001: Label '1M';
        Text002: Label 'Enter the ending date';
        Text003: Label '0D';
        Stk: array[8] of Decimal;
        Text004: Label 'As at ';
        DaysOnly: Boolean;
        Item_Report__Periodic_Movement_CaptionLbl: Label 'Item Report (Periodic Movement)';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Stk_6__CaptionLbl: Label 'Closing Stock';
        Stk_2__CaptionLbl: Label 'Receipt';
        Stk_3__CaptionLbl: Label 'Purchase';
        Stk_4__CaptionLbl: Label 'Issues';
        Stk_5__CaptionLbl: Label 'Sales';
        Stk_1__CaptionLbl: Label 'Opening Stock';
        Stk_7__CaptionLbl: Label 'Inventory';
        Stk_8__CaptionLbl: Label 'Transfer';
}

