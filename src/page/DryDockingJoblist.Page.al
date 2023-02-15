page 50105 "Dry Docking/Job  list"
{
    Caption = ' All Jobs List';
    CardPageID = "Job Card";
    Editable = false;
    PageType = List;
    SourceTable = Job;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; "No.")
                {
                    StyleExpr = StyleText;
                    ApplicationArea = All;
                }
                field(Vessel; Vessel)
                {
                    ApplicationArea = All;
                }
                field("Voyage No."; "Voyage No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Fuel Consumed"; "Fuel Consumed")
                {
                    ApplicationArea = All;
                }
                field("Voyage Ended"; "Voyage Ended")
                {
                    ApplicationArea = All;
                }
                field("Bill-to Customer No."; "Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field(Status; Status)
                {
                    StyleExpr = StyleText;
                    ApplicationArea = All;
                }
                field("Person Responsible"; "Person Responsible")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Next Invoice Date"; "Next Invoice Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Job Posting Group"; "Job Posting Group")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Search Description"; "Search Description")
                {
                    ApplicationArea = All;
                }
                field("% of Overdue Planning Lines"; PercentOverdue)
                {
                    Caption = '% of Overdue Planning Lines';
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Starting Date"; "Starting Date")
                {
                    ApplicationArea = All;
                }
                field("% Completed"; PercentCompleted)
                {
                    Caption = '% Completed';
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("% Invoiced"; PercentInvoiced)
                {
                    Caption = '% Invoiced';
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                    ApplicationArea = All;
                }
                field("Ending Date"; "Ending Date")
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
    trigger OnOpenPage()
    begin
        //rec.SetFilter("No.", '*C*');
    end;

    trigger OnAfterGetRecord()
    begin
        StyleText := '';
        if Status = Status::Completed then begin
            StyleText := 'Unfavorable';
        end else begin
            StyleText := 'standard'
        end;

        if Rec."Voyage Ended" = true then
            StyleText := 'Unfavorable'
    end;

    var
        StyleText: Text[20];

}

