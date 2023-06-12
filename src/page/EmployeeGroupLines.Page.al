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
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Employee Group"; Rec."Employee Group")
                {
                    ApplicationArea = All;
                }
                field("E/D Code"; Rec."E/D Code")
                {
                    ApplicationArea = All;
                    //  Lookup = true;
                    //LookupPageID = "E/D Survey";
                }
                field(GetEDName; GetEDName)
                {
                    Caption = 'Payslip Text';
                    ApplicationArea = All;
                }
                field(Units; Rec.Units)
                {
                    ApplicationArea = All;
                }
                field(Rate; Rec.Rate)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(Flag; Rec.Flag)
                {
                    ApplicationArea = All;
                }
                field("Default Amount"; Rec."Default Amount")
                {
                    DecimalPlaces = 0 :;
                    Editable = false;
                    NotBlank = true;
                    ApplicationArea = All;
                    // Numeric = false;
                }
                field("Old Default Amount"; Rec."Old Default Amount")
                {
                    ApplicationArea = All;
                }
                field("Date Changed"; Rec."Date Changed")
                {
                    ApplicationArea = All;
                }
                field("Payslip Group ID"; Rec."Payslip Group ID")
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

    [Scope('OnPrem')]
    procedure GetEDName(): Text[30]
    begin
        if EDRec.Get(Rec."E/D Code") then exit(EDRec."Payslip Text");
    end;
}

