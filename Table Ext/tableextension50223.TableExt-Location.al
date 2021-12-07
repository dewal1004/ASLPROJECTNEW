tableextension 50223 tableextension50223 extends Location
{
    fields
    {
        field(50300; "Location Type"; Option)
        {
            OptionMembers = " ",Vessel,Store,Residence,Cars,WS,Others;

            trigger OnValidate()
            begin
                if "Location Type" = 0 then "Sea Days" := 0;
                if "Location Type" = 1 then "FA Code" := Code;
            end;
        }
        field(50301; "Sea Days"; Option)
        {
            OptionMembers = " ","40","45","60";

            trigger OnValidate()
            begin
                if ("Sea Days" > 0) then TestField("Location Type");
            end;
        }
        field(50302; "Voyage Sea Days"; Decimal)
        {
            Editable = false;

            trigger OnValidate()
            begin
                VSDVal := Location."Voyage Sea Days";
            end;
        }
        field(50303; "Current Operation"; Code[10])
        {
            TableRelation = Job WHERE(Vessel = FIELD(Code));

            trigger OnValidate()
            begin
                if JobsOper.Get("Current Operation") then
                    "Current Voyage" := JobsOper."Voyage No.";
                ETD := JobsOper."Starting Date";
                ETA := JobsOper."Ending Date";
            end;
        }
        field(50304; "Current Voyage"; Code[10])
        {
        }
        field(50305; VSDVal; Decimal)
        {
            Description = 'Voyage Sea Day Value: For Report Sorting Purpose';
            Editable = true;
        }
        field(50326; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));

            trigger OnValidate()
            begin
                //ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
                //MODIFY;
                //AAA-Nov2001
                //UpdateTransLines(FIELDNO("Shortcut Dimension 2 Code"));
                if "Location Type" = 0 then TestField("Shortcut Dimension 2 Code", '');
            end;
        }
        field(50327; Values; Decimal)
        {
            CalcFormula = Sum("Comment Line"."Days Lost" WHERE("Table Name" = CONST(Job),
                                                                Vessel = FIELD(Code),
                                                                Date = FIELD("date filter"),
                                                                "Day Lost Cause" = FIELD("Location Filter"),
                                                                Type = CONST(Narration)));
            FieldClass = FlowField;
        }
        field(50328; "date filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(50329; "Location Filter"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = Location;
        }
        field(50330; "Lost Day Cause Filter"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = "Lost Days";
        }
        field(50331; "Global Dimension 1 Filter"; Code[20])
        {
            CaptionClass = '1,3,1';
            NotBlank = true;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(50332; "Global Dimension 2 Filter"; Code[20])
        {
            CaptionClass = '1,3,2';
            NotBlank = true;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(50333; "FA Code"; Code[10])
        {
            TableRelation = "Fixed Asset";
        }
        field(50335; "Voyage Filter"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = Job."Voyage No.";
        }
        field(50340; "Lst Ovh"; Date)
        {
        }
        field(50341; "Lst Ddk"; Date)
        {
        }
        field(50342; xx1; Date)
        {
        }
        field(50343; Deratg; Date)
        {
            Description = 'Derating Certificate';
        }
        field(50344; "Rad Tel"; Date)
        {
            Description = 'Radio Telephony';
        }
        field(50345; "Str Lic"; Date)
        {
            Description = 'Storage License';
        }
        field(50346; "Life Rf"; Date)
        {
            Description = 'Life Rafts';
        }
        field(50347; "Fom Ext"; Date)
        {
            Description = 'Foam Extinguisher';
        }
        field(50348; "Pow Ext"; Date)
        {
            Description = 'Powder Extinguisher';
        }
        field(50349; "CO2 Ext"; Date)
        {
            Description = 'CO2 Extinguisher';
        }
        field(50350; ETD; Date)
        {
            Description = 'Expected Departure Date';
        }
        field(50351; ETA; Date)
        {
            Description = 'Expected Arrival Date';
        }
        field(50352; "Nxt Ovh"; Date)
        {
        }
        field(50353; "Nxt Ddk"; Date)
        {
        }
        field(50354; xx2; Date)
        {
        }
        field(50355; "Life Jacket"; Date)
        {
        }
        field(50356; "Life Buoy"; Date)
        {
        }
        field(50357; Parchut; Date)
        {
            Description = 'Parachute';
        }
        field(50358; "R Flare"; Date)
        {
            Description = 'Red Hand Flare';
        }
        field(50359; "Store Taking"; Date)
        {
        }
        field(50360; "Crew Briefing"; Date)
        {
        }
        field(50361; "Location Group"; Integer)
        {
        }
        field(50370; ASLCaptain; Code[20])
        {
        }
        field(50373; "Brnd Pk"; Code[10])
        {
            TableRelation = "Reason Code" WHERE("In Use" = CONST(true),
                                                 Type = CONST(Brands));
        }
        field(50374; "Inner P"; Code[10])
        {
        }
        field(50375; Grades; Code[10])
        {
        }
        field(50376; "Crab CW"; Code[10])
        {
        }
        field(50377; "WT GL/W"; Code[10])
        {
        }
        field(50378; Batch; Code[10])
        {
        }
        field(50380; "E.U. No"; Code[10])
        {
        }
        field(50390; "Ves Age"; Integer)
        {
        }
        field(50400; "Fsh Ins"; Date)
        {
        }
        field(50410; "Fsh Dst"; Date)
        {
        }
        field(50420; "Ins Sur"; Date)
        {
        }
        field(50421; "Dst Sur"; Date)
        {
        }
        field(50422; "Last Rep Operation No."; Code[10])
        {
            Description = 'Max("Job Ledger Entry"."Catch Sea Days" WHERE (Job No.=FIELD(Current Operation),Location Code=FIELD(Code),Posting Date=FIELD(date filter)))';
        }
        field(50423; "Voyage Sea Days2"; Decimal)
        {
            Description = 'For Report| to be able to reports catchs on Closed voyages';
            Editable = false;

            trigger OnValidate()
            begin
                VSDVal := Location."Voyage Sea Days";
            end;
        }
        field(50425; "Voyage Sea Any Time"; Decimal)
        {
            Description = 'For Report| to be able to reports catchs on Closed voyages';
            Editable = false;

            trigger OnValidate()
            begin
                VSDVal := Location."Voyage Sea Days";
            end;
        }
        field(50426; "Last Rep Operation No. Val"; Code[10])
        {
            Description = 'Value';
        }
        field(50430; "Last Reportd Vessel Pts"; Decimal)
        {
            Description = 'From Daily break Up by Vessel Report.';
        }
        field(50431; "Last Reportd Shrimps Pts"; Decimal)
        {
            Description = 'From Daily break Up by Vessel Report.';
        }
        field(50468; Inventory; Decimal)
        {
            CalcFormula = Sum("Value Entry"."Valued Quantity" WHERE("Location Code" = FIELD(Code),
                                                                     "Posting Date" = FIELD("date filter"),
                                                                     "Source Code" = FIELD("Source Code Filter")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50490; "Source Code Filter"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = "Source Code";
        }
        field(50491; ExpCode; Code[10])
        {
            Description = 'Export Code: Flor report Purpose';
        }
        field(50500; "Insurance Rate"; Decimal)
        {
            Description = 'Voyage P&L :Daily rate per Boat';
        }
        field(50501; "Depreciation Rate"; Decimal)
        {
            Description = 'Voyage P&L :Daily rate per Boat';
        }
        field(50502; "Interest Rate"; Decimal)
        {
            Description = 'Voyage P&L :Daily rate per Boat';
        }
        field(50503; "Begining ETA"; Date)
        {
            Description = 'Voyage P&L :Cycle Day Calculation';
        }
        field(50510; "Fishing Area"; Code[10])
        {
            Editable = false;
        }
        field(50511; "Vessel Endurance"; Decimal)
        {
        }
        field(50520; "Qty to Cold Room"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Description = 'Voyage comparison Report 50191';
            Editable = false;
        }
        field(50521; "Qty Budgeted"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Description = 'Voyage comparison Report 50191';
            Editable = false;
        }
        field(50522; "Port Captain"; Text[30])
        {
            Description = 'Daily Pts Report';
            TableRelation = Resource WHERE("Resource Group No." = CONST('PCAP'));
        }
        field(50523; "Budgeted Voyages"; Integer)
        {
            Description = 'No of budgeted Voy for the Year :Rep 50022';
        }
        field(50524; "Catch Date"; Date)
        {
        }
        field(50525; "Customer Code"; Code[20])
        {
            TableRelation = Customer."No." WHERE("Location Code" = FIELD(Code));
        }
        field(50526; "Fish Shop Location"; Boolean)
        {
        }
        field(50527; "Vessel Type"; Option)
        {
            OptionCaption = ' ,Short Voyage';
            OptionMembers = " ","Short Voyage";
        }
    }
    keys
    {
        key(ASLKey1; "Lst Ovh")
        {
            Enabled = false;
        }
        key(Key2; "Lst Ddk")
        {
            Enabled = false;
        }
        key(Key3; "Nxt Ovh")
        {
            Enabled = false;
        }
        key(Key4; "Nxt Ddk")
        {
            Enabled = false;
        }
        key(Key5; xx1)
        {
            Enabled = false;
        }
        key(Key6; "CO2 Ext")
        {
            Enabled = false;
        }
        key(Key7; Deratg)
        {
            Enabled = false;
        }
        key(Key8; "Str Lic")
        {
            Enabled = false;
        }
        key(Key9; "Pow Ext")
        {
            Enabled = false;
        }
        key(ASLKey10; ETD)
        {
        }
        key(ASLKey11; ETA)
        {
        }
        key(ASLKey12; "Life Jacket")
        {
            Enabled = false;
        }
        key(ASLKey13; "Life Buoy")
        {
            Enabled = false;
        }
        key(ASLKey14; "Life Rf")
        {
            Enabled = false;
        }
        key(ASLKey15; Parchut)
        {
            Enabled = false;
        }
        key(ASLKey16; "Fom Ext")
        {
            Enabled = false;
        }
        key(ASLKey17; xx2)
        {
            Enabled = false;
        }
        key(ASLKey18; "Crew Briefing")
        {
            Enabled = false;
        }
        key(ASLKey19; "R Flare")
        {
            Enabled = false;
        }
        key(Key20; VSDVal)
        {
        }
        key(Key21; "Last Reportd Vessel Pts")
        {
        }
    }

    procedure "--------------------"()
    begin
    end;

    procedure Captain(Vessel: Code[10]): Code[10]
    var
        Job: Record Job;
    begin
        Job.SetCurrentKey(Vessel, Status);
        Job.SetRange(Job.Vessel, Vessel);
        if Job.Find('+') then
            exit(Job."No.")
        else
            exit('');
    end;

    procedure LastRepOpNo(LocFilter: Text[100]; DateFilter: Text[100]): Code[10]
    var
        JobLedgEntry: Record "Job Ledger Entry";
    begin
        JobLedgEntry.SetCurrentKey("Job No.", "Location Code", "Posting Date");
        if LocFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Location Code", '%1', LocFilter);
        if DateFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Posting Date", DateFilter);
        if JobLedgEntry.Find('+') then
            exit(JobLedgEntry."Job No.")
        else
            exit('');
    end;

    procedure VoySeaAnyTime(JobNo: Code[10]; LocFilter: Text[100]; DateFilter: Text[100]): Decimal
    var
        JobLedgEntry: Record "Job Ledger Entry";
    begin
        JobLedgEntry.SetCurrentKey("Job No.", "Location Code", "Posting Date");
        JobLedgEntry.SetFilter(JobLedgEntry."Job No.", JobNo);
        if LocFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Location Code", LocFilter);
        if DateFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Posting Date", DateFilter);
        if JobLedgEntry.Find('+') then
            exit(JobLedgEntry."Catch Sea Days")
        else
            exit(0);
    end;

    procedure FishingArea(JobNo: Code[10]; LocFilter: Text[100]; DateFilter: Text[100]): Code[10]
    var
        JobLedgEntry: Record "Job Ledger Entry";
    begin
        JobLedgEntry.SetCurrentKey("Job No.", "Location Code", "Posting Date");
        JobLedgEntry.SetFilter(JobLedgEntry."Job No.", JobNo);
        if LocFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Location Code", LocFilter);
        if DateFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Posting Date", DateFilter);
        exit('');
    end;

    var
        JobsOper: Record Job;
        Location: Record Location;
}

