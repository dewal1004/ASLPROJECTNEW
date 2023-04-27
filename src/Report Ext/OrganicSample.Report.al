report 50040 "Organic_Sample"
{
    // 
    // "Comment Line"."Loose Shells%"
    // "Comment Line"."Loose Neck%"
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/OrganicSample.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;


    dataset
    {
        dataitem("Comment Line"; "Comment Line")
        {
            column(USERID; UserId)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(Vessel_CommentLine; "Comment Line".Vessel)
            {
            }
            column(No_CommentLine; "Comment Line"."No.")
            {
            }
            column(Voyage_CommentLine; "Comment Line".Voyage)
            {
            }
            column(Loc_ETD; Loc.ETD)
            {
            }
            column(Loc_ETA; Loc.ETA)
            {
            }
            column(Batch; Batch)
            {
            }
            column(Captain_CommentLine; "Comment Line".Captain)
            {
            }
            column(Date_CommentLine; "Comment Line".Date)
            {
            }
            column(SMS_Name; SMSName)
            {
            }
            column(FrozenWeightWOIC_CommentLine; "Comment Line"."Frozen Weight W/O I/C")
            {
            }
            column(DrainedWeightKGS_CommentLine; "Comment Line"."Drained Weight (KGS)")
            {
            }
            column(CountKg_CommentLine; "Comment Line"."Count/Kg")
            {
            }
            column(TTLNoPcsSlab_CommentLine; "Comment Line"."TTL No. Pcs/Slab")
            {
            }
            column(UpperGradeCount_CommentLine; "Comment Line"."Upper Grade Count")
            {
            }
            column(LowerGradeCount_CommentLine; "Comment Line"."Lower Grade Count")
            {
            }
            column(UniformityRatio_CommentLine; "Comment Line"."Uniformity Ratio")
            {
            }
            column(Dehydration_CommentLine; "Comment Line"."Dehydration%")
            {
            }
            column(Discolouration_CommentLine; "Comment Line"."Discolouration%")
            {
            }
            column(BlackSpot_CommentLine; "Comment Line"."Black Spot%")
            {
            }
            column(Broken_CommentLine; "Comment Line"."Broken%")
            {
            }
            column(LooseShells_CommentLine; "Comment Line"."Loose Shells%")
            {
            }
            column(LooseNeck_CommentLine; "Comment Line"."Loose Neck%")
            {
            }
            column(MixUp_CommentLine; "Comment Line"."Mix Up%")
            {
            }
            column(GeneralAppearance_CommentLine; "Comment Line"."General Appearance")
            {
            }
            column(ForeignMatter_CommentLine; "Comment Line"."Foreign Matter")
            {
            }
            column(Odour_CommentLine; "Comment Line".Odour)
            {
            }
            column(OverallRemark_CommentLine; "Comment Line"."Overall Remark")
            {
            }
            column(Comment_CommentLine; "Comment Line".Comment)
            {
            }
            dataitem(Item; Item)
            {
                column(Description_Item; Item.Description)
                {
                }
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
        Company_Info: Record "Company Information";
        Jobs: Record Job;
        item1: Record Item;
        JbBudLn: Record "Job Ledger Entry";
        Loc: Record Location;
        Grade: Code[20];
        GradeTxt: Text[30];
        "----": Integer;
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        Rex: Code[10];
        Batch: Code[20];
        SMSName: Text[30];
        Quality_Control_Organoleptic_ReportCaptionLbl: Label 'Quality Control Organoleptic Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Comment_Line_VesselCaptionLbl: Label 'VESSEL';
        Comment_Line__No__CaptionLbl: Label 'JOB';
        Comment_Line_VoyageCaptionLbl: Label 'VOYAGE';
        ETACaptionLbl: Label 'ETA';
        ETDCaptionLbl: Label 'ETD';
        BatchCaptionLbl: Label 'BATCH';
        Comment_Line_CaptainCaptionLbl: Label 'CAPTAIN';
        SMSNameCaptionLbl: Label 'SHRIMP MASTER';
        Comment_Line_Date_CaptionLbl: Label 'ANALYSIS DATE';
        Comment_Line__Count_Kg__Control32CaptionLbl: Label 'Count / Kg';
        ROUND__TTL_No__Pcs_Slab__1_______Control35CaptionLbl: Label '"TTL No. Pcs/Slab"';
        Unifor_mity_RatioCaptionLbl: Label 'Unifor mity Ratio';
        Dehyd_ration_CaptionLbl: Label 'Dehyd ration%';
        Discolour_ation_CaptionLbl: Label 'Discolour ation%';
        Soft_ShellsCaptionLbl: Label 'Soft Shells';
        General_Appear_anceCaptionLbl: Label 'General Appear ance';
        Comment_Line_Comment_Control1000000001CaptionLbl: Label 'Comments';
        GradeTxt_______Pack_Size_______Brand_Control11CaptionLbl: Label 'Description';
}

