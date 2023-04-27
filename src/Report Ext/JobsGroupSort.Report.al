report 93405 "Jobs Group Sort"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/JobsGroupSort.rdlc';

    dataset
    {
        dataitem("Job catch Default"; "Job catch Default")
        {
            DataItemTableView = SORTING("No.", GroupSort) WHERE("No." = FILTER('J03182' | 'J03190' .. 'J03219' | 'J03222' | 'J03224' | 'J03225' | 'J03229' | 'J03230' | 'J03232'));
            RequestFilterFields = "No.", GroupSort;
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
            column(Job_catch_Default__No__; "No.")
            {
            }
            column(Job_catch_Default_GroupSort; GroupSort)
            {
            }
            column(Job_catch_Default__No___Control14; "No.")
            {
            }
            column(Job_catch_Default_Code; Code)
            {
            }
            column(Job_catch_Default__Budget_Quantity_; "Budget Quantity")
            {
            }
            column(PrdPrc; PrdPrc)
            {
            }
            column(NairaVal; NairaVal)
            {
            }
            column(Job_catch_Default__Budget_Quantity__Control26; "Budget Quantity")
            {
            }
            column(Job_catch_Default__No___Control1000000002; "No.")
            {
            }
            column(Job_catch_Default_GroupSort_Control1000000003; GroupSort)
            {
            }
            column(PrdPrc_Control1000000004; PrdPrc)
            {
            }
            column(TotalFor___FIELDCAPTION_GroupSort_; TotalFor + FieldCaption(GroupSort))
            {
            }
            column(NairaVal_Control1000000009; NairaVal)
            {
            }
            column(Job_catch_Default__Budget_Quantity__Control28; "Budget Quantity")
            {
            }
            column(Job_catch_Default__No___Control1000000001; "No.")
            {
            }
            column(PrdPrc_Control1000000007; PrdPrc)
            {
            }
            column(TotalFor___FIELDCAPTION__No___; TotalFor + FieldCaption("No."))
            {
            }
            column(NairaVal_Control1000000010; NairaVal)
            {
            }
            column(Job_catch_Default__Budget_Quantity__Control1000000000; "Budget Quantity")
            {
            }
            column(PrdPrc_Control1000000008; PrdPrc)
            {
            }
            column(NairaVal_Control1000000011; NairaVal)
            {
            }
            column(Comment_LineCaption; Comment_LineCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_catch_Default__No___Control14Caption; FieldCaption("No."))
            {
            }
            column(Job_catch_Default_CodeCaption; FieldCaption(Code))
            {
            }
            column(Job_catch_Default__Budget_Quantity_Caption; FieldCaption("Budget Quantity"))
            {
            }
            column(Control24Caption; Control24CaptionLbl)
            {
            }
            column(Job_catch_Default__No__Caption; FieldCaption("No."))
            {
            }
            column(Job_catch_Default_GroupSortCaption; FieldCaption(GroupSort))
            {
            }
            column(Job_catch_Default_Table_Name; "Table Name")
            {
            }
            column(Job_catch_Default_Pack_Size; "Pack Size")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if UOM.Get("Pack Size") then
                    ItNos := Format(Code) + UOM."Catch Code" + CopyStr(Brand, 1, 1);
                qty := "Budget Quantity";

                Itempr.SetRange(Itempr."Item No.", ItNos);
                Itempr.SetRange(Itempr."Starting Date", 0D);
                if Itempr.Find('+') then
                    Prc := Itempr."Unit Price" else begin
                    Prc := 0;
                    if Flag then Message('Price Missing for Item %1', "No.");
                end;
                PrdPrc := qty * Prc;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo(GroupSort);
                Flag := false;
                CurrReport.CreateTotals(PrdPrc, NairaVal);

                CurrExc.SetRange(CurrExc."Currency Code", 'USD');
                CurrExc.SetRange(CurrExc."Starting Date", 0D);
                if CurrExc.Find('+') then begin
                    CurrRate := CurrExc."Relational Exch. Rate Amount";
                    //MESSAGE('EXCHANGE VALUE IS %1',CurrExc."Relational Exch. Rate Amount")
                end
                else
                    CurrRate := 1;

                if Itempr."Currency Code" <> '' then begin
                    PrdPrc := qty * Prc;
                    NairaVal := PrdPrc * CurrRate
                end
                else begin
                    NairaVal := qty * Prc;
                    PrdPrc := 0;
                end;
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

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        "---------------": Integer;
        Itempr: Record "Sales Price";
        UOM: Record "Unit of Measure";
        CurrExc: Record "Currency Exchange Rate";
        Flag: Boolean;
        qty: Integer;
        Prc: Decimal;
        PrdPrc: Decimal;
        NairaVal: Decimal;
        CurrRate: Decimal;
        ItNos: Code[10];
        UOMCd: Code[10];
        ItemVar: Code[10];
        Comment_LineCaptionLbl: Label 'Comment Line';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Control24CaptionLbl: Label 'Label24';
}

