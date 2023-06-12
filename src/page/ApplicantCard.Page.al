page 50023 "Applicant Card"
{
    // "Dimension Value".Code WHERE (Global Dimension No.=CONST(1))

    PageType = Card;
    SourceTable = Applicants;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                }
                field(Surname; Rec.Surname)
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field("Address 2"; Rec."Address 2")
                {
                    ApplicationArea = All;
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                }
                field("Country Code"; Rec."Country Code")
                {
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Advert Ref No"; Rec."Advert Ref No")
                {
                    ApplicationArea = All;
                }
                field("Modified By"; Rec."Modified By")
                {
                    ApplicationArea = All;
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field(Sex; Rec.Sex)
                {
                    ApplicationArea = All;
                }
                field("Birth Date"; Rec."Birth Date")
                {
                    ApplicationArea = All;
                }
                field("Position Applied For"; Rec."Position Applied For")
                {
                    ApplicationArea = All;
                }
                field("Position Description"; Rec."Position Description")
                {
                    ApplicationArea = All;
                }
            }
            group(Communication)
            {
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                }
                field(Pager; Rec.Pager)
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
            group(Administration)
            {
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
            group(Interview)
            {
                field("Application Status"; Rec."Application Status")
                {
                    ApplicationArea = All;
                }
                field(Staffed; Rec.Staffed)
                {
                    ApplicationArea = All;
                }
                field("Date Accepted/Rejected"; Rec."Date Accepted/Rejected")
                {
                    ApplicationArea = All;
                }
                field("Date Offer Made"; Rec."Date Offer Made")
                {
                    ApplicationArea = All;
                }
                field("Agreed Start Date"; Rec."Agreed Start Date")
                {
                    ApplicationArea = All;
                }
                field("Assigned Employee No"; Rec."Assigned Employee No")
                {
                    ApplicationArea = All;
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Employee Group"; Rec."Employee Group")
                {
                    ApplicationArea = All;
                }
                field("First Interview Date"; Rec."First Interview Date")
                {
                    ApplicationArea = All;
                }
                field("First Interview Result"; Rec."First Interview Result")
                {
                    ApplicationArea = All;
                }
                field("First Interview Maximum"; Rec."First Interview Maximum")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            group(Picture)
            {
                action(Import)
                {
                    ApplicationArea = All;
                }
                action("E&xport")
                {
                    ApplicationArea = All;
                }
                action(Delete)
                {
                    ApplicationArea = All;
                }
                group(Applicant)
                {
                    action("&List")
                    {
                        ApplicationArea = All;
                    }
                    action("Co&mments")
                    {
                        Caption = 'Co&mments';
                        ApplicationArea = All;
                    }
                    action("&Picture")
                    {
                        ApplicationArea = All;
                    }
                    action("&Alternative Addresses")
                    {
                        ApplicationArea = All;
                    }
                    action("Q&ualifications")
                    {
                        ApplicationArea = All;
                    }
                    action("Qualifications Overvie&w")
                    {
                        ApplicationArea = All;
                    }
                    action("Applicant Relatives/Guarrantor")
                    {
                        ApplicationArea = All;
                    }
                    action("----------------")
                    {
                        ApplicationArea = All;
                    }
                    action("Con&vert to Staff")
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
    }

    var
        //*** Mail: Codeunit Mail;
        HumanRecSetup: Record "Human Resources Setup";
        Applicant: Record Applicants;
        EmploRec: Record Employee;
        NoSeriesRec: Record "No. Series Line";
        Numcode: Code[20];
        NewEmpNum: Code[20];
        ApplicRec: Record Applicants;
        ContractRec: Record "Employment Contract";
        "P Description": Text[30];
        RegName: Text[60];
        CCName: Text[60];
        BCName: Text[60];
        RegRec: Record "Business Unit";
        BCRec: Record "Dimension Value";
        CCRec: Record "Dimension Value";
        ScoreTxt: Code[5];
        Avg1: Decimal;
        Avg2: Decimal;
        Avg3: Decimal;
        PictureExists: Boolean;
        GloDemCd: Record "Analysis View";

    [Scope('OnPrem')]
    procedure CheckInterView1()
    begin
        /*  BEGIN
            IF ("First Interview Date"=0D) OR ("First Interview Result"=0) OR ("First Interview Maximum" = 0)THEN
             BEGIN
              CurrForm."Second Interview Date".ENABLED:= FALSE;
              CurrForm."Second Interview Result".ENABLED := FALSE;
              CurrForm."Final Interview Date".ENABLED:= FALSE;
              CurrForm."Final Interview Result".ENABLED := FALSE;
              CurrForm."Second Interview Maximum".ENABLED := FALSE;
              CurrForm."Final Interview Maximum".ENABLED := FALSE;
             END
            ELSE
             BEGIN
              CurrForm."Second Interview Date".ENABLED:= TRUE;
              CurrForm."Second Interview Result".ENABLED := TRUE;
              CurrForm."Second Interview Maximum".ENABLED := TRUE;
              CheckInterView2
             END
          END;
         */

    end;

    [Scope('OnPrem')]
    procedure CheckInterView2()
    begin
        /*  BEGIN
            IF ("First Interview Date"=0D) OR ("First Interview Result"=0) OR ("First Interview Maximum" = 0) OR
               ("Second Interview Date"=0D) OR ("Second Interview Result"=0) OR ("Second Interview Maximum" = 0) THEN
             BEGIN
              CurrForm."Final Interview Date".ENABLED:= FALSE;
              CurrForm."Final Interview Result".ENABLED := FALSE;
              CurrForm."Final Interview Maximum".ENABLED := FALSE;
             END
            ELSE
             BEGIN
              CurrForm."Final Interview Date".ENABLED:= TRUE;
              CurrForm."Final Interview Result".ENABLED := TRUE;
              CurrForm."Final Interview Maximum".ENABLED := TRUE;
             END
        
          END;
         */

    end;

    [Scope('OnPrem')]
    procedure CheckInterView3()
    begin
    end;

    [Scope('OnPrem')]
    procedure GetAverage(Num: Integer): Decimal
    begin
    end;
}

