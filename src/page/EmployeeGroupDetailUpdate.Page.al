page 50072 "Employee Group Detail Update"
{
    Caption = 'Employee Group Detail Update';
    PageType = Worksheet;
    SourceTable = "Payroll-Employee Group Lines.";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Employee Group"; Rec."Employee Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Group field.';
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Name field.';
                }
                field("E/D Code"; Rec."E/D Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the E/D Code field.';
                }
                field("Default Amount"; Rec."Default Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Default Amount field.';
                }
                field("Old Default Amount"; Rec."Old Default Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Old Default Amount field.';
                }
                field(Rate; Rec.Rate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rate field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field(Units; Rec.Units)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Units field.';
                }
            }
        }
    }
}
