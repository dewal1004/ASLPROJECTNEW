report 50166 "Appraisal Order"
{
    // {
    // "Sales Header"."Shortcut Dimension 1 Code"
    DefaultLayout = RDLC;
    RDLCLayout = './AppraisalOrder.rdlc';


    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "No.";
            column(USERID; UserId)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(Header; Header)
            {
            }
            column(Jobt; Jobt)
            {
            }
            column(Name; Name)
            {
            }
            column(MidName; MidName)
            {
            }
            column(Nmber; Nmber)
            {
            }
            column(Department; Department)
            {
            }
            column(BusiUnit; BusiUnit)
            {
            }
            column(Sales_Header__Sales_Header__Cgrade; "Sales Header".Cgrade)
            {
            }
            column(Sales_Header__Sales_Header__Cstep; "Sales Header".Cstep)
            {
            }
            column(Sales_Header__Sales_Header__Aedamount; "Sales Header".Aedamount)
            {
            }
            column(Sales_Header__Sales_Header__Redamount; "Sales Header".Redamount)
            {
            }
            column(Sales_Header__Sales_Header__Cedamount; "Sales Header".Cedamount)
            {
            }
            column(Sales_Header__Sales_Header__Rgrade; "Sales Header".Rgrade)
            {
            }
            column(Sales_Header__Sales_Header__Rstep; "Sales Header".Rstep)
            {
            }
            column(Sales_Header__Sales_Header__Agrade; "Sales Header".Agrade)
            {
            }
            column(Sales_Header__Sales_Header__Astep; "Sales Header".Astep)
            {
            }
            column(Sales_Header__Sales_Header___Total_Percentage_; "Sales Header"."Total Percentage")
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(ASLCaption; ASLCaptionLbl)
            {
            }
            column(Designation_Caption; Designation_CaptionLbl)
            {
            }
            column(NmberCaption; NmberCaptionLbl)
            {
            }
            column(NameCaption; NameCaptionLbl)
            {
            }
            column(MidNameCaption; MidNameCaptionLbl)
            {
            }
            column(Department_Caption; Department_CaptionLbl)
            {
            }
            column(Business_Units__Caption; Business_Units__CaptionLbl)
            {
            }
            column(Appraised_By_Caption; Appraised_By_CaptionLbl)
            {
            }
            column(Current_Grade_Caption; Current_Grade_CaptionLbl)
            {
            }
            column(Current_Step_Caption; Current_Step_CaptionLbl)
            {
            }
            column(Recommended_Grade_Caption; Recommended_Grade_CaptionLbl)
            {
            }
            column(Recommended_Step_Caption; Recommended_Step_CaptionLbl)
            {
            }
            column(Approved_Grade_Caption; Approved_Grade_CaptionLbl)
            {
            }
            column(Current_Gross_Pay_Caption; Current_Gross_Pay_CaptionLbl)
            {
            }
            column(Recommended_Gross_Pay_Caption; Recommended_Gross_Pay_CaptionLbl)
            {
            }
            column(New_Gross_Pay_Caption; New_Gross_Pay_CaptionLbl)
            {
            }
            column(Approved_Step_Caption; Approved_Step_CaptionLbl)
            {
            }
            column(EmptyStringCaption; EmptyStringCaptionLbl)
            {
            }
            column(Total__Caption; Total__CaptionLbl)
            {
            }
            column(Sales_Header_Document_Type; "Document Type")
            {
            }
            column(Sales_Header_No_; "No.")
            {
            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document No." = FIELD ("No.");
                DataItemTableView = SORTING ("Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Shipment Date") ORDER(Descending);
                RequestFilterFields = "Document Type", Type;
                column(Sales_Line__Document_Type_; "Document Type")
                {
                }
                column(CommentCapt; CommentCapt)
                {
                }
                column(Sales_Line_Type; Type)
                {
                }
                column(Sales_Line_Description; Description)
                {
                }
                column(Sales_Line_Quantity; Quantity)
                {
                }
                column(Sales_Line_Grade; Grade)
                {
                }
                column(Sales_Line_Comment; Comment)
                {
                }
                column(Sales_Line_Quantity_Control1000000003; Quantity)
                {
                }
                column(TotalFor___FIELDCAPTION_Type_______; TotalFor + FieldCaption(Type) + ':')
                {
                }
                column(CommentCapt_Control1000000004; CommentCapt)
                {
                }
                column(TotalFor___FIELDCAPTION_Type________Control22; TotalFor + FieldCaption(Type) + ':')
                {
                }
                column(Sales_Line_Quantity_Control23; Quantity)
                {
                }
                column(Sales_Line_Type_Control1000000002; Type)
                {
                }
                column(TotalFor__; TotalFor)
                {
                }
                column(Sales_Line_Quantity_Control25; Quantity)
                {
                }
                column(Header_Control1000000006; Header)
                {
                }
                column(Sales_Line_DescriptionCaption; FieldCaption(Description))
                {
                }
                column(Score__4_Caption; Score__4_CaptionLbl)
                {
                }
                column(Sales_Line_GradeCaption; FieldCaption(Grade))
                {
                }
                column(Sales_Line__Document_Type_Caption; FieldCaption("Document Type"))
                {
                }
                column(TypeCaption; TypeCaptionLbl)
                {
                }
                column(Sales_Line_TypeCaption; FieldCaption(Type))
                {
                }
                column(Sales_Line_Document_No_; "Document No.")
                {
                }
                column(Sales_Line_Line_No_; "Line No.")
                {
                }

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo(Type);
                end;
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        CommentCapt: Text[30];
        EmplRec: Record Employee;
        AppRec: Record Applicants;
        AAN: Record Employee;
        Name: Text[30];
        MidName: Text[30];
        Department: Code[20];
        BusiUnit: Code[20];
        "No.": Code[20];
        Header: Text[30];
        Jobt: Text[30];
        Nmber: Code[10];
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        ASLCaptionLbl: Label 'ASL';
        Designation_CaptionLbl: Label 'Designation:';
        NmberCaptionLbl: Label 'No.:';
        NameCaptionLbl: Label 'First Name :';
        MidNameCaptionLbl: Label 'Middle Name :';
        Department_CaptionLbl: Label 'Department:';
        Business_Units__CaptionLbl: Label 'Business Units :';
        Appraised_By_CaptionLbl: Label 'Appraised By:';
        Current_Grade_CaptionLbl: Label 'Current Grade:';
        Current_Step_CaptionLbl: Label 'Current Step:';
        Recommended_Grade_CaptionLbl: Label 'Recommended Grade:';
        Recommended_Step_CaptionLbl: Label 'Recommended Step:';
        Approved_Grade_CaptionLbl: Label 'Approved Grade:';
        Current_Gross_Pay_CaptionLbl: Label 'Current Gross Pay:';
        Recommended_Gross_Pay_CaptionLbl: Label 'Recommended Gross Pay:';
        New_Gross_Pay_CaptionLbl: Label 'New Gross Pay:';
        Approved_Step_CaptionLbl: Label 'Approved Step:';
        EmptyStringCaptionLbl: Label '%';
        Total__CaptionLbl: Label 'Total %';
        Score__4_CaptionLbl: Label 'Score (4)';
        TypeCaptionLbl: Label 'Type';
}

