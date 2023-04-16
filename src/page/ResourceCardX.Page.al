page 60076 "Resource CardX"
{
    Caption = 'Resource Card';
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Resource;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field("Base Unit of Measure"; "Base Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field("Country/Region Code"; "Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                }
                field("Resource Group No."; "Resource Group No.")
                {
                    ApplicationArea = All;
                }
                field(Blocked; Blocked)
                {
                    ApplicationArea = All;
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                    ApplicationArea = All;
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Direct Unit Cost"; "Direct Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("Indirect Cost %"; "Indirect Cost %")
                {
                    ApplicationArea = All;
                }
                field("Unit Cost"; "Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("Price/Profit Calculation"; "Price/Profit Calculation")
                {
                    ApplicationArea = All;
                }
                field("Profit %"; "Profit %")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; "Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Automatic Ext. Texts"; "Automatic Ext. Texts")
                {
                    ApplicationArea = All;
                }
            }
            group("Personal Data")
            {
                Caption = 'Personal Data';
                field("Job Title"; "Job Title")
                {
                    ApplicationArea = All;
                }
                field(Address; Address)
                {
                    ApplicationArea = All;
                }
                field("Address 2"; "Address 2")
                {
                    ApplicationArea = All;
                }
                field("Post Code"; "Post Code")
                {
                    Caption = 'Post Code/City';
                    ApplicationArea = All;
                }
                field(City; City)
                {
                    ApplicationArea = All;
                }
                field("Social Security No."; "Social Security No.")
                {
                    ApplicationArea = All;
                }
                field(Education; Education)
                {
                    ApplicationArea = All;
                }
                field("Contract Class"; "Contract Class")
                {
                    ApplicationArea = All;
                }
                field("Employment Date"; "Employment Date")
                {
                    ApplicationArea = All;
                }
                field(Posted; Posted)
                {
                    ApplicationArea = All;
                }
                field("Sick Leave"; "Sick Leave")
                {
                    ApplicationArea = All;
                }
                field("Annual Leave"; "Annual Leave")
                {
                    ApplicationArea = All;
                }
                field("Casual Leave"; "Casual Leave")
                {
                    ApplicationArea = All;
                }
                field(Suspension; Suspension)
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
            group("&Resource")
            {
                Caption = '&Resource';
                action(Statistics)
                {
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Resource Statistics";
                    RunPageLink = "No." = FIELD("No."),
                                  "Date Filter" = FIELD("Date Filter"),
                                  "Unit of Measure Filter" = FIELD("Unit of Measure Filter"),
                                  "Chargeable Filter" = FIELD("Chargeable Filter");
                    ShortCutKey = 'F7';
                    ApplicationArea = All;
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Comment Sheet";
                    RunPageLink = "Table Name" = CONST(Resource),
                                  "No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    RunObject = Page "Default Dimensions";
                    RunPageLink = "Table ID" = CONST(156),
                                  "No." = FIELD("No.");
                    ShortCutKey = 'Shift+Ctrl+D';
                    ApplicationArea = All;
                }
                action("&Picture")
                {
                    Caption = '&Picture';
                    RunObject = Page "Resource Picture";
                    RunPageLink = "No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action("Ledger E&ntries")
                {
                    Caption = 'Ledger E&ntries';
                    RunObject = Page "Resource Ledger Entries";
                    RunPageLink = "Resource No." = FIELD("No.");
                    RunPageView = SORTING("Resource No.");
                    ShortCutKey = 'Ctrl+F7';
                    ApplicationArea = All;
                }
                action("E&xtended Texts")
                {
                    Caption = 'E&xtended Texts';
                    RunObject = Page "Extended Text List";
                    RunPageLink = "Table Name" = CONST(Resource),
                                  "No." = FIELD("No.");
                    RunPageView = SORTING("Table Name", "No.", "Language Code", "All Language Codes", "Starting Date", "Ending Date");
                    ApplicationArea = All;
                }
                separator(Action34)
                {
                    Caption = '';
                }
                action("Service &Zones")
                {
                    Caption = 'Service &Zones';
                    RunObject = Page "Resource Service Zones";
                    RunPageLink = "Resource No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action("S&kills")
                {
                    Caption = 'S&kills';
                    RunObject = Page "Resource Skills";
                    RunPageLink = Type = CONST(Resource),
                                  "No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action("Resource L&ocations")
                {
                    Caption = 'Resource L&ocations';
                    RunObject = Page "Resource Locations";
                    RunPageLink = "Resource No." = FIELD("No.");
                    RunPageView = SORTING("Resource No.");
                    ApplicationArea = All;
                }
            }
            group("&Prices")
            {
                Caption = '&Prices';
                action(Costs)
                {
                    Caption = 'Costs';
                    Image = ResourceCosts;
                    RunObject = Page "Resource Costs";
                    RunPageLink = Type = CONST(Resource),
                                  Code = FIELD("No.");
                    ApplicationArea = All;
                }
                action(Prices)
                {
                    Caption = 'Prices';
                    Image = ResourcePrice;
                    RunObject = Page "Resource Prices";
                    RunPageLink = Type = CONST(Resource),
                                  Code = FIELD("No.");
                    ApplicationArea = All;
                }
            }
            group("Plan&ning")
            {
                Caption = 'Plan&ning';
                action("Resource &Capacity")
                {
                    Caption = 'Resource &Capacity';
                    RunObject = Page "Resource Capacity";
                    ApplicationArea = All;
                }
                action("Resource &Allocated per Job")
                {
                    Caption = 'Resource &Allocated per Job';
                    RunObject = Page "Resource Allocated per Job";
                    RunPageLink = "Resource Filter" = FIELD("No.");
                    ApplicationArea = All;
                }
                action("Resource Allocated per Service &Order")
                {
                    Caption = 'Resource Allocated per Service &Order';
                    RunObject = Page "Res. Alloc. per Service Order";
                    ApplicationArea = All;
                    //*** RunPageLink = Field153 = FIELD ("No.");
                }
                action("Resource A&vailability")
                {
                    Caption = 'Resource A&vailability';
                    RunObject = Page "Resource Availability";
                    RunPageLink = "No." = FIELD("No."),
                                  "Base Unit of Measure" = FIELD("Base Unit of Measure"),
                                  "Chargeable Filter" = FIELD("Chargeable Filter");
                    ApplicationArea = All;
                }
                separator(Action69)
                {
                }
                action("Job Budget")
                {
                    Caption = 'Job Budget';
                    ApplicationArea = All;
                    //*** RunObject = Page Page212;
                }
            }
        }
    }
}

