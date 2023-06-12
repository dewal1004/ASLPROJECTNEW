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
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit() then
                            CurrPage.Update;
                    end;
                }
                field("No2."; Rec."No2.")
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    Caption = 'Middle Name/Initials';
                    ApplicationArea = All;
                }
                field(Initials; Rec.Initials)
                {
                    ApplicationArea = All;
                }
                field(FullName; Rec.FullName)
                {
                    Caption = 'Full Name';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                }
                field(StateName; StateName)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("NPF Number"; Rec."NPF Number")
                {
                    ApplicationArea = All;
                }
                field("NHF Number"; Rec."NHF Number")
                {
                    ApplicationArea = All;
                }
                field(Designation; Rec.Designation)
                {
                    ApplicationArea = All;
                }
                field("NSITF Number"; Rec."NSITF Number")
                {
                    ApplicationArea = All;
                }
                field("National ID Number"; Rec."National ID Number")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field("Employment Date"; Rec."Employment Date")
                {
                    ApplicationArea = All;
                }
                field("Termination Date"; Rec."Termination Date")
                {
                    ApplicationArea = All;
                }
                field("Work Status"; Rec."Work Status")
                {
                    ApplicationArea = All;
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                }
                field("Modified By"; Rec."Modified By")
                {
                    ApplicationArea = All;
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
            }
            group(Communication)
            {
                Caption = 'Communication';
                field(Extension; Rec.Extension)
                {
                    ApplicationArea = All;
                }
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                }
                field(Pager; Rec.Pager)
                {
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                }
                field("Company E-Mail"; Rec."Company E-Mail")
                {
                    ApplicationArea = All;
                }
                field("Alt. Address Code"; Rec."Alt. Address Code")
                {
                    ApplicationArea = All;
                }
                field("Alt. Address Start Date"; Rec."Alt. Address Start Date")
                {
                    ApplicationArea = All;
                }
                field("Alt. Address End Date"; Rec."Alt. Address End Date")
                {
                    ApplicationArea = All;
                }
            }
            group(Posting)
            {
                Caption = 'Posting';
                field(Class; Rec.Class)
                {
                    ApplicationArea = All;
                }
                field("Employee Group"; Rec."Employee Group")
                {
                    LookupPageID = "Employee Groups Survey.";
                    ApplicationArea = All;
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    LookupPageID = "Posting Groups Survey.";
                    ApplicationArea = All;
                }
                field("Acct. type"; Rec."Acct. type")
                {
                    ApplicationArea = All;
                }
                field("Acct. No"; Rec."Acct. No")
                {
                    ApplicationArea = All;
                }
                field("Region Code"; Rec."Region Code")
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
            }
            group(Payment)
            {
                Caption = 'Payment';
                field("Mode of payment"; Rec."Mode of payment")
                {
                    ApplicationArea = All;
                }
                field(Bank; Rec.Bank)
                {
                    Lookup = true;
                    LookupPageID = "Banks.";
                    ApplicationArea = All;
                }
                field("Bank Account"; Rec."Bank Account")
                {
                    ApplicationArea = All;
                }
                field("No of Days"; Rec."No of Days")
                {
                    ApplicationArea = All;
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
                    RunPageLink = "Table Name" = CONST(Employee),
                                  "No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action("&Picture")
                {
                    Caption = '&Picture';
                    RunObject = Page "Employee Picture";
                    RunPageLink = "No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action("&Alternative Addresses")
                {
                    Caption = '&Alternative Addresses';
                    RunObject = Page "Alternative Address List";
                    RunPageLink = "Employee No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action("&Relatives")
                {
                    Caption = '&Relatives';
                    RunObject = Page "Employee Relatives";
                    RunPageLink = "Employee No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action("Mi&sc. Article Information")
                {
                    Caption = 'Mi&sc. Article Information';
                    RunObject = Page "Misc. Article Information";
                    RunPageLink = "Employee No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action("&Confidential Information")
                {
                    Caption = '&Confidential Information';
                    RunObject = Page "Confidential Information";
                    RunPageLink = "Employee No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action("Q&ualifications")
                {
                    Caption = 'Q&ualifications';
                    RunObject = Page "Employee Qualifications";
                    RunPageLink = "Employee No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action("A&bsences")
                {
                    Caption = 'A&bsences';
                    RunObject = Page "Employee Absences";
                    RunPageLink = "Employee No." = FIELD("No.");
                    ApplicationArea = All;
                }
                separator(Action117)
                {
                }
                action("Absences by Ca&tegories")
                {
                    Caption = 'Absences by Ca&tegories';
                    RunObject = Page "Empl. Absences by Categories";
                    RunPageLink = "No." = FIELD("No."),
                                  "Employee No. Filter" = FIELD("No.");
                    ApplicationArea = All;
                }
                action("Misc. Articles &Overview")
                {
                    Caption = 'Misc. Articles &Overview';
                    RunObject = Page "Misc. Articles Overview";
                    ApplicationArea = All;
                }
                action("Co&nfidential Info. Overview")
                {
                    Caption = 'Co&nfidential Info. Overview';
                    RunObject = Page "Confidential Info. Overview";
                    ApplicationArea = All;
                }
            }
            group("&Function")
            {
                Caption = '&Function';
                action("Create New Payslip")
                {
                    Caption = 'Create New Payslip';
                    RunObject = Report "Monthly Payslip";
                    ApplicationArea = All;
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
        if StateRec.Get(Rec.State) then StateName := StateRec.Name;
    end;
}

