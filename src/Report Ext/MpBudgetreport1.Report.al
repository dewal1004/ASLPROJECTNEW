report 50164 "Mp Budget report1"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/MpBudgetreport1.rdlc';

    dataset
    {
        dataitem("Employment Contract"; "Employment Contract")
        {
            RequestFilterFields = Description, "Date Filter";
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
            column(Emplcontractfilte; Emplcontractfilte)
            {
            }
            column(Employment_Contract_Description; Description)
            {
            }
            column(Employment_Contract_Permanent; Permanent)
            {
            }
            column(Employment_Contract__Contract_A_; "Contract A")
            {
            }
            column(Employment_Contract__Contract_B_; "Contract B")
            {
            }
            column(Employment_Contract_Total; Total)
            {
            }
            column(Employment_Contract_Junior; Junior)
            {
            }
            column(Employment_Contract_Intermediate; Intermediate)
            {
            }
            column(Employment_Contract_Senior; Senior)
            {
            }
            column(Employment_Contract_Expatriates; Expatriates)
            {
            }
            column(Permtt; Permtt)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Contatt; Contatt)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Contbtt; Contbtt)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Tott; Tott)
            {
                DecimalPlaces = 0 : 0;
            }
            column(junitt; junitt)
            {
                DecimalPlaces = 0 : 0;
            }
            column(inttt; inttt)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Sentt; Sentt)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Exptt; Exptt)
            {
                DecimalPlaces = 0 : 0;
            }
            column(MANPOWER_BUDGETINGCaption; MANPOWER_BUDGETINGCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Employment_Contract_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Employment_Contract_PermanentCaption; FieldCaption(Permanent))
            {
            }
            column(Employment_Contract__Contract_A_Caption; FieldCaption("Contract A"))
            {
            }
            column(Employment_Contract__Contract_B_Caption; FieldCaption("Contract B"))
            {
            }
            column(Employment_Contract_TotalCaption; FieldCaption(Total))
            {
            }
            column(Employment_Contract_JuniorCaption; FieldCaption(Junior))
            {
            }
            column(Employment_Contract_IntermediateCaption; FieldCaption(Intermediate))
            {
            }
            column(Employment_Contract_SeniorCaption; FieldCaption(Senior))
            {
            }
            column(ExpatriateCaption; ExpatriateCaptionLbl)
            {
            }
            column(TOTAL__Caption; TOTAL__CaptionLbl)
            {
            }
            column(Employment_Contract_Code; Code)
            {
            }

            trigger OnAfterGetRecord()
            begin
                Required := "Budgeted Count";
                Permtt := Permanent;
                Contatt := "Contract A";
                Tott := Total;
                Contbtt := "Contract B";
                junitt := Junior;
                inttt := Intermediate;
                Sentt := Senior;
                Reqtt := Required;
                Exptt := Expatriates;
            end;

            trigger OnPreDataItem()
            begin

                CurrReport.CreateTotals("Budgeted Count", Permtt, Contatt, Tott, Contbtt, junitt, inttt, Sentt, Reqtt, Exptt);
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
        Emplcontractfilte := "Employment Contract".GetFilters;
    end;

    var
        Required: Integer;
        budtt: Decimal;
        Permtt: Decimal;
        Contatt: Decimal;
        Contbtt: Decimal;
        Tott: Decimal;
        junitt: Decimal;
        inttt: Decimal;
        Sentt: Decimal;
        Reqtt: Decimal;
        Exptt: Decimal;
        Emplcontractfilte: Text[100];
        MANPOWER_BUDGETINGCaptionLbl: Label 'MANPOWER BUDGETING';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        ExpatriateCaptionLbl: Label 'Expatriate';
        TOTAL__CaptionLbl: Label 'TOTAL :';
}

