report 50091 "Convert Applicant to Staff"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/ConvertApplicanttoStaff.rdlc';
    Caption = 'Convert Applicant to Staff';
    dataset
    {
        dataitem(ApplicantsX; Applicants)
        {
            DataItemTableView = SORTING("No.") WHERE("Application Status" = CONST(Accepted), Blocked = CONST(false), Staffed = CONST(false), "Posting Group" = FILTER(<> ''), "Employee Group" = FILTER(<> ''));
            RequestFilterFields = "No.", "Region Code", "Global Dimension 1 Code", Class;
            column(USERID; UserId)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo())
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(ApplicantsX__No__; "No.")
            {
            }
            column(ApplicantsX_Surname_________ApplicantsX__First_Name___________Middle_Name_; ApplicantsX.Surname + ' ' + ApplicantsX."First Name" + ' ' + "Middle Name")
            {
            }
            column(EmploRec__No__; EmploRec."No.")
            {
            }
            column(EmploRec__Region_Code_; EmploRec."Region Code")
            {
            }
            column(EmploRec__Global_Dimension_1_Code_; EmploRec."Global Dimension 1 Code")
            {
            }
            column(EmploRec__Global_Dimension_2_Code_; EmploRec."Global Dimension 2 Code")
            {
            }
            column(EmpCount; EmpCount)
            {
            }
            column(EmploRec__Employment_Date_; EmploRec."Employment Date")
            {
            }
            column(Date_EmployedCaption; Date_EmployedCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(ProjectCaption; ProjectCaptionLbl)
            {
            }
            column(DepartmentCaption; DepartmentCaptionLbl)
            {
            }
            column(Bussiness_UnitCaption; Bussiness_UnitCaptionLbl)
            {
            }
            column(NameCaption; NameCaptionLbl)
            {
            }
            column(Applicants_Converted_to_StaffsCaption; Applicants_Converted_to_StaffsCaptionLbl)
            {
            }
            column(Employee_NoCaption; Employee_NoCaptionLbl)
            {
            }
            column(Applicant_NoCaption; Applicant_NoCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                if not (Confirm('Are you sure youu want to convert %1 to an EMployee?', true, ApplicantsX.FullName())) then
                    CurrReport.Skip();

                HumanRecSetup.Get();
                if HumanRecSetup."Application Nos." <> '' then begin
                    NumCode := HumanRecSetup."Employee Nos.";
                    NoSeriesRec.SetRange(NoSeriesRec."Series Code", NumCode);
                    NoSeriesRec.SetRange(NoSeriesRec.Open, true);
                    if NoSeriesRec.Find('-') then begin
                        if NoSeriesRec."Last No. Used" = '' then
                            NewEmpNum := NoSeriesRec."Starting No."
                        else begin
                            LnoUsed := NoSeriesRec."Last No. Used";
                            for k := 1 to NoSeriesRec."Increment-by No." do
                                LnoUsed := IncStr(LnoUsed);

                            NewEmpNum := LnoUsed;
                        end;

                        ApplicantsX.Staffed := true;
                        EmploRec.Init();
                        EmploRec.TransferFields(ApplicantsX);
                        if (ApplicantsX."Assigned Employee No" = '') then begin
                            ApplicantsX."Assigned Employee No" := NewEmpNum;
                            EmploRec."No." := NewEmpNum;
                        end
                        else
                            EmploRec."No." := ApplicantsX."Assigned Employee No";

                        if (ApplicantsX."Assigned Employee No" < NewEmpNum) then
                            NoSeriesRec."Last No. Used" := NewEmpNum
                        else
                            NoSeriesRec."Last No. Used" := ApplicantsX."Assigned Employee No";

                        NoSeriesRec."Last Date Used" := Today;
                        NoSeriesRec.Modify();

                        EmploRec."No. Series" := HumanRecSetup."Employee Nos.";
                        EmploRec.Status := 0;
                        EmploRec."Employment Date" := Today;
                        /*
                                    HV := Applicants.Picture.HASVALUE;
                                    IF HV THEN
                                      BEGIN
                                        SHELL('Del','Pix.bmp');
                                        Applicants.Picture.EXPORT('Pix.bmp',false);
                                        EmploRec.Picture.IMPORT('Pix.bmp',false);
                                        error('o wambe');
                                      END;
                        */

                        EmploRec.Insert();

                        ApplicantsX."Date Offer Made" := Today;
                        ApplicantsX."Agreed Start Date" := Today;
                        ApplicantsX.Modify();

                        EmpCount := EmpCount + 1;
                    end
                    else
                        Error('It is Not Posible to Convert this Applicant because Applicants No. Is Not Automatic');
                end
                else
                    Error('Human resouces No series is Not assign Human Resources Setup ');
            end;

            trigger OnPostDataItem()
            begin

                if EmpCount > 0 then
                    Message(Format(EmpCount) + ' Applicant(s) have been converted to Staff')
                else
                    Error('There is NO Employed Applicant \\ that has not been converted to Staff');
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("No.");
                EmpCount := 0;
            end;
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
        LastFieldNo: Integer;
        EmploRec: Record Employee;
        HumanRecSetup: Record "Human Resources Setup";
        NoSeriesRec: Record "No. Series Line";
        NumCode: Code[10];
        NewEmpNum: Code[10];
        k: Integer;
        LnoUsed: Code[10];
        EmpCount: Integer;
        Date_EmployedCaptionLbl: Label 'Date Employed';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        ProjectCaptionLbl: Label 'Project';
        DepartmentCaptionLbl: Label 'Department';
        Bussiness_UnitCaptionLbl: Label 'Bussiness Unit';
        NameCaptionLbl: Label 'Name';
        Applicants_Converted_to_StaffsCaptionLbl: Label 'Applicants Converted to Staffs';
        Employee_NoCaptionLbl: Label 'Employee No';
        Applicant_NoCaptionLbl: Label 'Applicant No';
}
