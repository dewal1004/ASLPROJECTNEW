report 99902 "Sort S/No."
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/SortSNo.rdlc';
    Caption = 'Sort S/No.';
    dataset
    {
        dataitem("Catch Default"; "Catch Default")
        {
            RequestFilterFields = "No.";
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
            column(Catch_Default__No__; "No.")
            {
            }
            column(Catch_Default__S_No__; "S/No.")
            {
            }
            column(Catch_Default__Statistics_Group_; "Statistics Group")
            {
            }
            column(Catch_DefaultCaption; Catch_DefaultCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Catch_Default__No__Caption; FieldCaption("No."))
            {
            }
            column(Catch_Default__S_No__Caption; FieldCaption("S/No."))
            {
            }
            column(Catch_Default__Statistics_Group_Caption; FieldCaption("Statistics Group"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*
                EVALUATE("S/No.","No.");
                MODIFY();
                */
            end;
        }
        dataitem("Job catch Default"; "Job catch Default")
        {
            trigger OnAfterGetRecord()
            begin
                /*
                EVALUATE("S/No.",Code);
                MODIFY();
                */
            end;
        }
        dataitem("Inventory Posting Group"; "Inventory Posting Group")
        {
            DataItemTableView = WHERE(Code = FILTER('1' .. '99999'));

            trigger OnAfterGetRecord()
            begin
                Evaluate("S/No.", Code);
                Modify();
            end;
        }
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("Inventory Posting Group", "Statistics Group") WHERE("Inventory Posting Group" = FILTER('1' .. '99999'));

            trigger OnAfterGetRecord()
            begin
                Evaluate("S/No.", "Inventory Posting Group");
                Modify();
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
        Catch_DefaultCaptionLbl: Label 'Catch Default';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
