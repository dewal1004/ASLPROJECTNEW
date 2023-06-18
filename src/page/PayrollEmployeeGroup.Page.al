page 50101 "PayrollEmployeeGroup"
{
    PageType = List;
    SourceTable = "Payroll-Employee Group Header.";
    Caption = 'Payroll-Employee Group Header';
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    CardPageId = "Employee Group Header.";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field("Gross Pay"; Rec."Gross Pay")
                {
                    ApplicationArea = All;
                }
                field("Tax Charged"; Rec."Tax Charged")
                {
                    ApplicationArea = All;
                }
                field("Tax Deducted"; Rec."Tax Deducted")
                {
                    ApplicationArea = All;
                }
                field("Taxable Pay"; Rec."Taxable Pay")
                {
                    ApplicationArea = All;
                }
                field("Total Deductions"; Rec."Total Deductions")
                {
                    ApplicationArea = All;
                }
                field("Net Pay Due"; Rec."Net Pay Due")
                {
                    ApplicationArea = All;
                }
                field("Posting Group Code"; Rec."Posting Group Code")
                {
                    ApplicationArea = All;
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                }
                field(Step; Rec.Step)
                {
                    ApplicationArea = All;
                }
                field(Management; Rec.Management)
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
