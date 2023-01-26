report 50028 "Voyage P & L Batch"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/VoyagePLBatch.rdlc';
    Permissions = TableData "Job Ledger Entry" = rimd;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All,Basic,Suite;

    dataset
    {
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Ending Date", "Fishing Country Code", Vessel, "Person Responsible";
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
            column(Job__No__; "No.")
            {
            }
            column(Job__Starting_Date_; "Starting Date")
            {
            }
            column(Job__Ending_Date_; "Ending Date")
            {
            }
            column(Skipper; Skipper)
            {
            }
            column(Job_Vessel; Vessel)
            {
            }
            column(Job__Fishing_Country_Code_; "Fishing Country Code")
            {
            }
            column(Job__Person_Responsible_; "Person Responsible")
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
            column(Job__Starting_Date_Caption; FieldCaption("Starting Date"))
            {
            }
            column(Job__Ending_Date_Caption; FieldCaption("Ending Date"))
            {
            }
            column(Job_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Job__Fishing_Country_Code_Caption; FieldCaption("Fishing Country Code"))
            {
            }
            column(Job__Person_Responsible_Caption; FieldCaption("Person Responsible"))
            {
            }
            dataitem("Job Ledger Entry"; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Posting Date") WHERE("Document No." = FILTER('J*'));
                column(Job_Ledger_Entry__Entry_No__; "Job Ledger Entry"."Entry No.")
                {
                }
                column(Job_Ledger_Entry__Job_No__; "Job No.")
                {
                }
                column(Job_Ledger_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(Job_Ledger_Entry__Document_No__; "Document No.")
                {
                }
                column(Job_Ledger_Entry_Type; Type)
                {
                }
                column(Job_Ledger_Entry__No__; "No.")
                {
                }
                column(Job_Ledger_Entry_Description; Description)
                {
                }
                column(Job_Ledger_Entry_Quantity; Quantity)
                {
                }
                column(Job_Ledger_Entry_DescriptionCaption; FieldCaption(Description))
                {
                }
                column(Job_Ledger_Entry__No__Caption; FieldCaption("No."))
                {
                }
                column(Job_Ledger_Entry_TypeCaption; FieldCaption(Type))
                {
                }
                column(Job_Ledger_Entry__Document_No__Caption; FieldCaption("Document No."))
                {
                }
                column(Job_Ledger_Entry__Posting_Date_Caption; FieldCaption("Posting Date"))
                {
                }
                column(Job_Ledger_Entry__Job_No__Caption; FieldCaption("Job No."))
                {
                }
                column(Job_Ledger_Entry__Entry_No__Caption; "Job Ledger Entry"."Entry No.")
                {
                }
                column(Job_Ledger_Entry_QuantityCaption; FieldCaption(Quantity))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    //Prepare data for Sorting
                    if InvtPostGrp.Get("Job Posting Group") then begin
                        GroupSort := InvtPostGrp.Category;
                        //MESSAGE(' %1 IS %2',"Job Posting Group",InvtPostGrp.Category);
                    end
                    else //MESSAGE('POSTING GROUP %1 NOT FOUND',"Job Posting Group");
                        Modify;
                end;
            }

            trigger OnAfterGetRecord()
            begin

                if res.Get("Person Responsible") then
                    Skipper := res.Name
                else
                    Skipper := "Person Responsible";
                if Job.Get("No.") then
                    ETD := Job."Starting Date";
                ETA := Job."Ending Date";
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
        JobLedgerGrpSort: Record "Job Ledger Entry";
        InvtPostGrp: Record "Inventory Posting Group";
        JobCaptionLbl: Label 'Job';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        ETD: Date;
        ETA: Date;
        res: Record Resource;
        Skipper: Text[30];
}

