table 50015 "Staff Log"
{
    //*** DrillDownPageID = 50090;
    //*** LookupPageID = 50090;

    fields
    {
        field(1; "Bar Code ID"; Code[10])
        {
            NotBlank = true;

            trigger OnValidate()
            begin
                /*
                //'GoingOut,GoingIn,intruder'
                //WAVs:='file.avi,150x112.avi,STARTER1.WAV';
                //
                HRREc.RESET;
                HRREc.SETCURRENTKEY(HRREc."Bar Code ID");
                //HRREc.SETRANGE(HRREc."Bar Code ID","Payroll Period");
                IF HRREc.FIND('-') THEN
                 BEGIN
                  //"Employee No" :=HRREc."No.";
                  "E/D Code":=HRREc."First Name";
                  Units  :=TODAY;
                  Rate  :=TIME;
                  LOGREC.SETRANGE(LOGREC."Payroll Period","Payroll Period");
                  IF LOGREC.FIND('+') THEN
                   BEGIN
                    IF LOGREC.Quantity=0 THEN
                    BEGIN
                    Quantity:=1;
                    wav := 1;
                    END
                    ELSE
                    BEGIN
                    Quantity:=0;
                    wav := 2;
                    END;
                    END
                  ELSE
                    BEGIN
                    Quantity:=0;
                    wav := 2;
                  END;
                  END
                 ELSE
                 BEGIN
                //BEEP(10000000,100000);
                // BEEP(1000000,100000);
                // BEEP(100000,100000);
                // BEEP(100,1000000000);
                /// FileSTR:='C:\Program Files\Navision Financials\'+SELECTSTR(1,WAVs);
                // RunAutomate(FileSTR);
                
                 wav := 3;
                END;
                //FileSTR:='C:\Program Files\Navision Financials\'+SELECTSTR(wav,WAVs);
                //RunAutomate(FileSTR);
                IF wav = 3 THEN ERROR('Intruder!!!!Intruder!!!!!Intruder!!!!!! Go Away!');
                ;
                
                
                //pnk start
                IF Quantity=1 THEN
                BEGIN
                 LOGREC1:=Rec;
                 IF LOGREC1.NEXT(-1)=0 THEN ERROR('Logical problem: staff cannot go out before going in!');
                 Flag:=Rate-LOGREC1.Rate;
                END;
                */

            end;
        }
        field(2; "Staff No."; Code[10])
        {
            TableRelation = Employee."No.";
        }
        field(3; "Staff Name"; Text[30])
        {
        }
        field(4; "Log Date"; Date)
        {
        }
        field(5; "Log Time"; Time)
        {
        }
        field(6; "IN/OUT"; Option)
        {
            OptionMembers = "IN",OUT,OPBAL;
        }
        field(7; "Time in Premises"; Decimal)
        {
        }
    }

    keys
    {
        key(Key1; "Bar Code ID", "Log Date", "Log Time")
        {
            Clustered = true;
        }
        key(Key2; "IN/OUT", "Bar Code ID")
        {
        }
        key(Key3; "Staff No.")
        {
            SumIndexFields = "Time in Premises";
        }
        key(Key4; "Log Time", "IN/OUT")
        {
        }
    }

    fieldgroups
    {
    }

    var
        HRREc: Record Employee;
        Alert: Text[50];
        LOGREC: Record "Monthly Variables Lines.";
        FileSTR: Text[80];
        i: Integer;
        wav: Integer;
        WAVs: Text[200];
        LOGREC1: Record "Monthly Variables Lines.";

    //[Scope('OnPrem')]
    procedure RunAutomate(var FileName: Text[80])
    begin
    end;
}

