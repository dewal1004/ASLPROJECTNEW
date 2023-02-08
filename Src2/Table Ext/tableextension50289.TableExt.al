tableextension 50289 "tableextension50289" extends "Employment Contract"
{
    fields
    {
        field(50000; "Maximum Approved No."; Integer)
        {
        }
        field(50001; Category; Code[10])
        {
            TableRelation = "Payroll-Employee Group Header.".Code;

            trigger OnValidate()
            begin
                if EmpGrp.Get(Category) then "Category Cost" := EmpGrp."Gross Pay";
            end;
        }
        field(50002; "Category Cost"; Decimal)
        {
            BlankZero = true;
            DecimalPlaces = 2 : 2;

            trigger OnValidate()
            begin
                //Sum("Payroll-Employee Group Lines."."Default Amount" WHERE (Employee Group=FIELD(Code)))
            end;
        }
        field(50003; "Global Dimension 1 Code"; Code[10])
        {
            CaptionClass = '1,1,1';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(50004; "Global Dimension 2 Code"; Code[10])
        {
            CaptionClass = '1,1,2';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(50005; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(50006; "Global Dimension 1 Filter"; Code[10])
        {
            CaptionClass = '1,3,1';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(50007; "Global Dimension 2 Filter"; Code[10])
        {
            CaptionClass = '1,3,2';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(50008; "Budgeted Count"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("MP Budget Entry"."Employee Count" WHERE("Employee Grp" = FIELD("Unique Cd No"),
                                                                        "Budget Name" = FIELD("Budget Filter"),
                                                                        "Region Code" = FIELD("Region Filter"),
                                                                        "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                        Date = FIELD("Date Filter")));
            DecimalPlaces = 0 : 0;
            FieldClass = FlowField;
        }
        field(50010; "Budget Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "MP Budget Name";
        }
        field(50011; "Region Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Business Unit";
        }
        field(50012; Amount; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            DecimalPlaces = 0 : 0;
        }
        field(50013; "Gross Pay"; Decimal)
        {
            CalcFormula = Sum("Payroll-Employee Group Lines."."Default Amount" WHERE("Employee Group" = FIELD(Category),
                                                                                      "ED Category" = CONST("Gross Salary")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50300; Group; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(50301; "MP Filter"; Option)
        {
            FieldClass = FlowFilter;
            OptionMembers = Permanent,"Contract A","Contract B";
            TableRelation = "Dimension Value";
        }
        field(50302; "PostgGrp Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Payroll-Posting Group Header.";
        }
        field(50310; Permanent; Integer)
        {
            CalcFormula = Count(Employee WHERE(Status = CONST(Active),
                                                "Emplymt. Contract Code" = FIELD(Description),
                                                "MP Status" = CONST(Permanent),
                                                "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                Blocked = CONST(false)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50311; "Contract A"; Integer)
        {
            CalcFormula = Count(Employee WHERE(Status = CONST(Active),
                                                "Emplymt. Contract Code" = FIELD(Description),
                                                "MP Status" = CONST("Contract A"),
                                                "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                Blocked = CONST(false)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50312; "Contract B"; Integer)
        {
            CalcFormula = Count(Employee WHERE(Status = CONST(Active),
                                                "Emplymt. Contract Code" = FIELD(Description),
                                                "MP Status" = CONST("Contract B"),
                                                "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                Blocked = CONST(false)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50313; Total; Integer)
        {
            CalcFormula = Count(Employee WHERE(Status = CONST(Active),
                                                "Empl Contr Uni Code" = FIELD("Unique Cd No"),
                                                "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                Blocked = CONST(false)));
            FieldClass = FlowField;
        }
        field(50314; Junior; Integer)
        {
            CalcFormula = Count(Employee WHERE(Status = CONST(Active),
                                                "Emplymt. Contract Code" = FIELD(Description),
                                                "Posting Group" = FILTER('JNR' | 'JNRF'),
                                                "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                Blocked = CONST(false)));
            FieldClass = FlowField;
        }
        field(50315; Intermediate; Integer)
        {
            CalcFormula = Count(Employee WHERE(Status = CONST(Active),
                                                "Emplymt. Contract Code" = FIELD(Description),
                                                "Posting Group" = FILTER('INTR' | 'INTRF'),
                                                "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                Blocked = CONST(false)));
            FieldClass = FlowField;
        }
        field(50316; Senior; Integer)
        {
            CalcFormula = Count(Employee WHERE(Status = CONST(Active),
                                                "Emplymt. Contract Code" = FIELD(Description),
                                                "Posting Group" = FILTER('SNR' | 'SNRF'),
                                                "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                Blocked = CONST(false)));
            FieldClass = FlowField;
        }
        field(50317; Expatriates; Integer)
        {
            CalcFormula = Count(Employee WHERE(Status = CONST(Active),
                                                "Emplymt. Contract Code" = FIELD(Description),
                                                "Posting Group" = FILTER('EXP' | 'EXPF'),
                                                "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                Blocked = CONST(false)));
            FieldClass = FlowField;
        }
        field(50318; Contract; Integer)
        {
            CalcFormula = Count(Employee WHERE(Status = CONST(Active),
                                                "Posting Group" = FILTER('COTR' | 'COTRF'),
                                                "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                "Empl Contr Uni Code" = FIELD("Unique Cd No"),
                                                Blocked = CONST(false)));
            FieldClass = FlowField;
        }
        field(50319; "Unique Cd No"; Code[10])
        {
        }
        field(50320; ResCode; Code[10])
        {
            TableRelation = "Resource Group";
        }
        field(50321; Budget; Integer)
        {
            Description = 'Required No of Staff.';
        }
    }
    keys
    {

        //Unsupported feature: Deletion (KeyCollection) on "Code(Key)".

        key(ASLKey1; "Unique Cd No")
        {
        }
        //*** Revisit
        // key(Key2; "Code", "Unique Cd No", Description)
        // {
        //     Clustered = true;
        // }
        // key(Key3; "Global Dimension 1 Code", Description)
        // {
        // }
        //***Revisit

        key(Key4; Description)
        {
        }
    }


    //Unsupported feature: Code Insertion on "OnInsert".

    //trigger OnInsert()
    //begin
    /*

    "Global Dimension 2 Code":='ATLANTIC';     //AAA - Oct 2002
    */
    //end;

    procedure SetupNewEmpContr(OldEmpContr: Record "Employment Contract"; BelowOldEmpContr: Boolean; EmpContrGrp: Code[10]): Decimal
    var
        OldEmpContr2: Record "Employment Contract";
    begin
        //Univision Insert 31/10/01
        if not BelowOldEmpContr then begin
            OldEmpContr2 := OldEmpContr;
            OldEmpContr.Copy(Rec);
            OldEmpContr := OldEmpContr2;
            if not OldEmpContr.Find('<') then
                OldEmpContr.Init;
        end;

        //Univision Finish 31/10/01
    end;

    procedure BudgGrpCost(EmpContrGrp: Code[10]): Decimal
    begin
        //message(format(EmpGrp.GetGross(Code)));
        exit("Gross Pay" * "Budgeted Count");
    end;

    //Unsupported feature: Property Deletion (LookupPageID).


    //Unsupported feature: Property Deletion (DrillDownPageID).


    var
        approved: Boolean;
        // approv: Record "Object"; //*** Revisit
        EmpGrp: Record "Payroll-Employee Group Header.";
}

