codeunit 50005 "Item-Find Point"
{
    Permissions = TableData Item = rimd;
    TableNo = "Item Points";

    trigger OnRun()
    begin
        ItemPoints.Copy(Rec);
        ItemPoints.Reset();
        ItemPoints.SetCurrentKey(
          "Item No.", "Variant Code", "Responsibility Center", "Price Group Code",
          "Unit of Measure Code", "Currency Code", "Starting Date");
        ItemPoints.SetRange("Item No.", ItemPoints."Item No.");
        ItemPoints.SetFilter("Variant Code", '%1|%2', ItemPoints."Variant Code", '');
        ItemPoints.SetFilter("Responsibility Center", '%1|%2', ItemPoints."Responsibility Center", '');
        ItemPoints.SetFilter("Price Group Code", '%1|%2', ItemPoints."Price Group Code", '');
        ItemPoints.SetFilter("Currency Code", '%1|%2', ItemPoints."Currency Code", '');
        ItemPoints.SetFilter("Unit of Measure Code", '%1|%2', ItemPoints."Unit of Measure Code", '');

        ItemPoints.SetRange("Starting Date", 0D, ItemPoints."Starting Date");
        if not ItemPoints.Find('+') then begin
            Item.Get(ItemPoints."Item No.");
            ItemPoints."Price Group Code" := '';
            ItemPoints."Currency Code" := '';
            ItemPoints."Unit of Measure Code" := '';
            ItemPoints."Starting Date" := 0D;
            ItemPoints."Unit Price" := Item.Points;
            ItemPoints."Price Includes VAT" := Item."Price Includes VAT";
            ItemPoints."VAT Bus. Posting Gr. (Price)" := Item."VAT Bus. Posting Gr. (Price)";
            ItemPoints."Allow Quantity Disc." := true;
            ItemPoints."Allow Cust./Item Disc." := true;
            ItemPoints."Allow Invoice Disc." := Item."Allow Invoice Disc.";
        end;
        Rec := ItemPoints;
    end;

    var
        Item: Record Item;
        ItemPoints: Record "Item Points";
}
