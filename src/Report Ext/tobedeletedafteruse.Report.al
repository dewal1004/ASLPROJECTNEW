report 66778 "to be deleted after use"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/tobedeletedafteruse.rdlc';

    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Item No.", "Posting Date", "Entry Type", "Item Ledger Entry Type", "Item Charge No.", "Location Code", "Variant Code", "Expected Cost");
            RequestFilterFields = "Item No.";
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
            column(Value_Entry__Entry_No__; "Entry No.")
            {
            }
            column(Value_Entry__Item_No__; "Item No.")
            {
            }
            column(Value_EntryCaption; Value_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Value_Entry__Entry_No__Caption; FieldCaption("Entry No."))
            {
            }
            column(Value_Entry__Item_No__Caption; FieldCaption("Item No."))
            {
            }

            trigger OnAfterGetRecord()
            begin


                "Value Entry"."Cost per Unit" := 0;
                "Value Entry"."Sales Amount (Actual)" := 0;
                "Value Entry"."Discount Amount" := 0;
                "Value Entry"."Cost Amount (Actual)" := 0;
                "Value Entry"."Cost Posted to G/L" := 0;
                "Value Entry"."Cost Amount (Actual) (ACY)" := 0;
                "Value Entry"."Cost Posted to G/L (ACY)" := 0;
                "Value Entry"."Cost per Unit (ACY)" := 0;
                "Value Entry".Modify;
                if ITEM_REC.Get("Value Entry"."Item No.") then begin
                    ITEM_REC."Unit Cost" := 0;
                    ITEM_REC.Modify;
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
        ITEM_REC: Record Item;
        Value_EntryCaptionLbl: Label 'Value Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

