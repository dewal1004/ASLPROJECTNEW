report 50060 "Issues To Cost Centers"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/IssuesToCostCenters.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Reason Code", "External Document No.", "Gen. Prod. Posting Group", "Posting Date", "Item Ledger Entry Type");
            RequestFilterFields = "Reason Code", "External Document No.", "Gen. Prod. Posting Group", "Posting Date";
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
            column(Value_Entry__Reason_Code_; "Reason Code")
            {
            }
            column(Value_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Value_Entry__Document_No__; "Document No.")
            {
            }
            column(Value_Entry__Item_No__; "Item No.")
            {
            }
            column(Value_Entry__Valued_Quantity_; "Valued Quantity")
            {
            }
            column(Value_Entry__Cost_Amount__Actual__; "Cost Amount (Actual)")
            {
            }
            column(ITEM_REC_Description; ITEM_REC.Description)
            {
            }
            column(Value_Entry__Gen__Prod__Posting_Group_; "Gen. Prod. Posting Group")
            {
            }
            column(Value_Entry__Cost_Amount__Actual___Control1000000021; "Cost Amount (Actual)")
            {
            }
            column(Value_Entry__External_Document_No__; "External Document No.")
            {
            }
            column(Value_Entry__Cost_Amount__Actual___Control1000000020; "Cost Amount (Actual)")
            {
            }
            column(Report_Description; Report_Description)
            {
            }
            column(Value_Entry__Cost_Amount__Actual___Control1000000012; "Cost Amount (Actual)")
            {
            }
            column(Value_Entry__Reason_Code__Control1000000002; "Reason Code")
            {
            }
            column(Value_EntryCaption; Value_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Value_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Value_Entry__Document_No__Caption; FieldCaption("Document No."))
            {
            }
            column(Value_Entry__Item_No__Caption; FieldCaption("Item No."))
            {
            }
            column(Value_Entry__Valued_Quantity_Caption; FieldCaption("Valued Quantity"))
            {
            }
            column(Value_Entry__Cost_Amount__Actual__Caption; FieldCaption("Cost Amount (Actual)"))
            {
            }
            column(DescriptionCaption; DescriptionCaptionLbl)
            {
            }
            column(Value_Entry__Reason_Code_Caption; FieldCaption("Reason Code"))
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(GroupCaption; GroupCaptionLbl)
            {
            }
            column(CostCenterCaption; CostCenterCaptionLbl)
            {
            }
            column(TotalCaption_Control1000000013; TotalCaption_Control1000000013Lbl)
            {
            }
            column(Value_Entry__Reason_Code__Control1000000002Caption; FieldCaption("Reason Code"))
            {
            }
            column(Value_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin

                if ITEM_REC.Get("Value Entry"."Item No.") then
                    ITEM_REC.Description := ITEM_REC.Description else
                    ITEM_REC.Description := '';
                "Value Entry"."Cost Amount (Actual)" := "Value Entry"."Cost Amount (Actual)" * (-1);
                "Value Entry"."Valued Quantity" := "Value Entry"."Valued Quantity" * (-1);
                if FA_REC.Get("Value Entry"."External Document No.") then
                    Report_Description := FA_REC.Description else
                    Report_Description := '';
            end;

            trigger OnPreDataItem()
            begin
                "Value Entry".SetRange("Value Entry"."Item Ledger Entry Type", 2, 3);
                //"Value Entry".SETFILTER("Value Entry"."Gen. Prod. Posting Group",'<>%1','FIS');
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
            }
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
        FA_REC: Record "Fixed Asset";
        Report_Description: Text[50];
        Value_EntryCaptionLbl: Label 'Value Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        DescriptionCaptionLbl: Label 'Description';
        TotalCaptionLbl: Label 'Total';
        GroupCaptionLbl: Label 'Group';
        CostCenterCaptionLbl: Label 'CostCenter';
        TotalCaption_Control1000000013Lbl: Label 'Total';
}

