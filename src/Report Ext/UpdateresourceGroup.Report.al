report 99995 "Update resource Group"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/UpdateresourceGroup.rdlc';

    dataset
    {
        dataitem(Resource; Resource)
        {
            RequestFilterFields = "No.";
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
            column(Resource__No__; "No.")
            {
            }
            column(Resource_Type; Type)
            {
            }
            column(Resource__Job_Title_; "Job Title")
            {
            }
            column(ResourceCaption; ResourceCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Resource__No__Caption; FieldCaption("No."))
            {
            }
            column(Resource_TypeCaption; FieldCaption(Type))
            {
            }
            column(Resource__Job_Title_Caption; FieldCaption("Job Title"))
            {
            }

            trigger OnAfterGetRecord()
            begin

                if Resource."Job Title" = 'Manager - Admin' then Resource."Resource Group No." := 'ADM';
                if Resource."Job Title" = 'Chief Engineer' then Resource."Resource Group No." := 'CENG';
                if Resource."Job Title" = 'Cook' then Resource."Resource Group No." := 'COOK';
                if Resource."Job Title" = 'Coxswain' then Resource."Resource Group No." := 'COXS';
                if Resource."Job Title" = '2nd Engineer' then Resource."Resource Group No." := 'ENG2';
                if Resource."Job Title" = 'Sailor' then Resource."Resource Group No." := 'SAIL';
                if Resource."Job Title" = 'Skipper' then Resource."Resource Group No." := 'SKIP';
                if Resource."Job Title" = 'Shrimp Master' then Resource."Resource Group No." := 'SMAS';
                Resource.Modify();
                //IF Res2.GET(Resource."No.") THEN  Res2.RENAME()
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
        Res2: Record Resource;
        ResourceCaptionLbl: Label 'Resource';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

