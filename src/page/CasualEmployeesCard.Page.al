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
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field("Employee name"; Rec."Employee name")
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field(Sex; Rec.Sex)
                {
                    ApplicationArea = All;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                }
                field("Job Code"; Rec."Job Code")
                {
                    ApplicationArea = All;
                }
                field(Class; Rec.Class)
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field(Region; Rec.Region)
                {
                    ApplicationArea = All;
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                }
            }
            group(Admin)
            {
                Caption = 'Admin';
                field("Date Employed"; Rec."Date Employed")
                {
                    ApplicationArea = All;
                }
                field("Leaving Date"; Rec."Leaving Date")
                {
                    ApplicationArea = All;
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Inactive Date"; Rec."Inactive Date")
                {
                    ApplicationArea = All;
                }
                field("Cause of Inactivity Code"; Rec."Cause of Inactivity Code")
                {
                    ApplicationArea = All;
                }
                field("Disengagement Date"; Rec."Disengagement Date")
                {
                    ApplicationArea = All;
                }
                field("Disengagement Grounds"; Rec."Disengagement Grounds")
                {
                    ApplicationArea = All;
                }
            }
            group(Personal)
            {
                Caption = 'Personal';
                field("Next of Kin Name"; Rec."Next of Kin Name")
                {
                    ApplicationArea = All;
                }
                field("Next of Kin Address"; Rec."Next of Kin Address")
                {
                    ApplicationArea = All;
                }
                field(Guarrantor; Rec.Guarrantor)
                {
                    Caption = 'Guarrantor No 1';
                    ApplicationArea = All;
                }
                field("Guarrantor Address"; Rec."Guarrantor Address")
                {
                    ApplicationArea = All;
                }
                field(Guarrantor2; Rec.Guarrantor2)
                {
                    Caption = 'Guarrantor No 2';
                    ApplicationArea = All;
                }
                field("Guarrantor Address2"; Rec."Guarrantor Address2")
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

