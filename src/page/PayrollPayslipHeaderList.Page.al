page 50068 "Payroll-Payslip Header List"
{
    PageType = List;
    SourceTable = "Payroll-Payslip Header.";
    UsageCategory = Lists;
    ApplicationArea = all;
    CardPageId = "Payslip Header Card.";
    Caption = 'Payroll-Payslip Header List';
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Payroll Period"; Rec."Payroll Period")
                {
                    ApplicationArea = All;
                }
                field("Period Start"; Rec."Period Start")
                {
                    ApplicationArea = All;
                }
                field("Period End"; Rec."Period End")
                {
                    ApplicationArea = All;
                }
                field("Period Name"; Rec."Period Name")
                {
                    ApplicationArea = All;
                }
                field(Company; Rec.Company)
                {
                    ApplicationArea = All;
                }
                field(Section; Rec.Section)
                {
                    ApplicationArea = All;
                }
                field("Employee No"; Rec."Employee No")
                {
                    ApplicationArea = All;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Closed?"; Rec."Closed?")
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
                field("Total Relief"; Rec."Total Relief")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Customer Number"; Rec."Customer Number")
                {
                    ApplicationArea = All;
                }
                field(Designation; Rec.Designation)
                {
                    ApplicationArea = All;
                }
                field(EDFILTER; Rec.EDFILTER)
                {
                    ApplicationArea = All;
                }
                field(Edvalue; Rec.Edvalue)
                {
                    ApplicationArea = All;
                }
                field("Debit Amount"; Rec."Debit Amount")
                {
                    ApplicationArea = All;
                }
                field("Credit Amount"; Rec."Credit Amount")
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
