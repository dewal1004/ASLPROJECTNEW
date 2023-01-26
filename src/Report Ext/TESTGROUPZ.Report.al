report 50995 "TEST GROUPZ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/TESTGROUPZ.rdlc';

    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
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
            column(Job_Ledger_Entry__Location_Code_; "Location Code")
            {
            }
            column(Job_Ledger_Entry_GroupSort; GroupSort)
            {
            }
            column(Quantity__1; Quantity * -1)
            {
            }
            column(Job_Ledger_Entry__Unit_Cost_; "Unit Cost")
            {
            }
            column(Job_Ledger_Entry__Unit_Price_; "Unit Price")
            {
            }
            column(Quantity__1_Control29; Quantity * -1)
            {
            }
            column(Job_Ledger_Entry__Unit_Cost__Control30; "Unit Cost")
            {
            }
            column(Job_Ledger_Entry__Unit_Price__Control31; "Unit Price")
            {
            }
            column(Job_Ledger_Entry_GroupSort_Control14; GroupSort)
            {
            }
            column(TotalFor___FIELDCAPTION__Location_Code__; TotalFor + FieldCaption("Location Code"))
            {
            }
            column(Quantity__1_Control33; Quantity * -1)
            {
            }
            column(Job_Ledger_Entry__Unit_Cost__Control34; "Unit Cost")
            {
            }
            column(Job_Ledger_Entry__Unit_Price__Control35; "Unit Price")
            {
            }
            column(Job_Ledger_EntryCaption; Job_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job_Ledger_Entry_GroupSortCaption; FieldCaption(GroupSort))
            {
            }
            column(Quantity__1Caption; Quantity__1CaptionLbl)
            {
            }
            column(Job_Ledger_Entry__Unit_Cost_Caption; FieldCaption("Unit Cost"))
            {
            }
            column(Job_Ledger_Entry__Unit_Price_Caption; FieldCaption("Unit Price"))
            {
            }
            column(Job_Ledger_Entry__Location_Code_Caption; FieldCaption("Location Code"))
            {
            }
            column(Job_Ledger_Entry_Entry_No_; "Job Ledger Entry"."Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo(GroupSort);
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
        Job_Ledger_EntryCaptionLbl: Label 'Job Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Quantity__1CaptionLbl: Label 'Label21';
}

