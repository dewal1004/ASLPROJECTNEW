pageextension 50290 pageextension50290 extends "Employee Card"
{
    layout
    {

        //Unsupported feature: Property Modification (Level) on "County(Control 20)".

        modify("Emplymt. Contract Code")
        {

            //Unsupported feature: Property Modification (Name) on ""Emplymt. Contract Code"(Control 42)".


            //Unsupported feature: Property Modification (SourceExpr) on ""Emplymt. Contract Code"(Control 42)".


            //Unsupported feature: Property Insertion (Lookup) on ""Emplymt. Contract Code"(Control 42)".

            LookupPageID = "Employment Contracts";
        }
        modify("Resource No.")
        {
            Editable = false;
        }
        // modify("Application Method")
        // {
        //     Visible = false;
        // }
        addafter("Country/Region Code")
        {
            field("Global Dimension 2 Code"; "Global Dimension 2 Code")
            {
            }
        }
        addafter("Grounds for Term. Code")
        {
            field("Modified By"; "Modified By")
            {
            }
            field(Blocked; Blocked)
            {
            }
            field("Blocked Modified Date"; "Blocked Modified Date")
            {
            }
            field("Blocked Modified By"; "Blocked Modified By")
            {
            }
        }
        addafter("Statistics Group Code")
        {
            field("Balance (LCY)"; "Balance (LCY)")
            {
            }
            field("Posting Group"; "Posting Group")
            {
            }
        }
        addafter("Resource No.")
        {
            field("MP Status"; "MP Status")
            {
            }
            field(Suspended; Suspended)
            {
            }
            field("Suspension Modified By"; "Suspension Modified By")
            {
            }
            field("Suspension Modified Date"; "Suspension Modified Date")
            {
            }
        }
        addafter("Salespers./Purch. Code")
        {
            field(Grade; Grade)
            {
            }
            field(Step; Step)
            {
            }
            field("Bank Account"; "Bank Account")
            {
            }
        }
        addafter("Union Code")
        {
            field("Acct. No"; "Acct. No")
            {
            }
        }
        addafter("Union Membership No.")
        {
            field("Pension Scheme"; "Pension Scheme")
            {
            }
            field(Married; Married)
            {
            }
            field("National ID Number"; "National ID Number")
            {
            }
            field("NSITF Number"; "NSITF Number")
            {
            }
        }
        addafter("Employee Posting Group")
        {
            // field("Application Method"; "Application Method")
            // {
            //     ApplicationArea = BasicHR;
            //     ToolTip = 'Specifies how to apply payments to entries for this employee.';
            // }
        }
    }
    actions
    {
        addafter(Dimensions)
        {
            action("Make Resource")
            {
                Caption = 'Make Resource';
                Image = "Action";

                trigger OnAction()
                begin

                    I := 1;
                    Res.Init;
                    /*IF ("Global Dimension 1 Code"<>'FLST') THEN
                       ERROR('The Department must be FLST');*/
                    Res."No." := 'R' + Rec."No.";
                    Res.Type := 0;
                    Res.Validate(Res.Name, FullName);
                    Res."Name 2" := "First Name";
                    Res.Address := Address;
                    Res."Address 2" := "Address 2";
                    Res.City := City;
                    Res."Social Security No." := "Social Security No.";
                    Res."Job Title" := "Job Title";
                    Res.Education := "Emplymt. Contract Code";
                    Eval := Evaluate("MP Status", Res."Contract Class");
                    Res."Employment Date" := "Employment Date";
                    if EmpContra.Get("Empl Contr Uni Code") then
                        Res."Resource Group No." := EmpContra.ResCode;
                    Message(EmpContra.ResCode);
                    Res."Global Dimension 1 Code" := "Global Dimension 1 Code";
                    Res."Global Dimension 2 Code" := "Global Dimension 2 Code";
                    Res."Base Unit of Measure" := 'Hours';
                    Res."Last Date Modified" := Today;
                    Res."Gen. Prod. Posting Group" := 'RES';
                    Res."Post Code" := "Post Code";
                    Res.County := County;
                    Res."Country/Region Code" := "Country Code";
                    ResExist;
                    if not Res.Insert then begin
                        Answ := Confirm('Resource already Exist,Change a EmpContra code', true);
                        if Answ then begin
                            ResExist;

                            /* REPEAT
                               I:=I+1;
                               Res."No.":="First Name"+COPYSTR("Last Name",1,I);
                             UNTIL Res.INSERT
                           END
                           ELSE*/
                        end;
                        Res.Modify;
                    end;
                    /*
                    I:=1;
                    Res.INIT;
                    IF ("Global Dimension 1 Code"<>'FLST') THEN
                       ERROR('The Department must be FLST');
                    Res."No.":='R'+Rec."No.";
                    Res.Type:=0;
                    Res.VALIDATE(Res.Name,FullName);
                    Res."Name 2":="First Name";
                    Res.Address:=Address;
                    Res."Address 2":="Address 2";
                    Res.City:=City;
                    Res."Social Security No.":="Social Security No.";
                    Res."Job Title" :="Job Title";
                    Res.Education:="Emplymt. Contract Code";
                    Eval:=EVALUATE("MP Status",Res."Contract Class");
                    Res."Employment Date":="Employment Date";
                    
                    IF EmpContra.GET("Empl Contr Uni Code")THEN
                       Res."Resource Group No.":=EmpContra.ResCode;
                    
                    Res."Global Dimension 1 Code":="Global Dimension 1 Code";
                    Res."Global Dimension 2 Code":="Global Dimension 2 Code";
                    Res."Base Unit of Measure":='Hours';
                    Res."Last Date Modified":=TODAY;
                    Res."Gen. Prod. Posting Group":='RES';
                    Res."Post Code":="Post Code";
                    Res.County:=County;
                    Res."Country/Region Code" :="Country Code";
                    MODIFY;
                    //ResExist;
                    {
                    IF NOT Res.INSERT THEN
                    BEGIN
                     MESSAGE('Resource already Exist');
                    END;
                    
                       Answ:=CONFIRM('Resource already Exist,Create a new Res. No.',TRUE);
                      IF Answ THEN
                      BEGIN
                        ResExist;
                        REPEAT
                          I:=I+1;
                          Res."No.":="First Name"+COPYSTR("Last Name",1,I);
                        UNTIL Res.INSERT
                      END
                      ELSE Res.MODIFY;
                    END;
                    
                    "Resource No.":=Res."No.";
                    MODIFY;
                    }
                    */

                end;
            }
        }
        addfirst(reporting)
        {
            group(Action78)
            {
            }
            action(" Monthly Payslip")
            {
                Caption = ' Monthly Payslip';
                Image = "Report";
                RunObject = Report "Monthly Payslip";
            }
            action("Payroll Report - NSITF")
            {
                Caption = 'Payroll Report - NSITF';
                Image = "Report";
                RunObject = Report "Payroll Report - NSITF";
            }
            action("Employee-Bank Acct")
            {
                Caption = 'Employee-Bank Acct';
                Image = "Report";
                RunObject = Report "Employee-Bank Acct";
            }
            action("Outstanding Loans")
            {
                Caption = 'Outstanding Loans';
                Image = "Report";
                RunObject = Report "OUTSTANDING LOANS";
            }
            action("Payroll Report")
            {
                Caption = 'Payroll Report';
                Image = "Report";
                RunObject = Report "Payroll Report";
            }
        }
    }

    var
        I: Integer;
        Res: Record Resource;
        Eval: Boolean;
        EmpContra: Record "Employment Contract";
        Res2: Record Resource;
        Answ2: Boolean;
        Answ: Boolean;

    local procedure ResExist()
    begin
        Res2.SetRange(Res2."No.", Res."No.");
        Res2.SetRange(Res2.Name, Res.Name);
        Res2.SetRange(Res2."Employment Date", Res."Employment Date");
        Res2.SetRange(Res2."Resource Group No.", Res."Resource Group No.");
        if Res2.Find('-') then
            repeat
                Answ2 := Confirm('Employee has a resource no already\'
                              + 'delete old resource No.', true);
                if Answ2 then
                    Res2.Delete
                else
                    Error('Resource May not be duplicated');
            until Res2.Next = 0;
    end;
}

