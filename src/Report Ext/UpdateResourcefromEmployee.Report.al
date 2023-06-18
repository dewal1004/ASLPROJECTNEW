report 99912 "Update Resource from Employee"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/UpdateResourcefromEmployee.rdlc';
    Caption = 'Update Resource from Employee';
    dataset
    {
        dataitem(Employee; Employee)
        {
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(USERID; UserId)
            {
            }
            column(Employee__No__; "No.")
            {
            }
            column(Employee__First_Name_; "First Name")
            {
            }
            column(Employee__Last_Name_; "Last Name")
            {
            }
            column(Employee__Global_Dimension_1_Code_; "Global Dimension 1 Code")
            {
            }
            column(Employee__Resource_No__; "Resource No.")
            {
            }
            column(EmployeeCaption; EmployeeCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Employee__No__Caption; FieldCaption("No."))
            {
            }
            column(Employee__First_Name_Caption; FieldCaption("First Name"))
            {
            }
            column(Employee__Last_Name_Caption; FieldCaption("Last Name"))
            {
            }
            column(Employee__Global_Dimension_1_Code_Caption; FieldCaption("Global Dimension 1 Code"))
            {
            }
            column(Employee__Resource_No__Caption; FieldCaption("Resource No."))
            {
            }
        }
    }

    requestpage
    {
        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        Res: Record Resource;
        Res2: Record Resource;
        Answ2: Boolean;
        EmployeeCaptionLbl: Label 'Employee';
        CurrReport_PAGENOCaptionLbl: Label 'Page';

    [Scope('OnPrem')]
    procedure ResExist()
    begin
        Res2.SetRange(Res2.Name, Res.Name);
        Res2.SetRange(Res2."Employment Date", Res."Employment Date");
        Res2.SetRange(Res2."Resource Group No.", Res."Resource Group No.");
        if Res2.Find('-') then
            repeat
                Answ2 := true;
                //CONFIRM('Employee has a resource no already\'
                //              +'delete old resource No.',TRUE);
                if Answ2 then
                    Res2.Delete()
                else
                    Error('Resource May not be duplicated');
            until Res2.Next() = 0;
    end;
}
