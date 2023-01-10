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
                field("No."; "No.")
                {
                }
                field(Title; Title)
                {
                }
                field(Surname; Surname)
                {
                }
                field("First Name"; "First Name")
                {
                }
                field("Middle Name"; "Middle Name")
                {
                }
                field(Address; Address)
                {
                }
                field("Address 2"; "Address 2")
                {
                }
                field("Post Code"; "Post Code")
                {
                }
                field("Country Code"; "Country Code")
                {
                }
                field("Phone No."; "Phone No.")
                {
                }
                field("Advert Ref No"; "Advert Ref No")
                {
                }
                field("Modified By"; "Modified By")
                {
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Sex; Sex)
                {
                }
                field("Birth Date"; "Birth Date")
                {
                }
                field("Position Applied For"; "Position Applied For")
                {
                }
                field("Position Description"; "Position Description")
                {
                }
            }
            group(Communication)
            {
                field("Mobile Phone No."; "Mobile Phone No.")
                {
                }
                field(Pager; Pager)
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
            group(Administration)
            {
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
            group(Interview)
            {
                field("Application Status"; "Application Status")
                {
                }
                field(Staffed; Staffed)
                {
                }
                field("Date Accepted/Rejected"; "Date Accepted/Rejected")
                {
                }
                field("Date Offer Made"; "Date Offer Made")
                {
                }
                field("Agreed Start Date"; "Agreed Start Date")
                {
                }
                field("Assigned Employee No"; "Assigned Employee No")
                {
                }
                field("Posting Group"; "Posting Group")
                {
                }
                field("Employee Group"; "Employee Group")
                {
                }
                field("First Interview Date"; "First Interview Date")
                {
                }
                field("First Interview Result"; "First Interview Result")
                {
                }
                field("First Interview Maximum"; "First Interview Maximum")
                {
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
                }
                action("E&xport")
                {
                }
                action(Delete)
                {
                }
                group(Applicant)
                {
                    action("&List")
                    {
                    }
                    action("Co&mments")
                    {
                        Caption = 'Co&mments';
                    }
                    action("&Picture")
                    {
                    }
                    action("&Alternative Addresses")
                    {
                    }
                    action("Q&ualifications")
                    {
                    }
                    action("Qualifications Overvie&w")
                    {
                    }
                    action("Applicant Relatives/Guarrantor")
                    {
                    }
                    action("----------------")
                    {
                    }
                    action("Con&vert to Staff")
                    {
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

    //[Scope('OnPrem')]
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

    //[Scope('OnPrem')]
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

    //[Scope('OnPrem')]
    procedure CheckInterView3()
    begin
    end;

    //[Scope('OnPrem')]
    procedure GetAverage(Num: Integer): Decimal
    begin
    end;
}

