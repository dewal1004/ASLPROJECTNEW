page 60023 "Leave Analysis/Budget Center"
{
    DataCaptionExpression = '';
    PageType = Card;
    SaveValues = true;
    SourceTable = Employee;

    layout
    {
        area(content)
        {
            group(Options)
            {
                Caption = 'Options';
                field(LeaveCatFilter; LeaveCatFilter)
                {
                    Caption = 'Leave Category Filter';
                    TableRelation = "Leave Categories NU*".Code;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        PasteFilter;
                    end;
                }
                field(PeriodType; PeriodType)
                {
                    Caption = 'View by';
                    OptionCaption = 'Day,Week,Month,Quarter,Year,Accounting Period';
                    ToolTip = 'Day';
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        PasteFilter;
                    end;
                }
            }
            //***   part(SubForm; 60024)
            //***  {
            //*** }
            field(LeaveAmountType; LeaveAmountType)
            {
                OptionCaption = 'Balance at Date,Net Change';
                ToolTip = 'Net Change';
                ApplicationArea = All;

                trigger OnValidate()
                begin
                    PasteFilter;
                end;
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        PasteFilter;
    end;

    trigger OnOpenPage()
    begin
        PasteFilter;
    end;

    var
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        LeaveAmountType: Option "Balance at Date","Net Change";
        DeptFilter: Text[250];
        ProjFilter: Text[250];
        EmployeeNoFilter: Text[250];
        LeaveFilter: Code[30];
        LeaveCatFilter: Code[100];
        LFilter: Option " ",PLAN,ACTUAL;

    local procedure PasteFilter()
    begin
        DeptFilter := Rec.GetFilter("Global Dimension 1 Filter");
        ProjFilter := Rec.GetFilter("Global Dimension 2 Filter");
        Evaluate(LeaveFilter, Format(LFilter));          //GETFILTER("Leave Type Filter")
        EmployeeNoFilter := Rec.GetFilter("Employee No. Filter");

        /*CurrPage.SubForm.PAGE.MatrixUpdate(
          LeaveAmountType,PeriodType,
          DeptFilter,ProjFilter,
          EmployeeNoFilter,LeaveCatFilter,LeaveFilter);
          */

    end;

    local procedure LeaveCatFilterOnAfterInput(var Text: Text[1024])
    begin
        PasteFilter;
    end;

    local procedure AccountingPerioPeriodTypOnPush()
    begin
        PasteFilter;
    end;

    local procedure YearPeriodTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure QuarterPeriodTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure MonthPeriodTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure WeekPeriodTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure DayPeriodTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure NetChangeLeaveAmountTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure BalanceatDateLeaveAmountOnPush()
    begin
        PasteFilter;
    end;

    local procedure DayPeriodTypeOnValidate()
    begin
        DayPeriodTypeOnPush;
    end;

    local procedure WeekPeriodTypeOnValidate()
    begin
        WeekPeriodTypeOnPush;
    end;

    local procedure MonthPeriodTypeOnValidate()
    begin
        MonthPeriodTypeOnPush;
    end;

    local procedure QuarterPeriodTypeOnValidate()
    begin
        QuarterPeriodTypeOnPush;
    end;

    local procedure YearPeriodTypeOnValidate()
    begin
        YearPeriodTypeOnPush;
    end;

    local procedure AccountingPerioPeriodTypeOnVal()
    begin
        AccountingPerioPeriodTypOnPush;
    end;

    local procedure NetChangeLeaveAmountTypeOnVali()
    begin
        NetChangeLeaveAmountTypeOnPush;
    end;

    local procedure BalanceatDateLeaveAmountTypeOn()
    begin
        BalanceatDateLeaveAmountOnPush;
    end;
}

