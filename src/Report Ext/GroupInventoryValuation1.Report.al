report 60018 "Group Inventory Valuation1"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/GroupInventoryValuation1.rdlc';

    dataset
    {
        dataitem("Gen. Product Posting Group"; "Gen. Product Posting Group")
        {
            CalcFields = "Inventory Value";
            DataItemTableView = WHERE("Show In Inventory Summary" = CONST(true));
            RequestFilterFields = "Code", "Date Filter";
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
            column(As_On_______GETFILTER__Date_Filter__; 'As On : ' + GetFilter("Date Filter"))
            {
            }
            column(Gen__Product_Posting_Group_Description; Description)
            {
            }
            column(StoresValue; StoresValue)
            {
            }
            column(VesselValue; VesselValue)
            {
            }
            column(LineTotal; LineTotal)
            {
            }
            column(GRAND_TOTAL_; 'GRAND TOTAL')
            {
            }
            column(StoresValue_Control1000000006; StoresValue)
            {
            }
            column(VesselValue_Control1000000007; VesselValue)
            {
            }
            column(LineTotal_Control1000000008; LineTotal)
            {
            }
            column(INVENTORY_VALUATION_PER_PRODUCT_GROUPCaption; INVENTORY_VALUATION_PER_PRODUCT_GROUPCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(DESCRIPTIONCaption; DESCRIPTIONCaptionLbl)
            {
            }
            column(TOTALCaption; TOTALCaptionLbl)
            {
            }
            column(VESSELSCaption; VESSELSCaptionLbl)
            {
            }
            column(STORESCaption; STORESCaptionLbl)
            {
            }
            column(Gen__Product_Posting_Group_Code; Code)
            {
            }

            trigger OnAfterGetRecord()
            begin

                if "Gen. Product Posting Group".GetFilter("Gen. Product Posting Group"."Date Filter") <> '' then begin
                    MinDate := "Gen. Product Posting Group".GetRangeMin("Gen. Product Posting Group"."Date Filter");
                    MaxDate := "Gen. Product Posting Group".GetRangeMax("Gen. Product Posting Group"."Date Filter");
                end;

                if MaxDate <> 0D then
                    ReportDate := MaxDate
                else
                    if MinDate <> 0D then
                        ReportDate := MinDate
                    else
                        ReportDate := WorkDate;


                StoresValue := GetValue(LocationType::Store);
                VesselValue := GetValue(LocationType::Vessel);

                LineTotal := StoresValue + VesselValue;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(StoresValue, VesselValue, LineTotal);
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
        LocationRec: Record Location;
        ValueRec: Record "Value Entry";
        StoresValue: Decimal;
        VesselValue: Decimal;
        ReportDate: Date;
        InvValue: Decimal;
        LocationType: Option Store,Vessel;
        LineTotal: Decimal;
        MinDate: Date;
        MaxDate: Date;
        INVENTORY_VALUATION_PER_PRODUCT_GROUPCaptionLbl: Label 'INVENTORY VALUATION PER PRODUCT GROUP';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        DESCRIPTIONCaptionLbl: Label 'DESCRIPTION';
        TOTALCaptionLbl: Label 'TOTAL';
        VESSELSCaptionLbl: Label 'VESSELS';
        STORESCaptionLbl: Label 'STORES';

    [Scope('OnPrem')]
    procedure GetValue(Loc: Option Store,Vessel): Decimal
    begin
        InvValue := 0;

        LocationRec.Reset;
        if Loc = Loc::Store then begin
            LocationRec.SetRange(LocationRec."Location Type", LocationRec."Location Type"::Store);
            LocationRec.Find('-');
            repeat
                "Gen. Product Posting Group".SetRange("Gen. Product Posting Group"."Location Filter", LocationRec.Code);
                "Gen. Product Posting Group".SetFilter("Gen. Product Posting Group"."Date Filter", '%1..%2', 0D, ReportDate);
                "Gen. Product Posting Group".CalcFields("Gen. Product Posting Group"."Inventory Value");
                InvValue := InvValue + "Gen. Product Posting Group"."Inventory Value";
            until (LocationRec.Next = 0);
        end
        else begin
            LocationRec.SetRange(LocationRec."Location Type", LocationRec."Location Type"::Vessel);
            LocationRec.Find('-');
            repeat
                "Gen. Product Posting Group".SetRange("Gen. Product Posting Group"."Location Filter", LocationRec.Code);
                "Gen. Product Posting Group".SetFilter("Gen. Product Posting Group"."Date Filter", '%1..%2', 0D, ReportDate);
                "Gen. Product Posting Group".CalcFields("Gen. Product Posting Group"."Inventory Value");
                InvValue := InvValue + "Gen. Product Posting Group"."Inventory Value";
            until (LocationRec.Next = 0);
        end;


        exit(InvValue);
    end;
}

