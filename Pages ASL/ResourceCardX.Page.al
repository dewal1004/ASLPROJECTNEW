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

                    trigger OnAssistEdit()
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field(Name; Name)
                {
                }
                field(Type; Type)
                {
                }
                field("Base Unit of Measure"; "Base Unit of Measure")
                {
                }
                field("Country/Region Code"; "Country/Region Code")
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field("Resource Group No."; "Resource Group No.")
                {
                }
                field(Blocked; Blocked)
                {
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Direct Unit Cost"; "Direct Unit Cost")
                {
                }
                field("Indirect Cost %"; "Indirect Cost %")
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                }
                field("Price/Profit Calculation"; "Price/Profit Calculation")
                {
                }
                field("Profit %"; "Profit %")
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                }
                field("Automatic Ext. Texts"; "Automatic Ext. Texts")
                {
                }
            }
            group("Personal Data")
            {
                Caption = 'Personal Data';
                field("Job Title"; "Job Title")
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
                    Caption = 'Post Code/City';
                }
                field(City; City)
                {
                }
                field("Social Security No."; "Social Security No.")
                {
                }
                field(Education; Education)
                {
                }
                field("Contract Class"; "Contract Class")
                {
                }
                field("Employment Date"; "Employment Date")
                {
                }
                field(Posted; Posted)
                {
                }
                field("Sick Leave"; "Sick Leave")
                {
                }
                field("Annual Leave"; "Annual Leave")
                {
                }
                field("Casual Leave"; "Casual Leave")
                {
                }
                field(Suspension; Suspension)
                {
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
                    RunPageLink = "No." = FIELD ("No."),
                                  "Date Filter" = FIELD ("Date Filter"),
                                  "Unit of Measure Filter" = FIELD ("Unit of Measure Filter"),
                                  "Chargeable Filter" = FIELD ("Chargeable Filter");
                    ShortCutKey = 'F7';
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Comment Sheet";
                    RunPageLink = "Table Name" = CONST (Resource),
                                  "No." = FIELD ("No.");
                }
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    RunObject = Page "Default Dimensions";
                    RunPageLink = "Table ID" = CONST (156),
                                  "No." = FIELD ("No.");
                    ShortCutKey = 'Shift+Ctrl+D';
                }
                action("&Picture")
                {
                    Caption = '&Picture';
                    RunObject = Page "Resource Picture";
                    RunPageLink = "No." = FIELD ("No.");
                }
                action("Ledger E&ntries")
                {
                    Caption = 'Ledger E&ntries';
                    RunObject = Page "Resource Ledger Entries";
                    RunPageLink = "Resource No." = FIELD ("No.");
                    RunPageView = SORTING ("Resource No.");
                    ShortCutKey = 'Ctrl+F7';
                }
                action("E&xtended Texts")
                {
                    Caption = 'E&xtended Texts';
                    RunObject = Page "Extended Text List";
                    RunPageLink = "Table Name" = CONST (Resource),
                                  "No." = FIELD ("No.");
                    RunPageView = SORTING ("Table Name", "No.", "Language Code", "All Language Codes", "Starting Date", "Ending Date");
                }
                separator(Action34)
                {
                    Caption = '';
                }
                action("Service &Zones")
                {
                    Caption = 'Service &Zones';
                    RunObject = Page "Resource Service Zones";
                    RunPageLink = "Resource No." = FIELD ("No.");
                }
                action("S&kills")
                {
                    Caption = 'S&kills';
                    RunObject = Page "Resource Skills";
                    RunPageLink = Type = CONST (Resource),
                                  "No." = FIELD ("No.");
                }
                action("Resource L&ocations")
                {
                    Caption = 'Resource L&ocations';
                    RunObject = Page "Resource Locations";
                    RunPageLink = "Resource No." = FIELD ("No.");
                    RunPageView = SORTING ("Resource No.");
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
                    RunPageLink = Type = CONST (Resource),
                                  Code = FIELD ("No.");
                }
                action(Prices)
                {
                    Caption = 'Prices';
                    Image = ResourcePrice;
                    RunObject = Page "Resource Prices";
                    RunPageLink = Type = CONST (Resource),
                                  Code = FIELD ("No.");
                }
            }
            group("Plan&ning")
            {
                Caption = 'Plan&ning';
                action("Resource &Capacity")
                {
                    Caption = 'Resource &Capacity';
                    RunObject = Page "Resource Capacity";
                }
                action("Resource &Allocated per Job")
                {
                    Caption = 'Resource &Allocated per Job';
                    RunObject = Page "Resource Allocated per Job";
                    RunPageLink = "Resource Filter" = FIELD ("No.");
                }
                action("Resource Allocated per Service &Order")
                {
                    Caption = 'Resource Allocated per Service &Order';
                    RunObject = Page "Res. Alloc. per Service Order";
                    //*** RunPageLink = Field153 = FIELD ("No.");
                }
                action("Resource A&vailability")
                {
                    Caption = 'Resource A&vailability';
                    RunObject = Page "Resource Availability";
                    RunPageLink = "No." = FIELD ("No."),
                                  "Base Unit of Measure" = FIELD ("Base Unit of Measure"),
                                  "Chargeable Filter" = FIELD ("Chargeable Filter");
                }
                separator(Action69)
                {
                }
                action("Job Budget")
                {
                    Caption = 'Job Budget';
                    //*** RunObject = Page Page212;
                }
            }
        }
    }
}

