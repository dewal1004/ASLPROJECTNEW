report 50118 "Group Inventory Valuatn By IPG"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/GroupInventoryValuatnByIPG.rdlc';

    dataset
    {
        dataitem(InvtPG; "Inventory Posting Group")
        {
            CalcFields = Value;
            DataItemTableView = SORTING("Statistics Group") WHERE("Statistics Group" = CONST(0), "In Use" = CONST(true));
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
            column(AsOf_PeriodText; AsOf + PeriodText)
            {
            }
            column(InvtPG_Description; Description)
            {
            }
            column(InvtPG_Value; Value)
            {
            }
            column(GRAND_TOTAL_; 'GRAND TOTAL')
            {
            }
            column(StoresValue; StoresValue)
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
            column(InvtPG_ValueCaption; FieldCaption(Value))
            {
            }
            column(InvtPG_Code; Code)
            {
            }

            trigger OnAfterGetRecord()
            begin

                SetFilter("Location Filter", InvtSetup."Default Store");
                CalcFields(Value);
                StoresValue := Value;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(StoresValue);
                InvtSetup.Get;
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
        PeriodText := InvtPG.GetFilter("Date Filter");
        if PeriodText = '' then PeriodText := Format(WorkDate);
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        "----------------": Integer;
        InvtSetup: Record "Inventory Setup";
        StoresValue: Decimal;
        AsOf: Label 'As Of ';
        PeriodText: Text[50];
        INVENTORY_VALUATION_PER_PRODUCT_GROUPCaptionLbl: Label 'INVENTORY VALUATION PER PRODUCT GROUP';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        DESCRIPTIONCaptionLbl: Label 'DESCRIPTION';
}

