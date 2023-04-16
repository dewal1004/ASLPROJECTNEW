pageextension 50290 "pageextension50290" extends "Employee Card"
{
    layout
    {
        modify("Emplymt. Contract Code")
        {
            LookupPageID = "Employment Contracts";
        }
        modify("Resource No.")
        {
            Editable = True;
        }
        // modify("Application Method")
        // {
        //     Visible = false;
        // }
        addafter("Country/Region Code")
        {
            field("Global Dimension 2 Code"; "Global Dimension 2 Code")
            {
                ApplicationArea = All;
            }
        }
        addafter("Grounds for Term. Code")
        {
            field("Modified By"; "Modified By")
            {
                ApplicationArea = All;
            }
            field(Blocked; Blocked)
            {
                ApplicationArea = All;
            }
            field("Blocked Modified Date"; "Blocked Modified Date")
            {
                ApplicationArea = All;
            }
            field("Blocked Modified By"; "Blocked Modified By")
            {
                ApplicationArea = All;
            }
        }
        addafter("Statistics Group Code")
        {
            field("Balance (LCY)"; "Balance (LCY)")
            {
                ApplicationArea = All;
            }
            field("Posting Group"; "Posting Group")
            {
                ApplicationArea = All;
            }
            field("Employee Group"; "Employee Group")
            {
                ApplicationArea = All;
            }
        }
        addafter("Resource No.")
        {
            field("MP Status"; "MP Status")
            {
                ApplicationArea = All;
            }
            field(Suspended; Suspended)
            {
                ApplicationArea = All;
            }
            field("Suspension Modified By"; "Suspension Modified By")
            {
                ApplicationArea = All;
            }
            field("Suspension Modified Date"; "Suspension Modified Date")
            {
                ApplicationArea = All;
            }
            field("Global Dimension 1 Code"; "Global Dimension 1 Code")
            {
                Caption = 'Department Code';
                ApplicationArea = All;
            }
        }
        addafter("Salespers./Purch. Code")
        {
            field(Grade; Grade)
            {
                ApplicationArea = All;
            }
            field(Step; Step)
            {
                ApplicationArea = All;
            }
            field("Bank Account"; "Bank Account")
            {
                ApplicationArea = All;
            }
        }
        addafter("Union Code")
        {
            field("Acct. type"; "Acct. type")
            {
                ApplicationArea = All;
            }
            field("Acct. No"; "Acct. No")
            {
                ApplicationArea = All;
            }
        }
        addafter("Union Membership No.")
        {
            field("Pension Scheme"; "Pension Scheme")
            {
                ApplicationArea = All;
            }
            field(Married; Married)
            {
                ApplicationArea = All;
            }
            field("National ID Number"; "National ID Number")
            {
                ApplicationArea = All;
            }
            field("NSITF Number"; "NSITF Number")
            {
                ApplicationArea = All;
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
                ApplicationArea = All;

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
                ApplicationArea = All;
            }
            action("Payroll Report - NSITF")
            {
                Caption = 'Payroll Report - NSITF';
                Image = "Report";
                RunObject = Report "Payroll Report - NSITF";
                ApplicationArea = All;
            }
            action("Employee-Bank Acct")
            {
                Caption = 'Employee-Bank Acct';
                Image = "Report";
                RunObject = Report "Employee-Bank Acct";
                ApplicationArea = All;
            }
            action("Outstanding Loans")
            {
                Caption = 'Outstanding Loans';
                Image = "Report";
                RunObject = Report "OUTSTANDING LOANS";
                ApplicationArea = All;
            }
            action("Payroll Report")
            {
                Caption = 'Payroll Report';
                Image = "Report";
                RunObject = Report "Payroll Report";
                ApplicationArea = All;
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

