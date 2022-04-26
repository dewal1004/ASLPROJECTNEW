pageextension 50354 pageextension50354 extends "Job List"
{
    layout
    {
        addafter("No.")
        {
            field(Vessel; rec.Vessel)
            {
                StyleExpr = StyleText;
            }
            field("Voyage No."; "Voyage No.")
            {
            }
            field("Fuel Consumed"; "Fuel Consumed")
            {
            }
        }

        addafter("Person Responsible")
        {
            field(Captain; Captain)
            {
            }
        }
        addafter("% of Overdue Planning Lines")
        {
            field("Starting Date"; "Starting Date")
            {
            }
        }
        addafter("% Invoiced")
        {
            field("Sea Days"; "Sea Days")
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
            field("Points Actual"; "Points Actual")
            {
            }
            field(Batch; Batch)
            {
            }
            field(Points; Points)
            {
            }
            field("Ending Date"; "Ending Date")
            {
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
                }
            }
        }
        addfirst(Reporting)
        {
            action("Points Summary")
            {
                Caption = 'Points Summary';
                Image = "Report";
                //***R RunObject = Report "Points Summary VJ";
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
            separator(Action68)
            {
            }
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
                // RunObject = Report "Daily BreakUp by Vessel Rep 1";
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
            separator(Action61)
            {
            }
            action("Voyage P&L Ledger Line - (1 Vessel & 1Job at a time)")
            {
                Caption = 'Voyage P&L Ledger Line - (1 Vessel & 1Job at a time)';
                Image = "Report";
                RunObject = Report "Voyage P&L Ledger Line 2";
            }
            action("Consolidated Voyage P&L - (Monthly Report)")
            {
                Caption = 'Consolidated Voyage P&L - (Monthly Report)';
                Image = "Report";
                RunObject = Report "Consolidated Voyage P &  L2";
            }
            action("Voyage P&L Before Posing")
            {
                Caption = 'Voyage P&L Before Posing';
                Image = "Report";
                RunObject = Report "Voyage P &  L";
            }
            action("Voyage P&L Batch")
            {
                Caption = 'Voyage P&L Batch';
                Image = "Report";
                RunObject = Report "Voyage P & L Batch";
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
        if Status = Status::"Close Job Card" then
            StyleText := 'Unfavorable'
        else
            StyleText := 'standard';
        if Rec."Voyage Ended" = true then
            StyleText := 'Unfavorable';
    end;

    var
        StyleText: Text[20];
}
