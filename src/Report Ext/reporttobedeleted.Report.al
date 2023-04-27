report 52000 "report to be deleted --"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/reporttobedeleted.rdlc';

    dataset
    {
        dataitem("Payroll-Employee Group Header."; "Payroll-Employee Group Header.")
        {
            RequestFilterFields = "Code", "Posting Group Code";
            column(Payroll_Employee_Group_Header__Code; Code)
            {
            }

            trigger OnAfterGetRecord()
            begin

                employ_group_line_rec."Employee Group" := "Payroll-Employee Group Header.".Code;
                employ_group_line_rec."E/D Code" := '5940';
                employ_group_line_rec."Default Amount" := 0.01;
                employ_group_line_rec."Employee Name" := "Payroll-Employee Group Header.".Code;

                if employ_group_line_rec.Insert then;

                employ_group_line_rec."Employee Group" := "Payroll-Employee Group Header.".Code;
                employ_group_line_rec."E/D Code" := '5941';
                employ_group_line_rec."Default Amount" := 0.01;
                employ_group_line_rec."Employee Name" := "Payroll-Employee Group Header.".Code;

                if employ_group_line_rec.Insert then;

                employ_group_line_rec."Employee Group" := "Payroll-Employee Group Header.".Code;
                employ_group_line_rec."E/D Code" := '5942';
                employ_group_line_rec."Default Amount" := 0.01;
                employ_group_line_rec."Employee Name" := "Payroll-Employee Group Header.".Code;

                if employ_group_line_rec.Insert then;

                employ_group_line_rec."Employee Group" := "Payroll-Employee Group Header.".Code;
                employ_group_line_rec."E/D Code" := '5944';
                employ_group_line_rec."Default Amount" := 0.01;
                employ_group_line_rec."Employee Name" := "Payroll-Employee Group Header.".Code;

                if employ_group_line_rec.Insert then;

                employ_group_line_rec."Employee Group" := "Payroll-Employee Group Header.".Code;
                employ_group_line_rec."E/D Code" := '5946';
                employ_group_line_rec."Default Amount" := 0.01;
                employ_group_line_rec."Employee Name" := "Payroll-Employee Group Header.".Code;

                if employ_group_line_rec.Insert then;

                employ_group_line_rec."Employee Group" := "Payroll-Employee Group Header.".Code;
                employ_group_line_rec."E/D Code" := '5948';
                employ_group_line_rec."Default Amount" := 0.01;
                employ_group_line_rec."Employee Name" := "Payroll-Employee Group Header.".Code;

                if employ_group_line_rec.Insert then;
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
        employ_group_line_rec: Record "Payroll-Employee Group Lines.";
}

