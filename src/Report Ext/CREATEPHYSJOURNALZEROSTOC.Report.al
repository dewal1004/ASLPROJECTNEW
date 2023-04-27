report 50902 "CREATE PHYS. JOURNAL ZERO STOC"
{
    // CVXV
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportrdlc/CREATEPHYSJOURNALZEROSTOC.rdlc';
    UsageCategory = Administration;
    ApplicationArea = All, basic, suite;

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.";
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
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(ItemCaption; ItemCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item__No__Caption; FieldCaption("No."))
            {
            }
            column(Item_DescriptionCaption; FieldCaption(Description))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item.CalcFields(Item.Inventory);
                if Inventory = 0 then begin
                    jourrec."Journal Template Name" := 'PHYS. INVE';
                    jourrec."Journal Batch Name" := 'DEFAULT';
                    jourrec."Line No." := jourrec."Line No." + 100;
                    jourrec."Posting Date" := Today;
                    jourrec."Entry Type" := 2;
                    jourrec."Document No." := '123';
                    jourrec.Validate("Item No.", Item."No.");
                    jourrec.Insert;
                end;
            end;

            trigger OnPreDataItem()
            begin
                jourrec1.SetRange(jourrec1."Journal Template Name", 'PHYS. INVE');
                jourrec1.SetRange(jourrec1."Journal Batch Name", 'DEFAULT');
                jourrec1.Find('+');
                jourrec."Line No." := jourrec1."Line No.";
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
        jourrec: Record "Item Journal Line";
        jourrec1: Record "Item Journal Line";
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

