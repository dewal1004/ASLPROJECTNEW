page 50045 "Casual Employees Card"
{
    DataCaptionFields = "No.", "Employee name";
    PageType = Card;
    SourceTable = "Casual Employees";
    SourceTableView = SORTING("No.");

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field("Employee name"; "Employee name")
                {
                    ApplicationArea = All;
                }
                field(Address; Address)
                {
                    ApplicationArea = All;
                }
                field(Sex; Sex)
                {
                    ApplicationArea = All;
                }
                field("Date of Birth"; "Date of Birth")
                {
                    ApplicationArea = All;
                }
                field("Job Code"; "Job Code")
                {
                    ApplicationArea = All;
                }
                field(Class; Class)
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field(Region; Region)
                {
                    ApplicationArea = All;
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                    ApplicationArea = All;
                }
            }
            group(Admin)
            {
                Caption = 'Admin';
                field("Date Employed"; "Date Employed")
                {
                    ApplicationArea = All;
                }
                field("Leaving Date"; "Leaving Date")
                {
                    ApplicationArea = All;
                }
                field(Blocked; Blocked)
                {
                    ApplicationArea = All;
                }
                field(Status; Status)
                {
                    ApplicationArea = All;
                }
                field("Inactive Date"; "Inactive Date")
                {
                    ApplicationArea = All;
                }
                field("Cause of Inactivity Code"; "Cause of Inactivity Code")
                {
                    ApplicationArea = All;
                }
                field("Disengagement Date"; "Disengagement Date")
                {
                    ApplicationArea = All;
                }
                field("Disengagement Grounds"; "Disengagement Grounds")
                {
                    ApplicationArea = All;
                }
            }
            group(Personal)
            {
                Caption = 'Personal';
                field("Next of Kin Name"; "Next of Kin Name")
                {
                    ApplicationArea = All;
                }
                field("Next of Kin Address"; "Next of Kin Address")
                {
                    ApplicationArea = All;
                }
                field(Guarrantor; Guarrantor)
                {
                    Caption = 'Guarrantor No 1';
                    ApplicationArea = All;
                }
                field("Guarrantor Address"; "Guarrantor Address")
                {
                    ApplicationArea = All;
                }
                field(Guarrantor2; Guarrantor2)
                {
                    Caption = 'Guarrantor No 2';
                    ApplicationArea = All;
                }
                field("Guarrantor Address2"; "Guarrantor Address2")
                {
                    Caption = 'Guarrantor Address ';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Casual Employee")
            {
                Caption = 'Casual Employee';
                action("&Survey")
                {
                    Caption = '&Survey';
                    RunObject = Page "Casual Employees Survey";
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnClosePage()
    begin
        ClearAll;
    end;
}

