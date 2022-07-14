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
                }
                field(Vessel; Vessel)
                {
                }
                field("Voyage No."; "Voyage No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Fuel Consumed"; "Fuel Consumed")
                {
                }
                field("Voyage Ended"; "Voyage Ended")
                {
                }
                field("Bill-to Customer No."; "Bill-to Customer No.")
                {
                }
                field(Status; Status)
                {
                    StyleExpr = StyleText;
                }
                field("Person Responsible"; "Person Responsible")
                {
                    Visible = false;
                }
                field("Next Invoice Date"; "Next Invoice Date")
                {
                    Visible = false;
                }
                field("Job Posting Group"; "Job Posting Group")
                {
                    Visible = false;
                }
                field("Search Description"; "Search Description")
                {
                }
                field("% of Overdue Planning Lines"; PercentOverdue)
                {
                    Caption = '% of Overdue Planning Lines';
                    Editable = false;
                    Visible = false;
                }
                field("Starting Date"; "Starting Date")
                {
                }
                field("% Completed"; PercentCompleted)
                {
                    Caption = '% Completed';
                    Editable = false;
                    Visible = false;
                }
                field("% Invoiced"; PercentInvoiced)
                {
                    Caption = '% Invoiced';
                    Editable = false;
                    Visible = false;
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
                field("Ending Date"; "Ending Date")
                {
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
            }
            action("Job - Transaction Detail 2")
            {
                Caption = 'Jobs - Transaction Detail 2';
                Image = "Report";
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                RunObject = Report "Job - Transaction Detail 2";
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

