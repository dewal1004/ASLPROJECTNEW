pageextension 50353 pageextension50353 extends "Job Card"
{
    layout
    {

        addafter("No.")
        {
            field(Vessel; Vessel)
            {
                ApplicationArea = All;
            }
            field("Vessel Type"; "Vessel Type")
            {
                Importance = Additional;
                ApplicationArea = All;
            }
            field("Voyage No."; "Voyage No.")
            {
                ApplicationArea = All;
            }
        }
        addafter("Bill-to Customer No.")
        {
            field("Fishing Country Code"; rec."Fishing Country Code") { ApplicationArea = all; }
            field("Voyage Ended"; rec."Voyage Ended") { ApplicationArea = all; }
            field(ETA; rec."Starting Date") { ApplicationArea = all; }
            field(ETD; rec."Ending Date") { ApplicationArea = all; }
            field("Voyage Sea Days"; rec."Voyage Sea Days") { ApplicationArea = all; }
        }
        addafter(Blocked)
        {
            field("No. of Deck Hands"; "No. of Deck Hands")
            {
                ApplicationArea = All;
            }
        }
        addfirst(Posting)
        {
            field(Control170; "Lost Days")
            {
                ApplicationArea = All;
            }
            field("Fuel Consumed"; "Fuel Consumed")
            {
                ApplicationArea = All;
            }
            field("Fuel Days"; "Fuel Days")
            {
                ApplicationArea = All;
            }
            field("Fuel Average"; "Fuel Average")
            {
                ApplicationArea = All;
            }
            field("Global Dimension 2 Code"; "Global Dimension 2 Code")
            {
                ApplicationArea = All;
            }
        }
        moveafter("Starting Date"; "Person Responsible", "Job Posting Group")
        movefirst(Duration; "Creation Date")


        addfirst(Duration)
        {
            field("Deductible Lost Days"; "Deductible Lost Days")
            {
                ApplicationArea = All;
            }
            field("Cycle Day (Manual)"; "Cycle Day (Manual)")
            {
                ApplicationArea = All;
            }
            field("Fishing Day (Manual)"; "Fishing Day (Manual)")
            {
                ApplicationArea = All;
            }
            field("Lost At Sea (Manual)"; "Lost At Sea (Manual)")
            {
                ApplicationArea = All;
            }
            field("Port Day (Manual)"; "Port Day (Manual)")
            {
                ApplicationArea = All;
            }
            field("Price Group Code"; "Price Group Code")
            {
                ApplicationArea = All;
            }
        }
        addafter(Duration)
        {
            group(Incentive)
            {
                Caption = 'Incentive';
                field(Points; Points)
                {
                    ApplicationArea = All;
                }
                field("Incentive Points Determinant"; "Incentive Points Determinant")
                {
                    ApplicationArea = All;
                }
                field("Incentive Rate"; "Incentive Rate")
                {
                    ApplicationArea = All;
                }
                field("Incentive (Pt. Based)"; "Incentive (Pt. Based)")
                {
                    ApplicationArea = All;
                }
                field("Total Incentive"; "Total Incentive")
                {
                    ApplicationArea = All;
                }
                field("Add/Ded. Crew"; "Add/Ded. Crew")
                {
                    ApplicationArea = All;
                }
                field("Net Incentive"; "Net Incentive")
                {
                    ApplicationArea = All;
                }
                field("Incentive (Hook Fish)"; "Incentive (Hook Fish)")
                {
                    ApplicationArea = All;
                }
                field("Points Actual"; "Points Actual")
                {
                    ApplicationArea = All;
                }
                field("Incentive Pts Determt Actual"; "Incentive Pts Determt Actual")
                {
                    ApplicationArea = All;
                }
                field("Incentive Rate Actual"; "Incentive Rate Actual")
                {
                    ApplicationArea = All;
                }
                field("Incentive (Pt. Based) Actual"; "Incentive (Pt. Based) Actual")
                {
                    ApplicationArea = All;
                }
                field("Total Incentive Actual"; "Total Incentive Actual")
                {
                    ApplicationArea = All;
                }
                field("Deductible Lost Days (Incentiv"; "Deductible Lost Days (Incentiv")
                {
                    ApplicationArea = All;
                }
                field("Net Incentive Actual"; "Net Incentive Actual")
                {
                    ApplicationArea = All;
                }

                group(Control560)
                {
                    ShowCaption = false;
                    // Visible = IsCountyVisible;
                }
            }
        }

        moveafter("Bill-to Name"; "Bill-to Post Code", "Bill-to City", "Bill-to Country/Region Code", "Bill-to Contact", "Last Date Modified", "Project Manager")

        addafter("Bill-to Name")
        {
            part(JobTaskLines1; "Job Task Lines Subform")
            {
                ApplicationArea = Jobs;
                Caption = 'Tasks';
                SubPageLink = "Job No." = FIELD("No.");
                SubPageView = SORTING("Job Task No.")
                              ORDER(Ascending);
            }
        }
        addafter("Calc. Recog. Costs G/L Amount")
        {
            field("Ves Age"; "Ves Age")
            {
                ApplicationArea = All;
            }
            field("Nxt Ovh"; "Nxt Ovh")
            {
                ApplicationArea = All;
            }
            field("Lst Ovh"; "Lst Ovh")
            {
                ApplicationArea = All;
            }
            field("Nxt Ddk"; "Nxt Ddk")
            {
                ApplicationArea = All;
            }
            field("Brnd Pk"; "Brnd Pk")
            {
                ApplicationArea = All;
            }
            field("Inner P"; "Inner P")
            {
                ApplicationArea = All;
            }
            field(Grades; Grades)
            {
                ApplicationArea = All;
            }
            field(xx1; xx1)
            {
                ApplicationArea = All;
            }
            field(Deratg; Deratg)
            {
                ApplicationArea = All;
            }
            field("Crab CW"; "Crab CW")
            {
                ApplicationArea = All;
            }
            field("WT GL/W"; "WT GL/W")
            {
                ApplicationArea = All;
            }
            field("Rad Tel"; "Rad Tel")
            {
                ApplicationArea = All;
            }
            field("R Flare"; "R Flare")
            {
                ApplicationArea = All;
            }
            field("Str Lic"; "Str Lic")
            {
                ApplicationArea = All;
            }
            field("Life Rf"; "Life Rf")
            {
                ApplicationArea = All;
            }
            field("Fsh Ins"; "Fsh Ins")
            {
                ApplicationArea = All;
            }
            field("Fsh Dst"; "Fsh Dst")
            {
                ApplicationArea = All;
            }
            field("Ins Sur"; "Ins Sur")
            {
                ApplicationArea = All;
            }
            field("Dst Sur"; "Dst Sur")
            {
                ApplicationArea = All;
            }
            field("Pow Ext"; "Pow Ext")
            {
                ApplicationArea = All;
            }
            field("Fom Ext"; "Fom Ext")
            {
                ApplicationArea = All;
            }
            field("CO2 Ext"; "CO2 Ext")
            {
                ApplicationArea = All;
            }
            field(Parchut; Parchut)
            {
                ApplicationArea = All;
            }
            field("E.U. No"; "E.U. No")
            {
                ApplicationArea = All;
            }
            field(NoCatchExist; NoCatchExist)
            {
                ApplicationArea = All;
            }
            field("Gen. Product PG Filter"; "Gen. Product PG Filter")
            {
                ApplicationArea = All;
            }
            field(AvgPtSortBay; AvgPtSortBay)
            {
                ApplicationArea = All;
            }
            field("Comsumed Value"; "Comsumed Value")
            {
                ApplicationArea = All;
            }
            field("Product Quantity"; "Product Quantity")
            {
                ApplicationArea = All;
            }
            field("Kilo Actual"; "Kilo Actual")
            {
                ApplicationArea = All;
            }
            field(Checked; Checked)
            {
                ApplicationArea = All;
            }
            field("Revenue per Sea Day"; "Revenue per Sea Day")
            {
                ApplicationArea = All;
            }
        }

        addafter("Bill-to Contact No.")
        {
            field(Captain; Captain)
            {
                Caption = 'Captain Name';
                ApplicationArea = All;
            }
            field(Captain97940; Rec.Captain)
            {
                ApplicationArea = All;
            }
            field(Complete54269; Rec.Complete)
            {
                ApplicationArea = All;
            }
        }
        addafter("Starting Date")
        {
            field("Sea Days"; rec."Sea Days")
            {
                ApplicationArea = All;
            }
        }

        moveafter("Net Incentive Actual"; "Bill-to Address", "Bill-to Address 2")
        moveafter("Bill-to Customer No."; "Person Responsible")
        moveafter("Search Description"; Status)
        moveafter(Posting; "WIP Method")
        moveafter("Apply Usage Link"; "% of Overdue Planning Lines")
        moveafter("% of Overdue Planning Lines"; "% Completed")
        moveafter("Starting Date"; "Creation Date")
        moveafter("% Invoiced"; Duration)

        moveafter(ETA; "Starting Date")
        moveafter("Voyage Ended"; "Ending Date")
        moveafter("Sea Days"; Blocked)


        modify("Bill-to Customer No.") { Caption = 'Company Name'; }
        modify("Bill-to Name") { Editable = true; }
        modify(Blocked) { Editable = false; }
        modify(Control56) { Visible = false; }
        modify("Person Responsible") { Importance = Promoted; }
        modify("Creation Date")
        {
            Caption = 'ETA';
            Importance = Promoted;
        }
        modify(Status)
        {
            Importance = Promoted;
            OptionCaption = 'Budget,Preparation,Voyage Start,Close Job Card';
        }
        modify("Bill-to Address")
        {
            ApplicationArea = Jobs;
            Importance = Additional;
            QuickEntry = false;
            ToolTip = 'Specifies the address of the customer to whom you will send the invoice.';
        }
        modify("Bill-to Address 2")
        {
            ApplicationArea = Jobs;
            Importance = Additional;
            QuickEntry = false;
            ToolTip = 'Specifies an additional line of the address.';
        }
        modify("Bill-to Post Code")
        {
            ApplicationArea = Jobs;
            Importance = Additional;
            QuickEntry = false;
            ToolTip = 'Specifies the postal code of the customer who pays for the job.';
        }
        modify("Bill-to City")
        {
            ApplicationArea = Jobs;
            Importance = Additional;
            QuickEntry = false;
            ToolTip = 'Specifies the city of the address.';
        }
        modify("Bill-to Country/Region Code")
        {
            ApplicationArea = Jobs;
            Importance = Additional;
            QuickEntry = false;
            ToolTip = 'Specifies the country/region code of the customer''s billing address.';

            trigger OnafterValidate()
            begin
                // IsCountyVisible := FormatAddress.UseCounty("Bill-to Country/Region Code");
            end;
        }
        modify("Bill-to Contact")
        {
            ApplicationArea = Jobs;
            Importance = Additional;
            ToolTip = 'Specifies the name of the contact person at the customer who pays for the job.';
        }
        modify("Last Date Modified")
        {
            ApplicationArea = Jobs;
            ToolTip = 'Specifies when the job card was last modified.';
        }
        modify("Project Manager")
        {
            ApplicationArea = Jobs;
            ToolTip = 'Specifies the person who is assigned to manage the job.';
            // Visible = JobSimplificationAvailable;
        }

    }

    actions
    {
        modify(JobPlanningLines)
        {
            Visible = true;
        }
        modify("Plan&ning")
        {
            Visible = true;
        }
        modify("Resource &Allocated per Job")
        {

            //Unsupported feature: Property Modification (RunObject) on ""Resource &Allocated per Job"(Action 65)".


            //Unsupported feature: Property Modification (Image) on ""Resource &Allocated per Job"(Action 65)".

            Promoted = true;
        }

        modify("Copy Job Tasks &to...")
        {
            Caption = 'Job - Transaction Detail 2';
            Visible = false;


        }
        modify(Action26)
        {

            Caption = 'Skipper/Vessel Performance';




        }
        modify("<Action82>")
        {
            Caption = 'Organoleptic Report';
            visible = True;

        }
        modify("W&IP")
        {
            Visible = false;
        }
        modify("&Prices")
        {
            Visible = false;
        }
        modify("&Copy")
        {
            Visible = false;
        }
        modify("<Action83>")
        {
            Visible = false;
        }


        addfirst(Navigation)
        {
            group("&Ending")
            {
                Caption = '&Ending';
                Image = ExecuteBatch;
                action("Voyage End (Consumption)")
                {
                    Caption = 'Voyage End (Consumption)';
                    Image = Apply;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        SetFilter("No.", "No.");
                        REPORT.Run(50047, true, true, Rec);
                    end;
                }
                action("Voyage End (Catch)")
                {
                    Caption = 'Voyage End (Catch)';
                    Image = Apply;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        SetFilter("No.", "No.");
                        REPORT.Run(50032, true, true, Rec);
                    end;
                }
            }
        }
        addfirst("&Job")
        {
            action("Lost Days")
            {
                Caption = 'Lost Days';
                Image = TaskList;
                Promoted = true;
                RunObject = Page "Lost Days";
                RunPageLink = "Table Name" = CONST(Job),
                              "No." = FIELD("No."),
                              Type = CONST(Narration);
                ApplicationArea = All;
            }
            action("Voyage Default Catch")
            {
                Caption = 'Voyage Default Catch';
                Image = TaskList;
                RunObject = Page "Voyage Catch Default";
                RunPageLink = "Table Name" = CONST(Job),
                              "No." = FIELD("No.");
                ApplicationArea = All;
            }
            action("Register Catch")
            {
                Caption = 'Register Catch';
                Image = TaskList;
                RunObject = Page "Recurring Job Jnl.";
                ApplicationArea = All;
            }
            separator(Action38)
            {
            }
        }
        addfirst("Plan&ning")
        {
            action("Job Budget")
            {
                Caption = 'Job Budget';
                Visible = false;
                ApplicationArea = All;
            }

        }
        addfirst(Processing)
        {
            action("Organoleptic Analysis")
            {
                Caption = 'Organoleptic Analysis';
                Image = AnalysisView;
                Promoted = true;
                RunObject = Page "Organoleptic Sheet";
                RunPageLink = "Table Name" = CONST(Job),
                              "No." = FIELD("No."),
                              Type = CONST(Organoleptic);
                ApplicationArea = All;
            }
            action("Stock on Board")
            {
                Caption = 'stock on board';
                Image = Period;
                Promoted = true;
                RunObject = Page "Daily B/Up by Loc/Ves PGrp";
                ApplicationArea = All;
            }
        }
        addfirst(Reporting)
        {
            action("Points Summary")
            {
                Caption = 'Points Summary';
                Image = "Report";
                ApplicationArea = All;
            }
            action("New Daily Points")
            {
                Caption = 'New Daily Points';
                Image = "Report";
                RunObject = Report "New Daily Points Report Fast";
                ApplicationArea = All;
            }
            action("Consolidated Narration")
            {
                Caption = 'Consolidated Narration';
                Image = "Report";
                RunObject = Report "Consolidated Narration";
                ApplicationArea = All;
            }
        }
        addafter("<Action83>")
        {
            action("Daily BreakUp by Vess Summary")
            {
                Caption = 'Daily BreakUp by Vess Summary';
                Image = "Report";
                RunObject = Report "Daily BreakUp by Vess Summary";
                ApplicationArea = All;
            }
            action("Daily BreakUp by Vessel Rep 1")
            {
                Caption = 'Daily BreakUp by Vessel Rep 1';
                Image = "Report";
                RunObject = report "Daily Break Up By Vessel";
                ApplicationArea = All;
            }
            action("Daily BreakUp by Vessel Rep 2")
            {
                Caption = 'Daily BreakUp by Vessel Rep 2';
                Image = "Report";
                RunObject = Report "Daily BreakUp by Vessel Rep 2";
                ApplicationArea = All;
            }
            action("Daily BreakUp by Vessel Rep 3")
            {
                Caption = 'Daily BreakUp by Vessel Rep 3';
                Image = "Report";
                RunObject = Report "Daily BreakUp by Vessel Rep 3";
                ApplicationArea = All;
            }
            action("Daily BreakUp by Vessel Rep 4")
            {
                Caption = 'Daily BreakUp by Vessel Rep 4';
                Image = "Report";
                RunObject = Report "Daily BreakUp by Vessel Rep 4";
                ApplicationArea = All;
            }
            action("Vessel Daily Log")
            {
                Caption = 'Vessel Daily Log';
                Image = "Report";
                RunObject = Report "Vessel Daily Log";
                ApplicationArea = All;
            }
        }
    }

    var
        Job: Record Job;
        JobSetup: Record "Jobs Setup";
        JobTask: Record "Job Task";
        IncentiveLookUp: Record "Payroll-Lookup Lines.";
        "Incentive Days": Decimal;
        "---": Integer;
}


// modify(ActionContainer1900000004)
// {
//     Caption = '   Operations';
//     //Unsupported feature: Property Modification (Name) on "ActionContainer1900000004(Action 1900000004)".
// }

//Unsupported feature: Property Modification (Level) on ""Copy Job Tasks &from..."(Action 31)".
//Unsupported feature: Property Modification (Level) on ""Copy Job Tasks &to..."(Action 27)".


//Unsupported feature: Property Modification (Name) on ""Copy Job Tasks &to..."(Action 27)".


//Unsupported feature: Property Modification (Image) on ""Copy Job Tasks &to..."(Action 27)".


//Unsupported feature: Property Insertion (RunObject) on ""Copy Job Tasks &to..."(Action 27)".

//Unsupported feature: Property Modification (ActionType) on "Action26(Action 26)".


//Unsupported feature: Property Modification (Name) on "Action26(Action 26)".
//Unsupported feature: Property Modification (Image) on "Action26(Action 26)".
//Unsupported feature: Property Insertion (RunObject) on "Action26(Action 26)".
//Unsupported feature: Property Modification (Level) on ""<Action82>"(Action 25)".


//Unsupported feature: Property Modification (Name) on ""<Action82>"(Action 25)".


//Unsupported feature: Property Modification (Image) on ""<Action82>"(Action 25)".


//Unsupported feature: Property Insertion (RunObject) on ""<Action82>"(Action 25)".


//Unsupported feature: Property Modification (Level) on ""<Action83>"(Action 24)".


//Unsupported feature: Property Modification (Name) on ""<Action83>"(Action 24)".


//Unsupported feature: Property Deletion (Level) on "ActionContainer1900000004(Action 1900000004)".


//Unsupported feature: Property Deletion (Ellipsis) on ""Copy Job Tasks &to..."(Action 27)".


//Unsupported feature: Property Deletion (Promoted) on ""Copy Job Tasks &to..."(Action 27)".


//Unsupported feature: Property Deletion (PromotedIsBig) on ""Copy Job Tasks &to..."(Action 27)".


//Unsupported feature: Property Deletion (PromotedCategory) on ""Copy Job Tasks &to..."(Action 27)".


//Unsupported feature: Property Deletion (Ellipsis) on ""<Action82>"(Action 25)".

//Unsupported feature: Property Deletion (ShortCutKey) on ""<Action83>"(Action 24)".


//Unsupported feature: Property Deletion (Ellipsis) on ""<Action83>"(Action 24)".


//Unsupported feature: Property Deletion (CaptionML) on ""<Action83>"(Action 24)".


//Unsupported feature: Property Deletion (Image) on ""<Action83>"(Action 24)".
//***R RunObject = Report "Points Summary VJ";   
// RunObject = Report "Daily BreakUp by Vessel Rep 1";
// moveafter("   Operations"; ActionContainer1900000006)
// moveafter(ActionContainer1900000006; "<Action83>")
// moveafter(Action24; "<Action82>")
// moveafter("Organoleptic Report"; Action26)

// // on drill down trigger for lost days calc
// CommentLine.SETCURRENTKEY("Global Dimension 1 Code","Global Dimension 2 Code",Date,
//     "Day Lost Cause","Day Lost Location",Vessel);
// CommentLine.SETRANGE(CommentLine."Table Name",CommentLine."Table Name"::Job);
// CommentLine.SETFILTER(CommentLine."No.","No.");
// IF GETFILTER("Day Lost Cause Filter") <> '' THEN
//   CommentLine.SETFILTER(CommentLine."Day Lost Cause",GETFILTER("Day Lost Cause Filter"));
// IF GETFILTER("Day Lost Location Filter") <> '' THEN
//   CommentLine.SETFILTER(CommentLine."Day Lost Location",GETFILTER("Day Lost Location Filter"));
// IF GETFILTER("Date Filter") <> '' THEN
//   CommentLine.SETFILTER(CommentLine.Date,GETFILTER("Date Filter"));
// IF CommentLine.FIND('-') THEN
//   IF FORM.RUNMODAL(0,CommentLine) = ACTION::LookupOK THEN;

//Unsupported feature: Property Modification (Id) on "NoFieldVisible(Variable 1001)".

//var
//>>>> ORIGINAL VALUE:
//NoFieldVisible : 1001;
//Variable type has not been exported.
//>>>> MODIFIED VALUE:
//NoFieldVisible : 1101;
//Variable type has not been exported.


//Unsupported feature: Property Modification (Id) on "IsCountyVisible(Variable 1002)".

//var
//>>>> ORIGINAL VALUE:
//IsCountyVisible : 1002;
//Variable type has not been exported.
//>>>> MODIFIED VALUE:
//IsCountyVisible : 1102;
//Variable type has not been exported.


//Unsupported feature: Code Insertion on "OnAfterGetRecord".

//trigger OnAfterGetRecord()
//begin
/*
SetRange("No.");
"Incentive Days":="Sea Days"-"Deductible Lost Days (Incentiv";
if JobSetup.Get then
  if "Incentive Days">0 then
    "Incentive Points Determinant":=Points*(JobSetup."Standard Sea Days"/"Incentive Days");

//IncentiveLookUp.GET;
IncentiveLookUp.SetRange(IncentiveLookUp.TableId,JobSetup."Incentive Rate Code"+"Fishing Country Code");
IncentiveLookUp.SetRange(IncentiveLookUp."Lower Amount",0,"Incentive Points Determinant");
IncentiveLookUp.SetRange(IncentiveLookUp."Upper Amount","Incentive Points Determinant",999999);
if IncentiveLookUp.Find('-') then
  Validate("Incentive Rate",IncentiveLookUp."Extract Amount");

Validate("Incentive (Pt. Based)","Incentive Rate"*Points);
//"Incentive (Hook Fish)":= "Incentive (Hook Fish)"/2;  //Incentive does not
Validate("Total Incentive","Incentive (Pt. Based)"+"Incentive (Hook Fish)");
Validate("Net Incentive","Total Incentive"+"Add/Ded. Crew");

//Actual
if JobSetup.Get then
  if "Incentive Days">0 then
   "Incentive Pts Determt Actual":="Points Actual"*(JobSetup."Standard Sea Days"/"Incentive Days");

//IncentiveLookUp.GET;
IncentiveLookUp.SetRange(IncentiveLookUp.TableId,JobSetup."Incentive Rate Code"+"Fishing Country Code");
IncentiveLookUp.SetRange(IncentiveLookUp."Lower Amount",0,"Incentive Pts Determt Actual");
IncentiveLookUp.SetRange(IncentiveLookUp."Upper Amount","Incentive Pts Determt Actual",999999);
if IncentiveLookUp.Find('-') then
  Validate("Incentive Rate Actual",IncentiveLookUp."Extract Amount");

Validate("Incentive (Pt. Based) Actual","Incentive Rate Actual"*"Points Actual");
//MESSAGE('%1 %2 %3', "Incentive (Pt. Based) Actual","Incentive Rate Actual","Points Actual");
Validate("Total Incentive Actual","Incentive (Pt. Based) Actual"+"Incentive (Hook Fish)");
Validate("Net Incentive Actual","Total Incentive Actual"+"Add/Ded. Crew");
*/
//end;

//Unsupported feature: Property Modification (Level) on ""Bill-to County"(Control 52)".


//Unsupported feature: Property Modification (Name) on ""Person Responsible"(Control 6)".


//Unsupported feature: Property Modification (SourceExpr) on ""Person Responsible"(Control 6)".


//Unsupported feature: Property Modification (ImplicitType) on ""Person Responsible"(Control 6)".

//Unsupported feature: Property Modification (Name) on ""Bill-to Name"(Control 8)".
//Unsupported feature: Property Modification (SourceExpr) on ""Bill-to Name"(Control 8)".
//Unsupported feature: Property Modification (ImplicitType) on ""Bill-to Name"(Control 8)".



//Unsupported feature: Property Modification (Name) on ""Starting Date"(Control 20)".
//Unsupported feature: Property Modification (SourceExpr) on ""Starting Date"(Control 20)".
//Unsupported feature: Property Modification (ImplicitType) on ""Starting Date"(Control 20)".
//Unsupported feature: Property Modification (Name) on ""Ending Date"(Control 22)".
//Unsupported feature: Property Modification (SourceExpr) on ""Ending Date"(Control 22)".
// modify("Bill-to Post Code")
// {
//     Visible = false;
// }
// modify("Bill-to City")
// {
//     Visible = false;
// }
// modify("Bill-to Country/Region Code")
// {
//     Visible = false;
// }
// modify("Bill-to Contact")
// {
//     Visible = false;
// }

//Unsupported feature: Property Deletion (Importance) on ""Person Responsible"(Control 6)".

// modify("Last Date Modified")
// {
//     Visible = false;
// }
// modify("Project Manager")
// {
//     Visible = false;
// }
// modify(JobTaskLines)
// {
//     Visible = false;
// }


// modify("Job Posting Group")
// {
//     Visible = false;
// }

// //Unsupported feature: Property Deletion (Importance) on ""Starting Date"(Control 20)".

// modify(Control1900000007)
// {
//     Visible = false;
// }

//Unsupported feature: Property Modification (Name) on ""Creation Date"(Control 14)".
//Unsupported feature: Property Modification (SourceExpr) on ""Creation Date"(Control 14)".


// modify("Bill-to Address")
// {
//     Visible = false;
// }
// modify("Bill-to Address 2")
// {
//     Visible = false;
// }

//Unsupported feature: Property Modification (Name) on "Blocked(Control 12)".


//Unsupported feature: Property Modification (SourceExpr) on "Blocked(Control 12)".


//Unsupported feature: Property Modification (ImplicitType) on "Blocked(Control 12)".
