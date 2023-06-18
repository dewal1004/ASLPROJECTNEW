page 50015 "Employee Group Header."
{
    PageType = Card;
    SourceTable = "Payroll-Employee Group Header.";
    Caption = 'Employee Group Header.';
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Code"; Rec.Code)
                {
                    Lookup = false;
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
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
            }
            part(Control12; "Employee Group Lines.")
            {
                SubPageLink = "Employee Group" = FIELD(Code);
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("&Functions")
            {
                Caption = '&Functions';
                action("Copy Lines from another group")
                {
                    Caption = 'Copy Lines from another group';
                    Ellipsis = false;
                    RunObject = Report "PRoll; Create next Payroll";
                    ApplicationArea = All;
                }
            }
        }
    }
}
