/// <summary>
/// Report Transfer Processing/Fish Shop (ID 50059).
/// </summary>
report 50059 "Transfer Processing/Fish Shop"
{
    // UNL-ASL3.60.01.005 (Santus) May 17, 2005
    // -> New report for display of transfer to processing// 
    // UNL-ASL3.60.01.006 (Santus) May 17, 2005// 
    // 
    // -> modified report to handle display of both transfer to processing and transfer to fish shop,
    //   added transfer to excel functionality
    // 
    // UNL-ASL3.60.01.007 (Santus) July 15, 2014
    // -> modified report to add all Fish Shop locations (total 9 as of this editing).
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/TransferProcessingFishShop.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Inventory Posting Group", "Item No.", "Posting Date", "Location Code", "External Document No.");
            RequestFilterFields = "Posting Date", "Item No.", "Inventory Posting Group";
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
            column(Transfer_To_____FORMAT_ReportOptions_; 'Transfer To ' + Format(ReportOptions))
            {
            }
            column(GETFILTERS; GetFilters)
            {
            }
            column(SerialNo; SerialNo)
            {
            }
            column(sno; Sno)
            {
            }
            column(Value_Entry__Item_No__; "Item No.")
            {
            }
            column(ItemRec_Description; ItemRec.Description)
            {
            }
            column(Qty_1_; Qty[1])
            {
            }
            column(valqty; ValQty)
            {
            }
            column(Qty_2_; Qty[2])
            {
            }
            column(Total; Total)
            {
            }
            column(ReportOptions; ReportOptions)
            {
            }
            column(test1; Test1)
            {
            }
            column(Test2; Test2)
            {
            }
            column(SerialNo_Control1000000079; SerialNo)
            {
            }
            column(Value_Entry__Item_No___Control1000000080; "Item No.")
            {
            }
            column(ItemRec_Description_Control1000000081; ItemRec.Description)
            {
            }
            column(c; "Valued Quantity")
            {
            }
            column(Qty_1__Control1000000021; Qty[1])
            {
            }
            column(Qty_2__Control1000000022; Qty[2])
            {
            }
            column(Qty_3_; Qty[3])
            {
            }
            column(Value_Entry__Valued_Quantity__Control1000000077; "Valued Quantity")
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Qty_2_Caption; Qty_2_CaptionLbl)
            {
            }
            column(Qty_1_Caption; Qty_1_CaptionLbl)
            {
            }
            column(ItemRec_DescriptionCaption; ItemRec_DescriptionCaptionLbl)
            {
            }
            column(Value_Entry__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(SerialNoCaption; SerialNoCaptionLbl)
            {
            }
            column(Item_DescriptionCaption; Item_DescriptionCaptionLbl)
            {
            }
            column(Item_No_Caption; Item_No_CaptionLbl)
            {
            }
            column(S_NCaption; S_NCaptionLbl)
            {
            }
            column(Value_Entry__Valued_Quantity_Caption; Value_Entry__Valued_Quantity_CaptionLbl)
            {
            }
            column(TotalCaption_Control1000000018; TotalCaption_Control1000000018Lbl)
            {
            }
            column(TotalCaption_Control1000000075; TotalCaption_Control1000000075Lbl)
            {
            }
            column(Value_Entry_Entry_No_; "Entry No.")
            {
            }
            column(Value_Entry_Inventory_Posting_Group; "Inventory Posting Group")
            {
            }

            trigger OnAfterGetRecord()
            begin
                Sno += 1;
                SerialNo += 1;
                ItemRec.Get("Value Entry"."Item No.");

                if ReportOptions = ReportOptions::Processing then begin
                    case "Value Entry"."Item Ledger Entry Type" of
                        "Value Entry"."Item Ledger Entry Type"::"Positive Adjmt.":
                            begin
                                Qty[2] := "Value Entry"."Valued Quantity";
                            end;
                        "Value Entry"."Item Ledger Entry Type"::"Negative Adjmt.":
                            begin
                                Qty[1] := "Value Entry"."Valued Quantity";
                            end;
                    end;

                    Qty[3] := Qty[1] + Qty[2];
                end;
                if ReportOptions = ReportOptions::"Fish Shop" then
                    Test1 := true;
                if ReportOptions = ReportOptions::Processing then
                    Test2 := true;
                ValQty := "Value Entry"."Valued Quantity";
            end;

            trigger OnPreDataItem()
            begin
                Bold := true;
                UnderLine := true;
                Italic := true;
                TopPage := true;
                PageOrientation := 1;
                FontSize := 7;

                CurrReport.CreateTotals(Qty);
                SerialNo := 0;



                Sno := 0;

                case ReportOptions of
                    0:
                        begin

                            SetRange("Location Code", 'CRM-ASL');
                            SetRange("External Document No.", 'PROCESS');
                            SetRange("Source Code", 'ITEMJNL');
                            SetRange("Reason Code", 'CRMISSUE');
                            SetFilter("Item Ledger Entry Type", '%1|%2', 2, 3);
                            SetRange("Gen. Prod. Posting Group", 'FIS');
                            ShowProcess := true;
                        end;
                    1:
                        begin
                            //SETRANGE("Location Code",'ABFISHSHOP|APFISHSHOP|FESTACFS|FISH-SHOP|IBADANFS|IKFISHSHOP|LEKKIFSHOP|SUFISHSHOP|VIFISHSHOP');
                            SetFilter("Location Code", FishShopFilter);
                            SetRange("Source Code", 'TRANSFER');
                            SetRange("Gen. Prod. Posting Group", 'FIS');
                            ShowProcess := false;
                        end;
                end;


                //UNL-ASL3.60.01.007
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
                    field("Transfer To:"; ReportOptions)
                    {
                        Caption = 'Transfer To:';
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

    trigger OnInitReport()
    begin
        FishShopFilter := 'ABFISHSHOP|APFISHSHOP|FESTACFS|FISH-SHOP|IBADANFS|IKFISHSHOP|LEKKIFSHOP|SUFISHSHOP|VIFISHSHOP';
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        ItemRec: Record Item;
        Qty: array[3] of Decimal;
        Total: Decimal;
        SerialNo: Integer;
        ReportOptions: Option Processing,"Fish Shop";
        ShowProcess: Boolean;
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
        FishShopFilter: Code[250];
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        TotalCaptionLbl: Label 'Total';
        Qty_2_CaptionLbl: Label 'Positive Adjmt.';
        Qty_1_CaptionLbl: Label 'Negative Adjmt.';
        ItemRec_DescriptionCaptionLbl: Label 'Item Description';
        SerialNoCaptionLbl: Label 'S/N';
        Item_DescriptionCaptionLbl: Label 'Item Description';
        Item_No_CaptionLbl: Label 'Item No.';
        S_NCaptionLbl: Label 'S/N';
        Value_Entry__Valued_Quantity_CaptionLbl: Label 'Total';
        TotalCaption_Control1000000018Lbl: Label 'Total';
        TotalCaption_Control1000000075Lbl: Label 'Total';
        Sno: Integer;
        Test1: Boolean;
        Test2: Boolean;
        ValQty: Decimal;

    //[Scope('OnPrem')]
    procedure UpdateCell(Row: Integer; Col: Integer; ValueText: Text[1024]; Bold: Boolean; Italic: Boolean; Underline: Boolean; FontSize: Integer)
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

    //[Scope('OnPrem')]
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

