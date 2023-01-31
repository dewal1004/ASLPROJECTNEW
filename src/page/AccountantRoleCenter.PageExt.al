pageextension 50399 "AccountantRoleCenter" extends "Accountant Role Center"
{
    layout
    {
    }

    actions
    {
        addafter("Cost Accounting")
        {
            group(Payroll)
            {
                group(SetupPR)
                {
                    Caption = 'Payroll Setup';
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
                        RunObject = Page 50101;
                    }
                    action("Posting Groups")
                    {
                        Caption = 'Posting Groups';
                        RunObject = Page "Posting Group Header.";
                    }
                }
            }

            group(PayrollProcessing)
            {
                Caption = 'Payroll Processing';
                action(Periods)
                {
                    Caption = 'Periods';
                    //Promoted = true;
                    //PromotedCategory = Process;
                    RunObject = Page "Payroll Periods.";
                }
                action(Banks)
                {
                    Caption = 'Banks';
                    //Promoted = true;
                    //PromotedCategory = Process;
                    RunObject = Page "Banks.";
                }
                action("Monthly Payroll")
                {
                    Caption = 'Monthly Payroll';
                    //Promoted = true;
                    //PromotedCategory = Process;
                    RunObject = Page "Payslip Header Survey.";
                }
                action("Payroll Process")
                {
                    Caption = 'Generate Payroll ';
                    //Promoted = true;
                    //PromotedCategory = Process;
                    RunObject = Report 50054;
                }
                action("Monthly Variables")
                {
                    Caption = 'Monthly Variables';
                    //Promoted = true;
                    //PromotedCategory = Process;
                    RunObject = Page "Monthly Var. Header Survey.";

                }
                action("Create G/L Journal")
                {
                    Caption = 'Create G/L Journal';
                    //Promoted = true;
                    //PromotedCategory = Process;
                    RunObject = Report "PRoll; Create Journal Entries";
                }
                action("Staff Loans")
                {
                    Caption = 'Staff Loans';
                    //Promoted = true;
                    //PromotedCategory = Process;
                    RunObject = Page "Loan List";
                }
                action("General Journals PR")
                {
                    Caption = 'General Journals';
                    //Promoted = true;
                    //PromotedCategory = Process;

                }
                action(ReportsPR)
                {
                    Caption = 'Reports';
                    //Promoted = true;
                    //PromotedCategory = Process;

                    // AAA trigger OnAction()
                    // var Reportlist: Record "Report Selections";
                    // Begin;
                    //     WITH Reportlist DO;
                    //         //reportlist.ShowList(FIELDNO("Payroll Reports"));                   
                    // end;
                }
                action(Utilities)
                {
                    Caption = 'Utilities';
                    //Promoted = true;
                    //PromotedCategory = Process;
                    RunObject = Page "Utilities.";
                    Visible = true;
                }
                action(Navigate)
                {
                    Caption = 'Navigate';
                    Image = Navigate;
                    //Promoted = true;
                    //PromotedCategory = Process;
                    RunObject = Page Navigate;
                }
            }

        }
    }

}

// page 50000 "Payroll Menu"
// {
//     // trigger OnInit()
//     // begin
//     //     SetupEnable := true;
//     // end;

//     // trigger OnOpenPage()
//     // begin
//     //     if Users.Get(UserId) then begin
//     //         SetupEnable := Users."Periodic Activits/SetUp Access";
//     //     end;
//     // end;

//     var
//         Users: Record "User Setup";
//         GenJnlManagement: Codeunit GenJnlManagement;
//         IntraJnlManagement: Codeunit IntraJnlManagement;
//         VATStmtManagement: Codeunit VATStmtManagement;
//         [InDataSet]
//         SetupEnable: Boolean;
//         Text19034387: Label 'PayRoll';
//         Text19062951: Label '   . . . .';
// }

