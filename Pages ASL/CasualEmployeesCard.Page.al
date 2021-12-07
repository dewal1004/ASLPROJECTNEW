page 50045 "Casual Employees Card"
{
    DataCaptionFields = "No.", "Employee name";
    PageType = Card;
    SourceTable = "Casual Employees";
    SourceTableView = SORTING ("No.");

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
                        if AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field("Employee name"; "Employee name")
                {
                }
                field(Address; Address)
                {
                }
                field(Sex; Sex)
                {
                }
                field("Date of Birth"; "Date of Birth")
                {
                }
                field("Job Code"; "Job Code")
                {
                }
                field(Class; Class)
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field(Region; Region)
                {
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
            }
            group(Admin)
            {
                Caption = 'Admin';
                field("Date Employed"; "Date Employed")
                {
                }
                field("Leaving Date"; "Leaving Date")
                {
                }
                field(Blocked; Blocked)
                {
                }
                field(Status; Status)
                {
                }
                field("Inactive Date"; "Inactive Date")
                {
                }
                field("Cause of Inactivity Code"; "Cause of Inactivity Code")
                {
                }
                field("Disengagement Date"; "Disengagement Date")
                {
                }
                field("Disengagement Grounds"; "Disengagement Grounds")
                {
                }
            }
            group(Personal)
            {
                Caption = 'Personal';
                field("Next of Kin Name"; "Next of Kin Name")
                {
                }
                field("Next of Kin Address"; "Next of Kin Address")
                {
                }
                field(Guarrantor; Guarrantor)
                {
                    Caption = 'Guarrantor No 1';
                }
                field("Guarrantor Address"; "Guarrantor Address")
                {
                }
                field(Guarrantor2; Guarrantor2)
                {
                    Caption = 'Guarrantor No 2';
                }
                field("Guarrantor Address2"; "Guarrantor Address2")
                {
                    Caption = 'Guarrantor Address ';
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
                }
            }
        }
    }

    trigger OnClosePage()
    begin
        ClearAll;
    end;
}

