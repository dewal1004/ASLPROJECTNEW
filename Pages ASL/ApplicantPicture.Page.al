page 50024 "Applicant Picture"
{
    PageType = Card;
    SourceTable = Applicants;

    layout
    {
        area(content)
        {
            field(Picture; Picture)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Picture")
            {
                Caption = '&Picture';
                action(Import)
                {
                    Caption = 'Import';
                    Ellipsis = true;

                   /* trigger OnAction()
                    begin
                        PictureExists := Picture.HasValue;
                        if Picture.Import('*.bmp', true) = '' then
                            exit;
                        if PictureExists then
                            if not Confirm('Do you want to replace the existing picture of %1 %2?', false, TableName, "No.") then
                                exit;
                        CurrPage.SaveRecord;
                    end; */
                }
                action("E&xport")
                {
                    Caption = 'E&xport';
                    Ellipsis = true;

                  /*  trigger OnAction()
                    begin
                        if Picture.HasValue then
                         Picture.Export('*.bmp', true);
                    end;
                    */
                }
                action(Delete)
                {
                    Caption = 'Delete';

                    trigger OnAction()
                    begin
                        if Picture.HasValue then
                            if Confirm('Do you want to delete the picture of %1 %2?', false, TableName, "No.") then begin
                                Clear(Picture);
                                CurrPage.SaveRecord;
                            end;
                    end;
                }
            }
        }
    }

    var
        PictureExists: Boolean;
}

