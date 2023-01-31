page 50416 "G/L Account Balance Linesx"
{
    Caption = 'G/L Account Balance Lines';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    SaveValues = true;
    SourceTable = Date;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Period Start"; "Period Start")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Period Name"; "Period Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("GLAcc.""Debit Amount"""; GLAcc."Debit Amount")
                {
                    AutoFormatType = 1;
                    BlankNumbers = BlankNegAndZero;
                    Caption = 'Debit Amount';
                    DrillDown = true;
                    Editable = false;
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        BalanceDrillDown;
                    end;
                }
                field("GLAcc.""Credit Amount"""; GLAcc."Credit Amount")
                {
                    AutoFormatType = 1;
                    BlankNumbers = BlankNegAndZero;
                    Caption = 'Credit Amount';
                    DrillDown = true;
                    Editable = false;
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        BalanceDrillDown;
                    end;
                }
                field("GLAcc.""Net Change"""; GLAcc."Net Change")
                {
                    AutoFormatType = 1;
                    BlankZero = true;
                    Caption = 'Net Change';
                    DrillDown = true;
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        BalanceDrillDown;
                    end;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        SetDateFilter;
        GLAcc.CalcFields("Net Change");
        GLAcc."Debit Amount" := GLAcc."Net Change";
        GLAcc."Credit Amount" := -GLAcc."Net Change";
    end;

    trigger OnFindRecord(Which: Text): Boolean
    begin
        exit(PeriodFormMgt.FindDate(Which, Rec, GLPeriodLength));
    end;

    trigger OnNextRecord(Steps: Integer): Integer
    begin
        exit(PeriodFormMgt.NextDate(Steps, Rec, GLPeriodLength));
    end;

    trigger OnOpenPage()
    begin
        Reset;
    end;

    var
        AccountingPeriod: Record "Accounting Period";
        GLAcc: Record "G/L Account";
        PeriodFormMgt: Codeunit PeriodFormManagement;
        GLPeriodLength: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AmountType: Option "Net Change","Balance at Date";
        ClosingEntryFilter: Option Include,Exclude;

    [Scope('OnPrem')]
    procedure Set(var NewGLAcc: Record "G/L Account"; NewGLPeriodLength: Integer; NewAmountType: Option "Net Change",Balance; NewClosingEntryFilter: Option Include,Exclude)
    begin
        GLAcc.Copy(NewGLAcc);
        GLPeriodLength := NewGLPeriodLength;
        AmountType := NewAmountType;
        ClosingEntryFilter := NewClosingEntryFilter;
        CurrPage.Update(false);
    end;

    local procedure BalanceDrillDown()
    var
        GLEntry: Record "G/L Entry";
    begin
        SetDateFilter;
        GLEntry.Reset;
        GLEntry.SetCurrentKey("G/L Account No.", "Posting Date");
        GLEntry.SetRange("G/L Account No.", GLAcc."No.");
        if GLAcc.Totaling <> '' then
            GLEntry.SetFilter("G/L Account No.", GLAcc.Totaling);
        GLEntry.SetFilter("Posting Date", GLAcc.GetFilter("Date Filter"));
        GLEntry.SetFilter("Global Dimension 1 Code", GLAcc.GetFilter("Global Dimension 1 Filter"));
        GLEntry.SetFilter("Global Dimension 2 Code", GLAcc.GetFilter("Global Dimension 2 Filter"));
        GLEntry.SetFilter("Business Unit Code", GLAcc.GetFilter("Business Unit Filter"));
        PAGE.Run(0, GLEntry);
    end;

    local procedure SetDateFilter()
    begin
        if AmountType = AmountType::"Net Change" then
            GLAcc.SetRange("Date Filter", "Period Start", "Period End")
        else
            GLAcc.SetRange("Date Filter", 0D, "Period End");
        if ClosingEntryFilter = ClosingEntryFilter::Exclude then begin
            AccountingPeriod.SetCurrentKey("New Fiscal Year");
            AccountingPeriod.SetRange("New Fiscal Year", true);
            if GLAcc.GetRangeMin("Date Filter") = 0D then
                AccountingPeriod.SetRange("Starting Date", 0D, GLAcc.GetRangeMax("Date Filter"))
            else
                AccountingPeriod.SetRange(
                  "Starting Date",
                  GLAcc.GetRangeMin("Date Filter") + 1,
                  GLAcc.GetRangeMax("Date Filter"));
            if AccountingPeriod.Find('-') then
                repeat
                    GLAcc.SetFilter(
                      "Date Filter", GLAcc.GetFilter("Date Filter") + '&<>%1',
                      ClosingDate(AccountingPeriod."Starting Date" - 1));
                until AccountingPeriod.Next = 0;
        end else
            GLAcc.SetRange(
              "Date Filter",
              GLAcc.GetRangeMin("Date Filter"),
              ClosingDate(GLAcc.GetRangeMax("Date Filter")));
    end;
}

