report 60008 "Create Vendor Acct. for Staff"
{
    ProcessingOnly = true;
    ShowPrintStatus = false;
    UseRequestPage = false;
    Caption = 'Create Vendor Acct. for Staff';
    dataset
    {
        dataitem(Employee; Employee)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Region Code", "Global Dimension 1 Code", Class;

            trigger OnAfterGetRecord()
            begin
                Vendors.Init();
                Vendors.Name := Employee.FullName();
                Vendors."Search Name" := Employee."First Name";
                Vendors.Address := Employee.Address;
                Vendors."Address 2" := Employee."Address 2";
                Vendors.City := Employee.City;
                Vendors."Phone No." := Employee."Phone No.";
                Vendors."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
                Vendors."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
                Vendors."Last Date Modified" := Today;
                Vendors."Fax No." := Employee."Fax No.";
                //Vendors.Picture := Employee.Picture;
                Vendors.County := Employee."Country/Region Code";
                Vendors."E-Mail" := Employee."E-Mail";
                Vendors.Validate(Vendors."Gen. Bus. Posting Group", 'LOCAL');
                Vendors."Vendor Posting Group" := 'LOCAL';
                Vendors."No." := Employee."No.";
                Vendors.Insert();

                Employee.
                "Acct. type" := Employee."Acct. type"::Supplier;
                Employee."Acct. No" := "No.";
                Employee.Modify();

                VendCount := VendCount + 1;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("No.");
                VendCount := 0;
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
        Vendors: Record Vendor;
        VendCount: Integer;
}
