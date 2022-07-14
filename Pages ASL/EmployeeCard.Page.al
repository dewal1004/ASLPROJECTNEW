page 50008 "Employee Card."
{
    Caption = 'ASL Employee Card';
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Employee;
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {

                    trigger OnAssistEdit()
                    begin
                        if AssistEdit() then
                            CurrPage.Update;
                    end;
                }
                field("No2."; "No2.")
                {
                }
                field("First Name"; "First Name")
                {
                }
                field("Last Name"; "Last Name")
                {
                }
                field("Middle Name"; "Middle Name")
                {
                    Caption = 'Middle Name/Initials';
                }
                field(Initials; Initials)
                {
                }
                field(FullName; FullName)
                {
                    Caption = 'Full Name';
                }
                field(Address; Address)
                {
                }
                field(State; State)
                {
                }
                field(StateName; StateName)
                {
                    Editable = false;
                }
                field("NPF Number"; "NPF Number")
                {
                }
                field("NHF Number"; "NHF Number")
                {
                }
                field(Designation; Designation)
                {
                }
                field("NSITF Number"; "NSITF Number")
                {
                }
                field("National ID Number"; "National ID Number")
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field("Employment Date"; "Employment Date")
                {
                }
                field("Termination Date"; "Termination Date")
                {
                }
                field("Work Status"; "Work Status")
                {
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
                field("Modified By"; "Modified By")
                {
                }
                field(Blocked; Blocked)
                {
                }
            }
            group(Communication)
            {
                Caption = 'Communication';
                field(Extension; Extension)
                {
                }
                field("Mobile Phone No."; "Mobile Phone No.")
                {
                }
                field(Pager; Pager)
                {
                }
                field("Phone No."; "Phone No.")
                {
                }
                field("E-Mail"; "E-Mail")
                {
                }
                field("Company E-Mail"; "Company E-Mail")
                {
                }
                field("Alt. Address Code"; "Alt. Address Code")
                {
                }
                field("Alt. Address Start Date"; "Alt. Address Start Date")
                {
                }
                field("Alt. Address End Date"; "Alt. Address End Date")
                {
                }
            }
            group(Posting)
            {
                Caption = 'Posting';
                field(Class; Class)
                {
                }
                field("Employee Group"; "Employee Group")
                {
                    LookupPageID = "Employee Groups Survey.";
                }
                field("Posting Group"; "Posting Group")
                {
                    LookupPageID = "Posting Groups Survey.";
                }
                field("Acct. type"; "Acct. type")
                {
                }
                field("Acct. No"; "Acct. No")
                {
                }
                field("Region Code"; "Region Code")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
            }
            group(Payment)
            {
                Caption = 'Payment';
                field("Mode of payment"; "Mode of payment")
                {
                }
                field(Bank; Bank)
                {
                    Lookup = true;
                    LookupPageID = "Banks.";
                }
                field("Bank Account"; "Bank Account")
                {
                }
                field("No of Days"; "No of Days")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("E&mployee")
            {
                Caption = 'E&mployee';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Human Resource Comment Sheet";
                    RunPageLink = "Table Name" = CONST (Employee),
                                  "No." = FIELD ("No.");
                }
                action("&Picture")
                {
                    Caption = '&Picture';
                    RunObject = Page "Employee Picture";
                    RunPageLink = "No." = FIELD ("No.");
                }
                action("&Alternative Addresses")
                {
                    Caption = '&Alternative Addresses';
                    RunObject = Page "Alternative Address List";
                    RunPageLink = "Employee No." = FIELD ("No.");
                }
                action("&Relatives")
                {
                    Caption = '&Relatives';
                    RunObject = Page "Employee Relatives";
                    RunPageLink = "Employee No." = FIELD ("No.");
                }
                action("Mi&sc. Article Information")
                {
                    Caption = 'Mi&sc. Article Information';
                    RunObject = Page "Misc. Article Information";
                    RunPageLink = "Employee No." = FIELD ("No.");
                }
                action("&Confidential Information")
                {
                    Caption = '&Confidential Information';
                    RunObject = Page "Confidential Information";
                    RunPageLink = "Employee No." = FIELD ("No.");
                }
                action("Q&ualifications")
                {
                    Caption = 'Q&ualifications';
                    RunObject = Page "Employee Qualifications";
                    RunPageLink = "Employee No." = FIELD ("No.");
                }
                action("A&bsences")
                {
                    Caption = 'A&bsences';
                    RunObject = Page "Employee Absences";
                    RunPageLink = "Employee No." = FIELD ("No.");
                }
                separator(Action117)
                {
                }
                action("Absences by Ca&tegories")
                {
                    Caption = 'Absences by Ca&tegories';
                    RunObject = Page "Empl. Absences by Categories";
                    RunPageLink = "No." = FIELD ("No."),
                                  "Employee No. Filter" = FIELD ("No.");
                }
                action("Misc. Articles &Overview")
                {
                    Caption = 'Misc. Articles &Overview';
                    RunObject = Page "Misc. Articles Overview";
                }
                action("Co&nfidential Info. Overview")
                {
                    Caption = 'Co&nfidential Info. Overview';
                    RunObject = Page "Confidential Info. Overview";
                }
            }
            group("&Function")
            {
                Caption = '&Function';
                action("Create New Payslip")
                {
                    Caption = 'Create New Payslip';
                    RunObject = Report "Monthly Payslip";
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        StateOnFormat;
    end;

    var
        Mail: Codeunit Mail;
        StateName: Text[30];
        StateRec: Record States;

    local procedure StateOnFormat()
    begin
        if StateRec.Get(State) then StateName := StateRec.Name;
    end;
}

