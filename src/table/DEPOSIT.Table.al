table 50041 "DEPOSIT"
{
    LookupPageID = deposits;
    Caption = 'DEPOSIT';
    fields
    {
        field(1; "Deposit ID"; Code[10])
        {
            Caption = 'Deposit No.';
        }
        field(2; "Bank Acc. No."; Code[10])
        {
            TableRelation = "Bank Account";

            trigger OnValidate()
            begin
                if "Bank Acc. No." <> '' then begin
                    if bankrec.Get("Bank Acc. No.") then
                        "Bank Name" := bankrec.Name;
                end else
                    "Bank Name" := '';
            end;
        }
        field(3; "Bank Name"; Text[30])
        {
        }
        field(4; "Date of Deposit"; Date)
        {
        }
        field(5; "Maturity Date"; Date)
        {
        }
        field(6; "Interest Rate"; Decimal)
        {
        }
        field(7; "Interest accruing on deposit"; Decimal)
        {
        }
        field(8; "Amount of deposit"; Decimal)
        {
        }
        field(9; "Deposit Balance"; Decimal)
        {
            CalcFormula = Sum("Bank Account Ledger Entry".Amount WHERE("Bank Account No." = FIELD("Bank Acc. No."),
                                                                        "DEPOSIT ID" = FIELD("Deposit ID")));
            FieldClass = FlowField;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Deposit ID")
        {
            Clustered = true;
        }
        key(Key2; "Bank Acc. No.", "Maturity Date")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        if "Deposit ID" = '' then begin
            accsetuprec.Get();
            accsetuprec.Find('-');
            accsetuprec.TestField(accsetuprec."Deposit Number Series");
            NoSeriesMgt.InitSeries(accsetuprec."Deposit Number Series", accsetuprec."Deposit Number Series", 0D, "Deposit ID",
            accsetuprec."Deposit Number Series");
        end;
    end;

    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        bankrec: Record "Bank Account";
        accsetuprec: Record "General Ledger Setup";
}
