report 99987 "Value Entry Opening Balance"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ValueEntryOpeningBalance.rdlc';
    Caption = 'Value Entry Opening Balance';
    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING("Entry No.") WHERE("Entry No." = FILTER(1 .. 1608));
            RequestFilterFields = "Entry No.";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
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
            column(Value_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Value_Entry__Source_Code_; "Source Code")
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
            column(Value_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
            {
            }
            column(Value_Entry__Source_Code_Caption; FieldCaption("Source Code"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                //"Source Code":='OPBL';  //Opening Balance Location
                //MODIFY();
            end;
        }
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemTableView = SORTING("Entry No.") WHERE("Entry No." = FILTER(1 .. 1608));

            trigger OnAfterGetRecord()
            begin
                "Source Code" := 'OPBL';  //Opening Balance Location
                //MODIFY();
            end;
        }
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            DataItemTableView = SORTING("No.") WHERE("No." = FILTER('69' .. '1690'), "Source Code" = FILTER(<> ''));

            trigger OnAfterGetRecord()
            begin
                "Source Code" := 'OPBL';  //Opening Balance Location
                //MODIFY();
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
        Value_EntryCaptionLbl: Label 'Value Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
