page 50099 "Dry Docking list"
{
    Caption = 'Job Dry Docking List';
    CardPageID = "Job Card";
    Editable = false;
    PageType = List;
    SourceTable = Job;
    SourceTableView = WHERE("No." = CONST('*C*'));
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    StyleExpr = StyleText;
                    ApplicationArea = All;
                }
                field(Vessel; Rec.Vessel)
                {
                    ApplicationArea = All;
                }
                field("Voyage No."; Rec."Voyage No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Fuel Consumed"; Rec."Fuel Consumed")
                {
                    ApplicationArea = All;
                }
                field("Voyage Ended"; Rec."Voyage Ended")
                {
                    ApplicationArea = All;
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    StyleExpr = StyleText;
                    ApplicationArea = All;
                }
                field("Person Responsible"; Rec."Person Responsible")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Next Invoice Date"; Rec."Next Invoice Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Job Posting Group"; Rec."Job Posting Group")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Search Description"; Rec."Search Description")
                {
                    ApplicationArea = All;
                }
                field("% of Overdue Planning Lines"; Rec.PercentOverdue())
                {
                    Caption = '% of Overdue Planning Lines';
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                }
                field("% Completed"; Rec.PercentCompleted())
                {
                    Caption = '% Completed';
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("% Invoiced"; Rec.PercentInvoiced())
                {
                    Caption = '% Invoiced';
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Job")
            {
                Caption = '&Job';
                Image = Job;
                action("Job Task &Lines")
                {
                    Caption = 'Job Task &Lines';
                    Image = TaskList;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    RunObject = Page "Job Task Lines";
                    RunPageLink = "Job No." = FIELD("No.");
                    ShortCutKey = 'Shift+Ctrl+T';
                    ApplicationArea = All;
                }
            }
            group(History)
            {
                Caption = 'History';
                Image = History;
                action("Ledger E&ntries")
                {
                    Caption = 'Ledger E&ntries';
                    Image = CustomerLedger;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Job Ledger Entries";
                    RunPageLink = "Job No." = FIELD("No.");
                    RunPageView = SORTING("Job No.", "Job Task No.", "Entry Type", "Posting Date");
                    ShortCutKey = 'Ctrl+F7';
                    ApplicationArea = All;
                }
            }
        }
        area(reporting)
        {
            action("Transfer to Vessel")
            {
                Caption = 'Transfer to Vessel';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report "Transfer To Vessel";
                ApplicationArea = All;
            }
            action("Job - Transaction Detail 2")
            {
                Caption = 'Jobs - Transaction Detail 2';
                Image = "Report";
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                RunObject = Report "Job - Transaction Detail 2";
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        StyleText := '';
        if Rec.Status = Rec.Status::Completed then
            StyleText := 'Unfavorable'
        else
            StyleText := 'standard';

        if Rec."Voyage Ended" = true then
            StyleText := 'Unfavorable'
    end;

    var
        StyleText: Text[20];
}
