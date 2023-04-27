/// <summary>
/// Report Points For Period (ID 50135).
/// </summary>
report 50135 "Points For Period"
{
    // UNL-ASL3.60.01.014 (Santus) July 19, 2005
    // -> new report
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/PointsForPeriod.rdlc';
    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            RequestFilterFields = "Location Code", "Job No.", "Posting Date";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; Companyinfo.Name)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; "Job Ledger Entry"."User ID")
            {
            }
            column(ABS_Quantity_; Abs(Quantity))
            {
            }
            column(ABS__Total_Price__; Abs("Total Price"))
            {
            }
            column(Job_Ledger_Entry__Location_Code_; "Job Ledger Entry"."Location Code")
            {
            }
            column(TotDaysCount; TotDaysCount)
            {
            }
            column(Job_Ledger_Entry__Job_No__; "Job No.")
            {
            }
            column(ABS_Quantity__Control1000000019; Abs(Quantity))
            {
            }
            column(ABS__Total_Price___Control1000000049; Abs("Total Price"))
            {
            }
            column(TotalDaysCount2; TotalDaysCount2)
            {
            }
            column(Points_For_The_PeriodCaption; Points_For_The_PeriodCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(DaysCaption; DaysCaptionLbl)
            {
            }
            column(Location_CodeCaption; Location_CodeCaptionLbl)
            {
            }
            column(QuantityCaption; QuantityCaptionLbl)
            {
            }
            column(Total_PriceCaption; Total_PriceCaptionLbl)
            {
            }
            column(Job_No_Caption; Job_No_CaptionLbl)
            {
            }
            column(Grand_TotalCaption; Grand_TotalCaptionLbl)
            {
            }
            column(Job_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }
            column(Job_Ledger_Entry_Posting_Date; "Posting Date")
            {
            }
            column(Quantity; "Job Ledger Entry".Quantity)
            {
            }
            column(UnitPrice; "Job Ledger Entry"."Unit Price")
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

    trigger OnInitReport()
    begin
        Bold := true;
        UnderLine := true;
        Italic := true;
        TopPage := true;
        PageOrientation := 1;
        FontSize := 7;
    end;

    trigger OnPostReport()
    begin
        //Window.CLOSE;
    end;

    trigger OnPreReport()
    begin
        Companyinfo.Get;
    end;

    var
        Companyinfo: Record "Company Information";
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        DaysCount: Integer;
        TotDaysCount: Integer;
        TotalDaysCount: Integer;
        TotalDaysCount2: Integer;
        Window: Dialog;
        // xlApp: Automation BC;  //***Refactor
        // xlBook: Automation BC;
        // xlSheet: Automation BC;
        Send2Excel: Boolean;
        TopPage: Boolean;
        Xr: Integer;
        Xc: Integer;
        Bold: Boolean;
        UnderLine: Boolean;
        Italic: Boolean;
        FontSize: Integer;
        PageOrientation: Option "Excel Default",Portrait,Landscape;
        Points_For_The_PeriodCaptionLbl: Label 'Points For The Period';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        DaysCaptionLbl: Label 'Days';
        Location_CodeCaptionLbl: Label 'Location Code';
        QuantityCaptionLbl: Label 'Quantity';
        Total_PriceCaptionLbl: Label 'Total Price';
        Job_No_CaptionLbl: Label 'Job No.';
        Grand_TotalCaptionLbl: Label 'Grand Total';
}

