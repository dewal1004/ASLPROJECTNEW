report 50141 "Sample3"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/Sample3.rdlc';

    dataset
    {
        dataitem("Job Ledger Entry"; "Job Ledger Entry")
        {
            column(UserID_JobLedgerEntry; "Job Ledger Entry"."User ID")
            {
            }
            column(UnitPrice_JobLedgerEntry; "Job Ledger Entry"."Unit Price")
            {
            }
            column(TotalPrice_JobLedgerEntry; "Job Ledger Entry"."Total Price")
            {
            }
            column(JobNo_JobLedgerEntry; "Job Ledger Entry"."Job No.")
            {
            }
            column(No_JobLedgerEntry; "Job Ledger Entry"."No.")
            {
            }
            column(Description_JobLedgerEntry; "Job Ledger Entry".Description)
            {
            }
            column(Quantity_JobLedgerEntry; "Job Ledger Entry".Quantity)
            {
            }
            column(CompanyName; CompanyInfo.Name)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field("Location Code"; "Job Ledger Entry"."Location Code")
                    {
                        ApplicationArea = All;
                    }
                    field("Job No."; "Job Ledger Entry"."Job No.")
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        CompanyInfo: Record "Company Information";
}

