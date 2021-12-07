codeunit 50101 "Cust. Entry-SetAppl.ID."
{
    Permissions = TableData "Cust. Ledger Entry" = imd;

    trigger OnRun()
    begin
    end;

    var
        CustEntryApplID: Code[20];

    [Scope('OnPrem')]
    procedure SetApplId(var CustLedgEntry: Record "Cust. Ledger Entry"; AppliesToID: Code[20])
    begin
        CustLedgEntry.LockTable;
        if CustLedgEntry.Find('-') then begin
            // Make Applies-to ID
            if CustLedgEntry."Applies-to ID" <> '' then
                CustEntryApplID := ''
            else begin
                CustEntryApplID := AppliesToID;
                if CustEntryApplID = '' then begin
                    CustEntryApplID := UserId;
                    if CustEntryApplID = '' then
                        CustEntryApplID := '***';
                end;
            end;

            // Set Applies-to ID
            repeat
                CustLedgEntry.TestField(Open, true);
                CustLedgEntry."Applies-to ID" := CustEntryApplID;
                CustLedgEntry.Modify;
            until CustLedgEntry.Next = 0;
        end;
    end;
}

