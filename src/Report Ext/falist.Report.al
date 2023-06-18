report 99332 "fa list"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/falist.rdlc';
    Caption = 'fa list';
    dataset
    {
        dataitem("Fixed Asset"; "Fixed Asset")
        {
            DataItemTableView = SORTING("No.") WHERE("FA Class Code" = CONST('MOVE'));
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
            column(Fixed_Asset__No__; "No.")
            {
            }
            column(Fixed_Asset_Description; Description)
            {
            }
            column(Fixed_Asset__FA_Location_Code_; "FA Location Code")
            {
            }
            column(Fixed_Asset__Maintenance_Amt_; "Maintenance Amt")
            {
            }
            column(Fixed_Asset_Maintenance; Maintenance)
            {
            }
            column(Fixed_AssetCaption; Fixed_AssetCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Fixed_Asset__No__Caption; FieldCaption("No."))
            {
            }
            column(Fixed_Asset_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Fixed_Asset__FA_Location_Code_Caption; FieldCaption("FA Location Code"))
            {
            }
            column(Fixed_Asset__Maintenance_Amt_Caption; FieldCaption("Maintenance Amt"))
            {
            }
            column(Fixed_Asset_MaintenanceCaption; FieldCaption(Maintenance))
            {
            }
        }
        dataitem(FA; "Fixed Asset")
        {
            DataItemTableView = SORTING("Maintenance Amt") ORDER(Descending) WHERE("FA Class Code" = CONST('MOVE'));
            column(FA_Maintenance; Maintenance)
            {
            }
            column(FA__Maintenance_Amt_; "Maintenance Amt")
            {
            }
            column(FA__FA_Location_Code_; "FA Location Code")
            {
            }
            column(FA_Description; Description)
            {
            }
            column(FA__No__; "No.")
            {
            }
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
        Fixed_AssetCaptionLbl: Label 'Fixed Asset';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
