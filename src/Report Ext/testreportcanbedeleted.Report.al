report 50900 "test report can be deleted"
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportrdlc/testreportcanbedeleted.rdlc';

    dataset
    {
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING(Vessel);
            RequestFilterFields = Vessel;
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
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__No__; "No.")
            {
            }
            column(Job__Ending_Date_; "Ending Date")
            {
            }
            column(Job_Vessel_Control1000000017; Vessel)
            {
            }
            column(Job_Points; Points)
            {
            }
            column(TotalFor___FIELDCAPTION_Vessel_; TotalFor + FieldCaption(Vessel))
            {
            }
            column(Job_Points_Control1000000023; Points)
            {
            }
            column(print_x_var; print_x_var)
            {
            }
            column(Job_Points_Control1000000007; Points)
            {
            }
            column(total_x_var; total_x_var)
            {
            }
            column(JobCaption; JobCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Job__No__Caption; FieldCaption("No."))
            {
            }
            column(Job__Ending_Date_Caption; FieldCaption("Ending Date"))
            {
            }
            column(Job_Vessel_Control1000000017Caption; FieldCaption(Vessel))
            {
            }
            column(Job_PointsCaption; FieldCaption(Points))
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(GRAND_TOTALCaption; GRAND_TOTALCaptionLbl)
            {
            }
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Job No.", "Location Code", "Work Type Code") WHERE("Location Code" = CONST('CRM-ASL'));
                column(Job_Ledger_Entry_Quantity; Quantity)
                {
                }
                column(x_var; x_var)
                {
                }
                column(Job_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Job_Ledger_Entry_Job_No_; "Job No.")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    x_var := x_var + "Job Ledger Entry".Quantity;
                end;

                trigger OnPreDataItem()
                begin
                    //Section Code group8 //AA
                    if CurrReport.TotalsCausedBy = Job.FieldNo(Vessel) then begin
                        print_x_var := x_var;
                        total_x_var := total_x_var + x_var;
                        x_var := 0;
                    end;
                end;
            }

            trigger OnPreDataItem()
            begin

                LastFieldNo := FieldNo(Vessel);
                CurrReport.CreateTotals(Points);
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
        x_var: Decimal;
        print_x_var: Decimal;
        total_x_var: Decimal;
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        GRAND_TOTALCaptionLbl: Label 'GRAND TOTAL';
}

