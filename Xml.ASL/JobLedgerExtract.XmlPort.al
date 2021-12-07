xmlport 90006 "Job Ledger Extract"
{
    Format = VariableText;

    schema
    {
        textelement(Rootnode)
        {
            tableelement("Job Ledger Entry"; "Job Ledger Entry")
            {
                XmlName = 'JobLedgerEntry';
                fieldelement("EntryNo."; "Job Ledger Entry"."Entry No.")
                {
                }
                fieldelement("JobNo."; "Job Ledger Entry"."Job No.")
                {
                }
                fieldelement(PostingDate; "Job Ledger Entry"."Posting Date")
                {
                }
                fieldelement("DocumentNo."; "Job Ledger Entry"."Document No.")
                {
                }
                fieldelement(Type; "Job Ledger Entry".Type)
                {
                }
                fieldelement("No."; "Job Ledger Entry"."No.")
                {
                }
                fieldelement(Description; "Job Ledger Entry".Description)
                {
                }
                fieldelement(Quantity; "Job Ledger Entry".Quantity)
                {
                }
                fieldelement(DirectUnitCost; "Job Ledger Entry"."Direct Unit Cost (LCY)")
                {
                }
                fieldelement(UnitCost; "Job Ledger Entry"."Unit Cost (LCY)")
                {
                }
                fieldelement(TotalCost; "Job Ledger Entry"."Total Cost (LCY)")
                {
                }
                fieldelement(UnitPrice; "Job Ledger Entry"."Unit Price (LCY)")
                {
                }
                fieldelement(TotalPrice; "Job Ledger Entry"."Total Price (LCY)")
                {
                }
                fieldelement("ResourceGroupNo."; "Job Ledger Entry"."Resource Group No.")
                {
                }
                fieldelement(UnitofMeasureCode; "Job Ledger Entry"."Unit of Measure Code")
                {
                }
                fieldelement(LocationCode; "Job Ledger Entry"."Location Code")
                {
                }
                fieldelement(JobPostingGroup; "Job Ledger Entry"."Job Posting Group")
                {
                }
                fieldelement(GlobalDimension1Code; "Job Ledger Entry"."Global Dimension 1 Code")
                {
                }
                fieldelement(GlobalDimension2Code; "Job Ledger Entry"."Global Dimension 2 Code")
                {
                }
                fieldelement(WorkTypeCode; "Job Ledger Entry"."Work Type Code")
                {
                }
                textelement(RelatedtoBudget)
                {
                }
                textelement(PhaseCode)
                {
                }
                textelement(TaskCode)
                {
                }
                textelement(StepCode)
                {
                }
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
}

