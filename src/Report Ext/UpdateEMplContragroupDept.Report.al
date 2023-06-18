report 99990 "Update EMpl Contra group-Dept"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateEMplContragroupDept.rdlc';
    Caption = 'Update EMpl Contra group-Dept';
    dataset
    {
        dataitem("Employment Contract"; "Employment Contract")
        {
            RequestFilterFields = "Unique Cd No";
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
            column(Employment_Contract_Code; Code)
            {
            }
            column(Employment_Contract_Description; Description)
            {
            }
            column(Employment_Contract__Global_Dimension_1_Code_; "Global Dimension 1 Code")
            {
            }
            column(Employment_Contract_Group; Group)
            {
            }
            column(Employment_ContractCaption; Employment_ContractCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Employment_Contract_CodeCaption; FieldCaption(Code))
            {
            }
            column(Employment_Contract_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Employment_Contract__Global_Dimension_1_Code_Caption; FieldCaption("Global Dimension 1 Code"))
            {
            }
            column(Employment_Contract_GroupCaption; FieldCaption(Group))
            {
            }
            column(Employment_Contract_Unique_Cd_No; "Unique Cd No")
            {
            }

            trigger OnAfterGetRecord()
            begin
                "Employment Contract"."Global Dimension 1 Code" := "Employment Contract".Group;
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
        Employment_ContractCaptionLbl: Label 'Employment Contract';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
