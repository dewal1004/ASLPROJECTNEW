codeunit 50005 "Item-Find Point"
{
    Permissions = TableData Item = rimd;
    TableNo = "Item Points";

    trigger OnRun()
    begin
        ItemPoints.Copy(Rec);
        with ItemPoints do begin
            Reset;
            SetCurrentKey(
              "Item No.", "Variant Code", "Responsibility Center", "Price Group Code",
              "Unit of Measure Code", "Currency Code", "Starting Date");
            SetRange("Item No.", "Item No.");
            SetFilter("Variant Code", '%1|%2', "Variant Code", '');
            SetFilter("Responsibility Center", '%1|%2', "Responsibility Center", '');
            SetFilter("Price Group Code", '%1|%2', "Price Group Code", '');
            SetFilter("Currency Code", '%1|%2', "Currency Code", '');
            SetFilter("Unit of Measure Code", '%1|%2', "Unit of Measure Code", '');

            SetRange("Starting Date", 0D, "Starting Date");
            if not Find('+') then begin
                Item.Get("Item No.");
                "Price Group Code" := '';
                "Currency Code" := '';
                "Unit of Measure Code" := '';
                "Starting Date" := 0D;
                "Unit Price" := Item.Points;
                "Price Includes VAT" := Item."Price Includes VAT";
                "VAT Bus. Posting Gr. (Price)" := Item."VAT Bus. Posting Gr. (Price)";
                "Allow Quantity Disc." := true;
                "Allow Cust./Item Disc." := true;
                "Allow Invoice Disc." := Item."Allow Invoice Disc.";
            end;
        end;
        Rec := ItemPoints;
    end;

    var
        Item: Record Item;
        ItemPoints: Record "Item Points";
}

