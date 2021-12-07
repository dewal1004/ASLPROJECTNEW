page 50000 "Payroll Menu"
{
    Caption = 'Payroll Menu';
    PageType = Card;

    layout
    {
        area(content)
        {
            label(Control1)
            {
                ShowCaption = false;
            }
            label(Control9)
            {
                CaptionClass = Text19062951;
                ShowCaption = false;
            }
            label(Control3)
            {
                CaptionClass = Text19034387;
                ShowCaption = false;
                Style = Standard;
                StyleExpr = TRUE;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Setup)
            {
                Caption = 'Setup';
                action("Payroll &Setup")
                {
                    Caption = 'Payroll &Setup';
                    RunObject = Page "Payroll Setup Local";
                }
                action("Table Lookup Details")
                {
                    Caption = 'Table Lookup Details';
                    RunObject = Page "Table Lookup Header.";
                }
                separator("-----------------------------------")
                {
                    Caption = '-----------------------------------';
                }
                action("E/Ds")
                {
                    Caption = 'E/Ds';
                    RunObject = Page "ED Codes.";
                }
                action("Employee Groups")
                {
                    Caption = 'Employee Groups';
                    RunObject = Page "Employee Group Header.";
                }
                action("Posting Groups")
                {
                    Caption = 'Posting Groups';
                    RunObject = Page "Posting Group Header.";
                }
            }
        }
        area(processing)
        {
            action(Periods)
            {
                Caption = 'Periods';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Payroll Periods.";
            }
            action(Banks)
            {
                Caption = 'Banks';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Banks.";
            }
            action("Monthly Payroll")
            {
                Caption = 'Monthly Payroll';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Payslip Header Card.";
            }
            action("Monthly Variables")
            {
                Caption = 'Monthly Variables';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Monthly Variables Header Card.";
            }
            action("Create G/L Journal")
            {
                Caption = 'Create G/L Journal';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report "PRoll; Create Journal Entries";
            }
            action("Staff Loans")
            {
                Caption = 'Staff Loans';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Loan Card.";
            }
            action("General Journals")
            {
                Caption = 'General Journals';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    //GenJnlManagement.TemplateSelection(0,FALSE);
                end;
            }
            action(Reports)
            {
                Caption = 'Reports';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    /*WITH ReportList DO
                      ShowList(FIELDNO("Payroll Reports"));
                      */

                end;
            }
            action(Utilities)
            {
                Caption = 'Utilities';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Utilities.";
                Visible = false;
            }
            action(Navigate)
            {
                Caption = 'Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page Navigate;
            }
        }
    }

    trigger OnInit()
    begin
        SetupEnable := true;
    end;

    trigger OnOpenPage()
    begin


        if Users.Get(UserId) then begin
            SetupEnable := Users."Periodic Activits/SetUp Access";
        end;
    end;

    var
        Users: Record "User Setup";
        GenJnlManagement: Codeunit GenJnlManagement;
        IntraJnlManagement: Codeunit IntraJnlManagement;
        VATStmtManagement: Codeunit VATStmtManagement;
        [InDataSet]
        SetupEnable: Boolean;
        Text19034387: Label 'PayRoll';
        Text19062951: Label '   . . . .';
}

