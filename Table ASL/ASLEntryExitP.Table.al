table 50050 "ASL Entry/Exit P"
{
    Caption = 'ASL Entry/Exit P';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Code"; Code[10])
        {
           
        }
        field(2; Description; Text[30])
        {
            
        }
        field(50000; "Entry No."; Integer)
        {
        }
        field(50001; "Date"; Date)
        {
        }
        field(50002; "Type"; Option)
        {
            Optionmembers = " ","Average",Median;
                 
        }
        field(50003; Vessel; Text[30])
        {
            Caption = 'Vessel';
            TableRelation = Location;
        }
        field(50004; Country; Code[10])
        {
            
        }
        field(50005; Skipper; Text[30])
        {
        }
        field(50006; "Sea Days"; Decimal)
        {
            DecimalPlaces = 0:0;
        }
        field(50007; "Sea Area"; Code[10])
        {
        }
        field(50008; "Day Fish Pts"; Decimal)
        {
        }
        field(50009; "Day Shrimp Pts"; Decimal)
        {
        }
        field(50010; "Day Points"; Decimal)
        {
        }
        field(50011; "Cumm. Fish Pts"; Decimal)
        {
        }
        field(50012; "Cumm. Shrimp Pts"; Decimal)
        {
        }
        field(50013; "Cumm. Total Pts"; Decimal)
        {
        }
        field(50014; "Avg Fish Pts"; Decimal)
        {
        }
        field(50015; "Avg Shrimp Pts"; Decimal)
        {
        }
        field(50016; "Total Avg Pts"; Decimal)
        {
        }
        field(50017; "Vessel Count"; Integer)
        {
        }
        field(50018; "Report Type"; Option)
        {
            OptionMembers = " ",Points;
        }               
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        Key(Key2;Code)
        {
            Clustered = false;
        }
        key(Key3;Date,Vessel,Type)
        {}
   }
    trigger OnInsert()
    Begin
    
    HistoricalPtsData.SetRange(HistoricalPtsData."Entry No.");
    if HistoricalPtsData.Find('+') then
      "Entry No." := HistoricalPtsData."Entry No." + 1
    else
      "Entry No." := 1;
    
    end;

    var
        HistoricalPtsData: Record "ASL Entry/Exit P";

}
