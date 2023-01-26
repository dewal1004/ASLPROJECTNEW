report 90993 "Update Default Catch Desc."
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/UpdateDefaultCatchDesc.rdlc';

    dataset
    {
        dataitem("Course Attendance"; "Course Attendance")
        {
            DataItemTableView = SORTING("Rec No.");
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Course_Attendance__Rec_No__; "Rec No.")
            {
            }
            column(Course_Attendance__Training_Course_Code_; "Training Course Code")
            {
            }
            column(Course_Attendance__Course_name_; "Course name")
            {
            }
            column(Course_Attendance__Region_Code_; "Region Code")
            {
            }
            column(items__Statistics_Group_; items."Statistics Group")
            {
            }
            column(Catch_DefaultCaption; Catch_DefaultCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Course_Attendance__Rec_No__Caption; FieldCaption("Rec No."))
            {
            }
            column(Course_Attendance__Training_Course_Code_Caption; FieldCaption("Training Course Code"))
            {
            }
            column(Course_Attendance__Course_name_Caption; FieldCaption("Course name"))
            {
            }
            column(Course_Attendance__Region_Code_Caption; FieldCaption("Region Code"))
            {
            }
            column(items__Statistics_Group_Caption; items__Statistics_Group_CaptionLbl)
            {
            }
            column(Course_Attendance_Employee_No; "Employee No")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if items.Get("Course Attendance"."Rec No.") then
                    "Course Attendance"."Region Code" := items.Description;
                "Course Attendance".Modify;
            end;
        }
        dataitem("Training Courses"; "Training Courses")
        {

            trigger OnAfterGetRecord()
            begin
                if items.Get("Training Courses"."Vendor name") then
                    //"Training Courses".Time:=items.Description;//@MA
                    "Training Courses".Modify;
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
        items: Record Item;
        Catch_DefaultCaptionLbl: Label 'Catch Default';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        items__Statistics_Group_CaptionLbl: Label 'Label21';
}

