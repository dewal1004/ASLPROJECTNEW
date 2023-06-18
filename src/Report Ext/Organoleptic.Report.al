report 50148 "Organoleptic"
{
    //
    // "Comment Line"."Loose Shells%"
    // "Comment Line"."Loose Neck%"
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/Organoleptic.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All, Basic, Suite;
    Caption = 'Organoleptic';
    dataset
    {
        dataitem("Comment Line"; "Comment Line")
        {
            DataItemTableView = SORTING("Table Name", "No.", "Line No.") WHERE("Table Name" = CONST(Job));
            RequestFilterFields = "No.", Vessel, Voyage, Captain, "Date Code", "Frozen Weight W/O I/C", "Drained Weight (KGS)", "Count/Kg", "TTL No. Pcs/Slab", "Upper Grade Count", "Lower Grade Count", "Uniformity Ratio", "Dehydration%", "Discolouration%", "Black Spot%", "Broken%", "Mech Damage%", "Foreign Matter", Odour;
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
            column(PackSize; "Comment Line"."Pack Size")
            {
            }
            column(Brand; "Comment Line".Brand)
            {
            }
            column(Grade; GradeTxt)
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
            column(DateCode; "Comment Line"."Date Code")
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            dataitem(Item; Item)
            {
                DataItemLink = "No." = FIELD("No.");
                DataItemTableView = SORTING("No.");
                RequestFilterFields = "No.";
                column(Description_Item; Item.Description)
                {
                }
                dataitem("Company Information"; "Company Information")
                {
                    column(Name; Company_Info.Name)
                    {
                    }
                }
            }

            trigger OnAfterGetRecord()
            begin

                if Loc.Get(Vessel) then;
                if Jobs.Get("No.") then;
                //ETA := Jobs."Ending Date";
                //ETD := Jobs."Starting Date";

                Batch := Loc.ExpCode + CopyStr(Voyage, StrLen(Voyage) - 1) + CopyStr(Format(Date2DMY("Date Code", 3)), 3);

                JbBudLn.SetRange(JbBudLn."Job No.", "No.");
                JbBudLn.SetRange(JbBudLn.Type, 0);
                JbBudLn.SetRange(JbBudLn."Resource Group", 'SMAS');
                if JbBudLn.Find('+') then
                    SMSName := UpperCase(JbBudLn.Description);

                GradeTxt := '';
                if Item.Get(Grade) then
                    GradeTxt := Item.Description
                else
                    GradeTxt := Grade;
                CurrReport.ShowOutput((StrLen(Comment) >= 70));
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
        Company_Info: Record "Company Information";
        Jobs: Record Job;
        JbBudLn: Record "Job Ledger Entry";
        Loc: Record Location;
        GradeTxt: Text[30];
        Batch: Code[20];
        SMSName: Text[30];
}
