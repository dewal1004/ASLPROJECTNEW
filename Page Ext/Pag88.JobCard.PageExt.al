pageextension 50353 pageextension50353 extends "Job Card"
{
    layout
    {

        addafter("No.")
        {
            field(Vessel; Vessel)
            {
            }
            field("Vessel Type"; "Vessel Type")
            {
                Importance = Additional;
            }
            field("Voyage No."; "Voyage No.")
            {
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
            }
        }
        addfirst(Posting)
        {
            field(Control170; "Lost Days")
            {
            }
            field("Fuel Consumed"; "Fuel Consumed")
            {
            }
            field("Fuel Days"; "Fuel Days")
            {
            }
            field("Fuel Average"; "Fuel Average")
            {
            }
            field("Global Dimension 2 Code"; "Global Dimension 2 Code")
            {
            }
        }
        moveafter("Starting Date"; "Person Responsible", "Job Posting Group")
        movefirst(Duration; "Creation Date")


        addfirst(Duration)
        {
            field("Deductible Lost Days"; "Deductible Lost Days")
            {
            }
            field("Cycle Day (Manual)"; "Cycle Day (Manual)")
            {
            }
            field("Fishing Day (Manual)"; "Fishing Day (Manual)")
            {
            }
            field("Lost At Sea (Manual)"; "Lost At Sea (Manual)")
            {
            }
            field("Port Day (Manual)"; "Port Day (Manual)")
            {
            }
            field("Price Group Code"; "Price Group Code")
            {
            }
        }
        addafter(Duration)
        {
            group(Incentive)
            {
                Caption = 'Incentive';
                field(Points; Points)
                {
                }
                field("Incentive Points Determinant"; "Incentive Points Determinant")
                {
                }
                field("Incentive Rate"; "Incentive Rate")
                {
                }
                field("Incentive (Pt. Based)"; "Incentive (Pt. Based)")
                {
                }
                field("Total Incentive"; "Total Incentive")
                {
                }
                field("Add/Ded. Crew"; "Add/Ded. Crew")
                {
                }
                field("Net Incentive"; "Net Incentive")
                {
                }
                field("Incentive (Hook Fish)"; "Incentive (Hook Fish)")
                {
                }
                field("Points Actual"; "Points Actual")
                {
                }
                field("Incentive Pts Determt Actual"; "Incentive Pts Determt Actual")
                {
                }
                field("Incentive Rate Actual"; "Incentive Rate Actual")
                {
                }
                field("Incentive (Pt. Based) Actual"; "Incentive (Pt. Based) Actual")
                {
                }
                field("Total Incentive Actual"; "Total Incentive Actual")
                {
                }
                field("Deductible Lost Days (Incentiv"; "Deductible Lost Days (Incentiv")
                {
                }
                field("Net Incentive Actual"; "Net Incentive Actual")
                {
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
            }
            field("Nxt Ovh"; "Nxt Ovh")
            {
            }
            field("Lst Ovh"; "Lst Ovh")
            {
            }
            field("Nxt Ddk"; "Nxt Ddk")
            {
            }
            field("Brnd Pk"; "Brnd Pk")
            {
            }
            field("Inner P"; "Inner P")
            {
            }
            field(Grades; Grades)
            {
            }
            field(xx1; xx1)
            {
            }
            field(Deratg; Deratg)
            {
            }
            field("Crab CW"; "Crab CW")
            {
            }
            field("WT GL/W"; "WT GL/W")
            {
            }
            field("Rad Tel"; "Rad Tel")
            {
            }
            field("R Flare"; "R Flare")
            {
            }
            field("Str Lic"; "Str Lic")
            {
            }
            field("Life Rf"; "Life Rf")
            {
            }
            field("Fsh Ins"; "Fsh Ins")
            {
            }
            field("Fsh Dst"; "Fsh Dst")
            {
            }
            field("Ins Sur"; "Ins Sur")
            {
            }
            field("Dst Sur"; "Dst Sur")
            {
            }
            field("Pow Ext"; "Pow Ext")
            {
            }
            field("Fom Ext"; "Fom Ext")
            {
            }
            field("CO2 Ext"; "CO2 Ext")
            {
            }
            field(Parchut; Parchut)
            {
            }
            field("E.U. No"; "E.U. No")
            {
            }
            field(NoCatchExist; NoCatchExist)
            {
            }
            field("Gen. Product PG Filter"; "Gen. Product PG Filter")
            {
            }
            field(AvgPtSortBay; AvgPtSortBay)
            {
            }
            field("Comsumed Value"; "Comsumed Value")
            {
            }
            field("Product Quantity"; "Product Quantity")
            {
            }
            field("Kilo Actual"; "Kilo Actual")
            {
            }
            field(Checked; Checked)
            {
            }
            field("Revenue per Sea Day"; "Revenue per Sea Day")
            {
            }
        }

        addafter("Bill-to Contact No.")
        {
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
            }
            action("Voyage Default Catch")
            {
                Caption = 'Voyage Default Catch';
                Image = TaskList;
                RunObject = Page "Voyage Catch Default";
                RunPageLink = "Table Name" = CONST(Job),
                              "No." = FIELD("No.");
            }
            action("Register Catch")
            {
                Caption = 'Register Catch';
                Image = TaskList;
                RunObject = Page "Recurring Job Jnl.";
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
            }
            action("Stock on Board")
            {
                Caption = 'stock on board';
                Image = Period;
                Promoted = true;
                RunObject = Page "Daily B/Up by Loc/Ves PGrp";
            }
        }
        addfirst(Reporting)
        {
            action("Points Summary")
            {
                Caption = 'Points Summary';
                Image = "Report";
            }
            action("New Daily Points")
            {
                Caption = 'New Daily Points';
                Image = "Report";
                RunObject = Report "New Daily Points Report Fast";
            }
            action("Consolidated Narration")
            {
                Caption = 'Consolidated Narration';
                Image = "Report";
                RunObject = Report "Consolidated Narration";
            }
        }
        addafter("<Action83>")
        {
            action("Daily BreakUp by Vess Summary")
            {
                Caption = 'Daily BreakUp by Vess Summary';
                Image = "Report";
                RunObject = Report "Daily BreakUp by Vess Summary";
            }
            action("Daily BreakUp by Vessel Rep 1")
            {
                Caption = 'Daily BreakUp by Vessel Rep 1';
                Image = "Report";
                RunObject = report "Daily Break Up By Vessel";
            }
            action("Daily BreakUp by Vessel Rep 2")
            {
                Caption = 'Daily BreakUp by Vessel Rep 2';
                Image = "Report";
                RunObject = Report "Daily BreakUp by Vessel Rep 2";
            }
            action("Daily BreakUp by Vessel Rep 3")
            {
                Caption = 'Daily BreakUp by Vessel Rep 3';
                Image = "Report";
                RunObject = Report "Daily BreakUp by Vessel Rep 3";
            }
            action("Daily BreakUp by Vessel Rep 4")
            {
                Caption = 'Daily BreakUp by Vessel Rep 4';
                Image = "Report";
                RunObject = Report "Daily BreakUp by Vessel Rep 4";
            }
            action("Vessel Daily Log")
            {
                Caption = 'Vessel Daily Log';
                Image = "Report";
                RunObject = Report "Vessel Daily Log";
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
