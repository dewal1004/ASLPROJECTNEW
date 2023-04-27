/// <summary>
/// Report Stock On Board (ID 50213).
/// </summary>
report 50213 "Stock On Board"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/StockOnBoard.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("Item Category Code", "No. 2");
            RequestFilterFields = "No.", "Item Category Code", "Statistics Group", "Location Filter", "Source No. Filter";
            column(COMPANYNAME; CompanyName)
            {
            }
            column(Item_TABLECAPTION__________ItemFilter; Item.TableCaption + ': ' + ItemFilter)
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
            column(TotalFor___FIELDCAPTION__Inventory_Posting_Group__; TotalFor + FieldCaption("Inventory Posting Group"))
            {
            }
            column(Stk_6___Control1000000005; Stk[6])
            {
            }
            column(Stk_6___Control1000000011; Stk[6])
            {
            }
            column(Item__Item_Category_Code__Control1000000034; "Item Category Code")
            {
            }
            column(ItemCategory_Description; ItemCategory.Description)
            {
            }
            column(Stk_6___Control1000000026; Stk[6])
            {
            }
            column(Stock_On_BoardCaption; Stock_On_BoardCaptionLbl)
            {
            }
            column(Item__No__Caption; Item__No__CaptionLbl)
            {
            }
            column(Item_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Stk_6__Caption; Stk_6__CaptionLbl)
            {
            }
            column(Item__Item_Category_Code_Caption; FieldCaption("Item Category Code"))
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FieldCaption("Inventory Posting Group"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                SetFilter("Date Filter", '');
                CalcFields(Inventory);
                Stk[7] := Inventory;

                SetFilter("Date Filter", '%1..%2', 0D, PeriodStartDate[5]);
                CalcFields("Net Change");
                Stk[6] := "Net Change";
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
        }

        actions
        {
        }
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
        ItemCategory: Record "Item Category";
        "------------------------------": Integer;
        // xlApp: Automation BC;
        // xlBook: Automation BC;
        // xlSheet: Automation BC;
        Send2Excel: Boolean;
        TopPage: Boolean;
        Xr: Integer;
        Xc: Integer;
        Bold: Boolean;
        UnderLine: Boolean;
        Italic: Boolean;
        FontSize: Integer;
        PageOrientation: Option "Excel Default",Portrait,Landscape;
        Window: Dialog;
        Stock_On_BoardCaptionLbl: Label 'Stock On Board';
        Item__No__CaptionLbl: Label 'Code';
        Stk_6__CaptionLbl: Label 'Closing Stock';

    [Scope('OnPrem')]
    procedure UpdateCell(Row: Integer; Col: Integer; ValueText: Text[200]; Bold: Boolean; Italic: Boolean; Underline: Boolean; FontSize: Integer)
    begin
        // xlSheet.Range(GetCol(Col) + Format(Row)).Value := ValueText;
        // if Bold then
        //     xlSheet.Range(GetCol(Col) + Format(Row)).Font.Bold := Bold;
        // if Italic then
        //     xlSheet.Range(GetCol(Col) + Format(Row)).Font.Italic := Italic;
        // if Underline then
        //     xlSheet.Range(GetCol(Col) + Format(Row)).Font.Underline := Underline;
        // xlSheet.Range(GetCol(Col) + Format(Row)).Font.Size := FontSize;
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

