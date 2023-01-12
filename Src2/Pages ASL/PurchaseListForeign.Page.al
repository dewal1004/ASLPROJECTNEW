page 50553 "Purchase List Foreign"
{
    Caption = 'Purchase List Foreign';
    DataCaptionFields = "Document Type";
    Editable = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All, Basic;
    SourceTable = "Purchase Header";
    SourceTableView = SORTING("Document Type", "No.")
                      WHERE("Document Type" = CONST(Order));

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Vendor No."; "Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("Order Address Code"; "Order Address Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Buy-from Vendor Name"; "Buy-from Vendor Name")
                {
                    ApplicationArea = All;
                }
                field("Vendor Authorization No."; "Vendor Authorization No.")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Post Code"; "Buy-from Post Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Buy-from Country/Region Code"; "Buy-from Country/Region Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Buy-from Contact"; "Buy-from Contact")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Pay-to Vendor No."; "Pay-to Vendor No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Pay-to Name"; "Pay-to Name")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Pay-to Post Code"; "Pay-to Post Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Pay-to Country/Region Code"; "Pay-to Country/Region Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Pay-to Contact"; "Pay-to Contact")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ship-to Code"; "Ship-to Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ship-to Name"; "Ship-to Name")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ship-to Post Code"; "Ship-to Post Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ship-to Country/Region Code"; "Ship-to Country/Region Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ship-to Contact"; "Ship-to Contact")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DimMgt.LookupDimValueCodeNoUpdate(1);
                    end;
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DimMgt.LookupDimValueCodeNoUpdate(2);
                    end;
                }
                field("Location Code"; "Location Code")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field("Purchaser Code"; "Purchaser Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Assigned User ID"; "Assigned User ID")
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; "Currency Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Completely Received"; "Completely Received")
                {
                    ApplicationArea = All;
                }
                field("Due Date"; "Due Date")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            part(IncomingDocAttachFactBox; "Incoming Doc. Attach. FactBox")
            {
                ShowFilter = false;
                ApplicationArea = All;
            }
            systempart(Control1900383207; Links)
            {
                Visible = false;
                ApplicationArea = All;
            }
            systempart(Control1905767507; Notes)
            {
                Visible = false;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Action8)
            {
                action(Edit)
                {
                    Caption = 'Edit';
                    Image = Edit;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = New;
                    RunObject = Page "Purchase Order Foreign";
                    ApplicationArea = All;
                }
            }
            group("&Line")
            {
                Caption = '&Line';
                Image = Line;
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page "Purchase Order Foreign";
                    ShortCutKey = 'Shift+F7';
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        PageManagement: Codeunit "Page Management";
                    begin
                        //PageManagement.PageRun(Rec);
                    end;
                }
            }
        }
        area(reporting)
        {
            action("Purchase Reservation Avail.")
            {
                Caption = 'Purchase Reservation Avail.';
                Image = "Report";
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                RunObject = Report "Purchase Reservation Avail.";
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        CurrPage.IncomingDocAttachFactBox.PAGE.LoadDataFromRecord(Rec);
    end;

    var
        DimMgt: Codeunit DimensionManagement;
}

