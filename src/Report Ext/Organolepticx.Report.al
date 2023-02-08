report 99020 "Organolepticx"
{
    // //"Comment Line"."Pack Size"
    DefaultLayout = RDLC;
    RDLCLayout = './ReportRdlc/Organolepticx.rdlc';


    dataset
    {
        dataitem("Comment Line"; "Comment Line")
        {
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
            column(Comment_Line__No__; "No.")
            {
            }
            column(GradeTxt_______Pack_Size_______Brand; GradeTxt + '  ' + "Pack Size" + '  ' + Brand)
            {
            }
            column(Comment_Line_Vessel; Vessel)
            {
            }
            column(Comment_Line_Voyage; Voyage)
            {
            }
            column(Comment_Line_Captain; Captain)
            {
            }
            column(Comment_Line__Date_Code_; "Date Code")
            {
            }
            column(Comment_Line__Frozen_Weight_W_O_I_C_; "Frozen Weight W/O I/C")
            {
            }
            column(Comment_Line__Drained_Weight__KGS__; "Drained Weight (KGS)")
            {
            }
            column(Comment_Line__Count_Kg_; "Count/Kg")
            {
            }
            column(Comment_Line__TTL_No__Pcs_Slab_; "TTL No. Pcs/Slab")
            {
            }
            column(Comment_Line__Upper_Grade_Count_; "Upper Grade Count")
            {
            }
            column(Comment_Line__Lower_Grade_Count_; "Lower Grade Count")
            {
            }
            column(Comment_Line__Uniformity_Ratio_; "Uniformity Ratio")
            {
            }
            column(Comment_Line__Dehydration__; "Dehydration%")
            {
            }
            column(Comment_Line__Discolouration__; "Discolouration%")
            {
            }
            column(Comment_Line__Black_Spot__; "Black Spot%")
            {
            }
            column(Comment_Line__Broken__; "Broken%")
            {
            }
            column(Comment_Line__Mech_Damage__; "Mech Damage%")
            {
            }
            column(Comment_Line__General_Appearance_; "General Appearance")
            {
            }
            column(Comment_Line__Foreign_Matter_; "Foreign Matter")
            {
            }
            column(Comment_Line_Odour; Odour)
            {
            }
            column(Comment_Line__Overall_Remark_; "Overall Remark")
            {
            }
            column(Quality_Control_Caption; Quality_Control_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Comment_Line__No__Caption; FieldCaption("No."))
            {
            }
            column(GradeTxt_______Pack_Size_______BrandCaption; GradeTxt_______Pack_Size_______BrandCaptionLbl)
            {
            }
            column(Comment_Line_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(Comment_Line_VoyageCaption; FieldCaption(Voyage))
            {
            }
            column(Comment_Line_CaptainCaption; FieldCaption(Captain))
            {
            }
            column(Comment_Line__Date_Code_Caption; FieldCaption("Date Code"))
            {
            }
            column(Comment_Line__Frozen_Weight_W_O_I_C_Caption; FieldCaption("Frozen Weight W/O I/C"))
            {
            }
            column(Comment_Line__Drained_Weight__KGS__Caption; FieldCaption("Drained Weight (KGS)"))
            {
            }
            column(Comment_Line__Count_Kg_Caption; FieldCaption("Count/Kg"))
            {
            }
            column(Comment_Line__TTL_No__Pcs_Slab_Caption; FieldCaption("TTL No. Pcs/Slab"))
            {
            }
            column(Comment_Line__Upper_Grade_Count_Caption; FieldCaption("Upper Grade Count"))
            {
            }
            column(Comment_Line__Lower_Grade_Count_Caption; FieldCaption("Lower Grade Count"))
            {
            }
            column(Comment_Line__Uniformity_Ratio_Caption; FieldCaption("Uniformity Ratio"))
            {
            }
            column(Comment_Line__Dehydration__Caption; FieldCaption("Dehydration%"))
            {
            }
            column(Comment_Line__Discolouration__Caption; FieldCaption("Discolouration%"))
            {
            }
            column(Comment_Line__Black_Spot__Caption; FieldCaption("Black Spot%"))
            {
            }
            column(Comment_Line__Broken__Caption; FieldCaption("Broken%"))
            {
            }
            column(Comment_Line__Mech_Damage__Caption; FieldCaption("Mech Damage%"))
            {
            }
            column(Comment_Line__General_Appearance_Caption; FieldCaption("General Appearance"))
            {
            }
            column(Comment_Line__Foreign_Matter_Caption; FieldCaption("Foreign Matter"))
            {
            }
            column(Comment_Line_OdourCaption; FieldCaption(Odour))
            {
            }
            column(Comment_Line__Overall_Remark_Caption; FieldCaption("Overall Remark"))
            {
            }
            column(Comment_Line_Table_Name; "Table Name")
            {
            }
            column(Comment_Line_Line_No_; "Line No.")
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
        Jobs: Record Job;
        item: Record Item;
        Grade: Code[20];
        GradeTxt: Text[30];
        Quality_Control_CaptionLbl: Label 'Quality Control ';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        GradeTxt_______Pack_Size_______BrandCaptionLbl: Label 'Description';
}

