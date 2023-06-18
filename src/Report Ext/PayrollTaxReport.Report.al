report 50068 "Payroll Tax Report"
{
    DefaultLayout = RDLC;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    RDLCLayout = './src/reportrdlc/PayrollTaxReport.rdlc';
    Caption = 'Payroll Tax Report';
    dataset
    {
        dataitem("Payroll-Payslip Header."; "Payroll-Payslip Header.")
        {
            DataItemTableView = SORTING(Company, "Employee No", "Payroll Period");
            PrintOnlyIfDetail = false;
            RequestFilterFields = "Employee No", "Payroll Period";
            column(COMPANYNAME; CompanyName)
            {
            }
            column(TAX_REFUND_CARD__; 'TAX REFUND CARD ')
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(USERID; UserId)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(Payroll_Payslip_Header___GETFILTERS__; "Payroll-Payslip Header.".GetFilters())
            {
            }
            column(Payroll_Payslip_Header___Employee_Name_; "Employee Name")
            {
            }
            column(TAX_; 'TAX')
            {
            }
            column(ENTERTAINMENT_; 'ENTERTAINMENT')
            {
            }
            column(UTILITY_; 'UTILITY')
            {
            }
            column(MEAL_; 'MEAL')
            {
            }
            column(HOUSING_; 'HOUSING')
            {
            }
            column(TRANSPORT_; 'TRANSPORT')
            {
            }
            column(BASIC_; 'BASIC')
            {
            }
            column(MONTHS_; 'MONTHS')
            {
            }
            column(Payroll_Payslip_Header___Employee_No_; "Employee No")
            {
            }
            column(Basicamt; Basicamt)
            {
            }
            column(Transportamt; Transportamt)
            {
            }
            column(Housingamt; Housingamt)
            {
            }
            column(Mealamt; Mealamt)
            {
            }
            column(Utilityamt; Utilityamt)
            {
            }
            column(Taxamt; Taxamt)
            {
            }
            column(Payroll_Payslip_Header___Period_Name_; "Period Name")
            {
            }
            column(Entertainmentamt; Entertainmentamt)
            {
            }
            column(tTaxamt; tTaxamt)
            {
            }
            column(tEntertainmentamt; tEntertainmentamt)
            {
            }
            column(tUtilityamt; tUtilityamt)
            {
            }
            column(tMealamt; tMealamt)
            {
            }
            column(tHousingamt; tHousingamt)
            {
            }
            column(tTransportamt; tTransportamt)
            {
            }
            column(tBasicamt; tBasicamt)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Payroll_Payslip_Header___Employee_No_Caption; FieldCaption("Employee No"))
            {
            }
            column(Payroll_Payslip_Header__Payroll_Period; "Payroll Period")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if TotalPrinted then begin
                    tBasicamt := 0;
                    tTransportamt := 0;
                    tHousingamt := 0;
                    tMealamt := 0;
                    tUtilityamt := 0;
                    tEntertainmentamt := 0;
                    tTaxamt := 0;
                    TotalPrinted := false;
                    if not ContinuousPrint then
                        CurrReport.NewPage();
                end;
                NewCoy := "Payroll-Payslip Header.".Company;

                "Payroll-Payslip Header.".SetFilter("Payroll-Payslip Header.".EDFILTER, "Basic ED Filter");
                "Payroll-Payslip Header.".CalcFields("Payroll-Payslip Header.".Edvalue);
                Basicamt := "Payroll-Payslip Header.".Edvalue;

                "Payroll-Payslip Header.".SetFilter("Payroll-Payslip Header.".EDFILTER, "Transport ED Filter");
                "Payroll-Payslip Header.".CalcFields("Payroll-Payslip Header.".Edvalue);
                Transportamt := "Payroll-Payslip Header.".Edvalue;

                "Payroll-Payslip Header.".SetFilter("Payroll-Payslip Header.".EDFILTER, "Housing ED Filter");
                "Payroll-Payslip Header.".CalcFields("Payroll-Payslip Header.".Edvalue);
                Housingamt := "Payroll-Payslip Header.".Edvalue;

                "Payroll-Payslip Header.".SetFilter("Payroll-Payslip Header.".EDFILTER, "Meal ED Filter");
                "Payroll-Payslip Header.".CalcFields("Payroll-Payslip Header.".Edvalue);
                Mealamt := "Payroll-Payslip Header.".Edvalue;

                "Payroll-Payslip Header.".SetFilter("Payroll-Payslip Header.".EDFILTER, "Entertainment ED Filter");
                "Payroll-Payslip Header.".CalcFields("Payroll-Payslip Header.".Edvalue);
                Entertainmentamt := "Payroll-Payslip Header.".Edvalue;

                "Payroll-Payslip Header.".SetFilter("Payroll-Payslip Header.".EDFILTER, "Utility ED Filter");
                "Payroll-Payslip Header.".CalcFields("Payroll-Payslip Header.".Edvalue);
                Utilityamt := "Payroll-Payslip Header.".Edvalue;

                "Payroll-Payslip Header.".SetFilter("Payroll-Payslip Header.".EDFILTER, "Tax ED Filter");
                "Payroll-Payslip Header.".CalcFields("Payroll-Payslip Header.".Edvalue);
                Taxamt := "Payroll-Payslip Header.".Edvalue;

                tBasicamt := tBasicamt + Basicamt;
                tTransportamt := tTransportamt + Transportamt;
                tHousingamt := tHousingamt + Housingamt;
                tMealamt := tMealamt + Mealamt;
                tUtilityamt := tUtilityamt + Utilityamt;
                tEntertainmentamt := tEntertainmentamt + Entertainmentamt;
                tTaxamt := tTaxamt + Taxamt;

                OldCoy := NewCoy;
            end;

            trigger OnPreDataItem()
            begin
                TotalPrinted := true;
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

    trigger OnInitReport()
    begin
        /*
        "Basic ED Filter" := '10';
        "Transport ED Filter" := '60';
        "Housing ED Filter" := '50';
        "Meal ED Filter" := '70';
        "Utility ED Filter" := '80';
        "Entertainment ED Filter" := '92';
        "Tax ED Filter" := '122..128';
        */
        ContinuousPrint := true;
    end;

    var
        "Basic ED Filter": Code[20];
        "Transport ED Filter": Code[20];
        "Housing ED Filter": Code[20];
        "Meal ED Filter": Code[20];
        "Utility ED Filter": Code[20];
        "Entertainment ED Filter": Code[20];
        "Tax ED Filter": Code[20];
        Basicamt: Decimal;
        Transportamt: Decimal;
        Housingamt: Decimal;
        Mealamt: Decimal;
        Utilityamt: Decimal;
        Entertainmentamt: Decimal;
        Taxamt: Decimal;
        tBasicamt: Decimal;
        tTransportamt: Decimal;
        tHousingamt: Decimal;
        tMealamt: Decimal;
        tUtilityamt: Decimal;
        tEntertainmentamt: Decimal;
        tTaxamt: Decimal;
        TotalPrinted: Boolean;
        ContinuousPrint: Boolean;
        OldCoy: Text[100];
        NewCoy: Text[100];
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}
