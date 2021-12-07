report 70002 "ValuEntry-ItemEntry Diff"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/ValuEntryItemEntryDiff.rdlc';

    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Item No.", Inventoriable, "Expected Cost", "Valuation Date", "Location Code", "Variant Code");
            RequestFilterFields = "Item No.", "Location Code";
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
            column(Value_Entry__Cost_Posted_to_G_L_; "Cost Posted to G/L")
            {
            }
            column(Value_Entry__Cost_Amount__Actual__; "Cost Amount (Actual)")
            {
            }
            column(Value_Entry__Location_Code_; "Location Code")
            {
            }
            column(Value_Entry__Document_No__; "Document No.")
            {
            }
            column(Value_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Value_Entry__Item_No__; "Item No.")
            {
            }
            column(Value_Entry__Entry_No__; "Entry No.")
            {
            }
            column(Cost_Amount__Actual______Cost_Posted_to_G_L_; "Cost Amount (Actual)" - "Cost Posted to G/L")
            {
            }
            column(Value_Entry__Cost_Posted_to_G_L__Control1000000000; "Cost Posted to G/L")
            {
            }
            column(Value_Entry__Cost_Amount__Actual___Control1000000002; "Cost Amount (Actual)")
            {
            }
            column(Value_EntryCaption; Value_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Value_Entry__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Value_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Value_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Value_Entry__Location_Code_Caption; FieldCaption("Location Code"))
            {
            }
            column(Value_Entry__Cost_Amount__Actual__Caption; FieldCaption("Cost Amount (Actual)"))
            {
            }
            column(Value_Entry__Cost_Posted_to_G_L_Caption; FieldCaption("Cost Posted to G/L"))
            {
            }
            column(Value_Entry__Entry_No__Caption; FieldCaption("Entry No."))
            {
            }
            column(DiffCaption; DiffCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*
                IF SkipMatched THEN
                  IF "Value Entry"."Cost Amount (Actual)" = "Value Entry"."Cost Posted to G/L" THEN
                    CurrReport.SKIP;
                      */  //#1

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
        SkipMatched: Boolean;
        Value_EntryCaptionLbl: Label 'Value Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        DiffCaptionLbl: Label 'Diff';
}

