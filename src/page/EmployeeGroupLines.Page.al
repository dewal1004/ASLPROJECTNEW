page 50016 "Employee Group Lines."
{
    PageType = ListPart;
    SourceTable = "Payroll-Employee Group Lines.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Employee Name"; "Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Employee Group"; "Employee Group")
                {
                    ApplicationArea = All;
                }
                field("E/D Code"; "E/D Code")
                {
                    ApplicationArea = All;
                    //  Lookup = true;
                    //LookupPageID = "E/D Survey";
                }
                field(GetEDNameF; GetEDName)
                {
                    Caption = 'Payslip Text';
                    ApplicationArea = All;
                }
                field(Units; Units)
                {
                    ApplicationArea = All;
                }
                field(Rate; Rate)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                }
                field(Flag; Flag)
                {
                    ApplicationArea = All;
                }
                field("Default Amount"; "Default Amount")
                {
                    DecimalPlaces = 0 :;
                    Editable = false;
                    NotBlank = true;
                    ApplicationArea = All;
                    // Numeric = false;
                }
                field("Old Default Amount"; "Old Default Amount")
                {
                    ApplicationArea = All;
                }
                field("Date Changed"; "Date Changed")
                {
                    ApplicationArea = All;
                }
                field("Payslip Group ID"; "Payslip Group ID")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    var
        EDRec: Record "Payroll-E/D Codes.";

    //[Scope('OnPrem')]
    procedure GetEDName(): Text[30]
    begin
        if EDRec.Get("E/D Code") then exit(EDRec."Payslip Text");
    end;
}

