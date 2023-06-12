pageextension 50354 "Job List Ext" extends "Job List"
{
    layout
    {
        addafter("No.")
        {
            field(Vessel; rec.Vessel)
            {
                StyleExpr = StyleText;
                ApplicationArea = All;
            }
            field("Voyage No."; Rec."Voyage No.")
            {
                ApplicationArea = All;
            }
            field("Fuel Consumed"; Rec."Fuel Consumed")
            {
                ApplicationArea = All;
            }
        }

        addafter("Person Responsible")
        {
            field(Captain; Rec.Captain)
            {
                ApplicationArea = All;
            }
        }
        addafter("% of Overdue Planning Lines")
        {
            field("Starting Date"; Rec."Starting Date")
            {
                ApplicationArea = All;
            }
        }
        addafter("% Invoiced")
        {
            field("Sea Days"; Rec."Sea Days")
            {
                ApplicationArea = All;
            }
            field("Cycle Day (Manual)"; Rec."Cycle Day (Manual)")
            {
                ApplicationArea = All;
            }
            field("Fishing Day (Manual)"; Rec."Fishing Day (Manual)")
            {
                ApplicationArea = All;
            }
            field("Lost At Sea (Manual)"; Rec."Lost At Sea (Manual)")
            {
                ApplicationArea = All;
            }
            field("Port Day (Manual)"; Rec."Port Day (Manual)")
            {
                ApplicationArea = All;
            }
            field("Points Actual"; Rec."Points Actual")
            {
                ApplicationArea = All;
            }
            field(Batch; Rec.Batch)
            {
                ApplicationArea = All;
            }
            field(Points; Rec.Points)
            {
                ApplicationArea = All;
            }
            field("Ending Date"; Rec."Ending Date")
            {
                ApplicationArea = All;
            }
        }

        moveafter("Voyage No."; Description)

        modify("No.")
        {
            StyleExpr = StyleText;
        }
        modify(Status)
        {
            StyleExpr = StyleText;
            OptionCaption = 'Budget,Preparation,Voyage Start,Close Job Card';
        }

    }
    actions
    {
        modify("&Dimensions")
        {
            Visible = false;
        }

        //Unsupported feature: Property Modification (Level) on ""Dimensions-&Single"(Action 84)".

        modify("Dimensions-&Multiple")
        {

            //Unsupported feature: Property Modification (Level) on ""Dimensions-&Multiple"(Action 12)".

            Visible = false;
        }
        modify("&Prices")
        {
            Visible = false;
        }
        modify("Plan&ning")
        {
            Visible = false;
        }
        modify("<Action9>")
        {

            //Unsupported feature: Property Modification (ActionType) on ""<Action9>"(Action 9)".


            //Unsupported feature: Property Modification (Name) on ""<Action9>"(Action 9)".

            Caption = 'Voyage Narration';

            //Unsupported feature: Property Modification (Image) on ""<Action9>"(Action 9)".


            //Unsupported feature: Property Insertion (RunObject) on ""<Action9>"(Action 9)".

        }
        modify(CopyJob)
        {

            //Unsupported feature: Property Modification (Level) on "CopyJob(Action 16)".


            //Unsupported feature: Property Modification (Name) on "CopyJob(Action 16)".

            Caption = 'Job - Transaction Detail 2';

            //Unsupported feature: Property Modification (Image) on "CopyJob(Action 16)".


            //Unsupported feature: Property Insertion (RunObject) on "CopyJob(Action 16)".

        }

        //Unsupported feature: Property Modification (Level) on ""Create Job &Sales Invoice"(Action 1903691404)".

        modify(Action7)
        {

            //Unsupported feature: Property Modification (ActionType) on "Action7(Action 7)".


            //Unsupported feature: Property Modification (Name) on "Action7(Action 7)".

            Caption = 'Operation Journals';

            //Unsupported feature: Property Modification (Image) on "Action7(Action 7)".


            //Unsupported feature: Property Insertion (RunObject) on "Action7(Action 7)".

        }
        modify("<Action151>")
        {

            //Unsupported feature: Property Modification (Level) on ""<Action151>"(Action 5)".


            //Unsupported feature: Property Modification (Name) on ""<Action151>"(Action 5)".

            Caption = 'Skipper/Vessel Performance';

            //Unsupported feature: Property Modification (Image) on ""<Action151>"(Action 5)".


            //Unsupported feature: Property Insertion (RunObject) on ""<Action151>"(Action 5)".

        }
        modify("<Action152>")
        {

            //Unsupported feature: Property Modification (Level) on ""<Action152>"(Action 3)".


            //Unsupported feature: Property Modification (Name) on ""<Action152>"(Action 3)".

            Caption = 'Organoleptic Report';

            //Unsupported feature: Property Modification (Image) on ""<Action152>"(Action 3)".


            //Unsupported feature: Property Insertion (RunObject) on ""<Action152>"(Action 3)".

        }

        //Unsupported feature: Property Modification (Level) on ""Job WIP to G/L"(Action 1907574906)".

        modify(Action23)
        {

            //Unsupported feature: Property Modification (ActionType) on "Action23(Action 23)".


            //Unsupported feature: Property Modification (Name) on "Action23(Action 23)".

            Caption = 'Jobs - Transaction Detail';

            //Unsupported feature: Property Insertion (RunObject) on "Action23(Action 23)".

            // Promoted = false;
            // PromotedCategory = "Report";
        }

        //Unsupported feature: Property Modification (Level) on ""Jobs - Transaction Detail"(Action 1905285006)".


        //Unsupported feature: Property Modification (Level) on ""Job Register"(Action 1901294206)".

        modify("W&IP")
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (ActionContainerType) on ""<Action9>"(Action 9)".


        //Unsupported feature: Property Deletion (Ellipsis) on "CopyJob(Action 16)".


        //Unsupported feature: Property Deletion (Promoted) on "CopyJob(Action 16)".


        //Unsupported feature: Property Deletion (PromotedIsBig) on "CopyJob(Action 16)".


        //Unsupported feature: Property Deletion (PromotedCategory) on "CopyJob(Action 16)".


        //Unsupported feature: Property Deletion (Ellipsis) on ""<Action151>"(Action 5)".


        //Unsupported feature: Property Deletion (PromotedCategory) on ""<Action151>"(Action 5)".


        //Unsupported feature: Property Deletion (Ellipsis) on ""<Action152>"(Action 3)".


        //Unsupported feature: Property Deletion (PromotedCategory) on ""<Action152>"(Action 3)".

        modify("Financial Management")
        {
            Visible = false;
        }
        addfirst(Navigation)
        {
            group(Action48)
            {
                action("Register Catch")
                {
                    Image = Job;
                    RunObject = Page "Recurring Job Jnl.";
                    ApplicationArea = All;
                }
            }
        }
        addfirst(Reporting)
        {
            action("Points Summary")
            {
                Caption = 'Points Summary';
                Image = "Report";
                ApplicationArea = All;
                //***R RunObject = Report "Points Summary VJ";
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
            separator(Action68)
            {
            }
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
                ApplicationArea = All;
                // RunObject = Report "Daily BreakUp by Vessel Rep 1";
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
            separator(Action61)
            {
            }
            action("Voyage P&L Ledger Line - (1 Vessel & 1Job at a time)")
            {
                Caption = 'Voyage P&L Ledger Line - (1 Vessel & 1Job at a time)';
                Image = "Report";
                // RunObject = Report "Voyage P&L Ledger Line 2";  //AAA***
                ApplicationArea = All;
            }
            action("Consolidated Voyage P&L - (Monthly Report)")
            {
                Caption = 'Consolidated Voyage P&L - (Monthly Report)';
                Image = "Report";
                RunObject = Report "Consolidated Voyage P &  L2";
                ApplicationArea = All;
            }
            action("Voyage P&L Before Posing")
            {
                Caption = 'Voyage P&L Before Posing';
                Image = "Report";
                RunObject = Report "Voyage P &  L";
                ApplicationArea = All;
            }
            action("Voyage P&L Batch")
            {
                Caption = 'Voyage P&L Batch';
                Image = "Report";
                RunObject = Report "Voyage P & L Batch";
                ApplicationArea = All;
            }
        }
        // moveafter(ActionContainer1900000003; Action7)
        // moveafter(ActionContainer1900000004; ActionContainer1900000006)
        // moveafter(ActionContainer1900000006; Action23)
        // moveafter("Job - Transaction Detail"; "<Action152>")
        // moveafter("Organoleptic Report"; "<Action151>")
    }

    trigger OnOpenPage()
    begin
        rec.SetFilter("No.", 'J*');
    end;

    trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        StyleText := '';
        if Rec.Status = Rec.Status::Completed then
            StyleText := 'Unfavorable'
        else
            StyleText := 'standard';
        if Rec."Voyage Ended" = true then
            StyleText := 'Unfavorable';
    end;

    var
        StyleText: Text[20];
}
