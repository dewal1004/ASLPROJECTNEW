codeunit 50021 "PageManagementSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Page Management", 'OnAfterGetPageID', '', true, true)]
    local procedure MyProcedure(RecordRef: RecordRef; var PageID: Integer)
    begin
        //find where GetWebUrl was used in the application, and refactor to pick the below funcion, by using GetWebUrl to return value from this function.
        VerifyPageAPIPublisher(RecordRef.Number, PageID);
    end;

    local procedure VerifyPageAPIPublisher(TableID: Integer; PageID: Integer): Boolean
    var
        PageMetadata: Record "Page Metadata";
    begin
        exit(PageMetadata.Get(PageID) and (PageMetadata.APIPublisher = Format(TableID)));
    end;
}

// CHANGES
//   {
//     { CodeModification  ;OriginalCode=BEGIN
//                                         exit(PageMetadata.Get(PageID) and (PageMetadata.SourceTable = TableID));
//                                       END;

//                          ModifiedCode=BEGIN
//                                         exit(PageMetadata.Get(PageID) and (PageMetadata.APIPublisher = Format(TableID)));
//                                       END;

//                          Target=VerifyPageID(PROCEDURE 11) }
//   }