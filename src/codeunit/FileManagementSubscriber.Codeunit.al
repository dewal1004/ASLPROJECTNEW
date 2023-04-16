codeunit 50016 "FileManagementSubscriber"
{
  EventSubscriberInstance = StaticAutomatic;

  [EventSubscriber(ObjectType::Codeunit, Codeunit::"File Management", 'OnBeforeDownloadHandler', '', true, true)]
  local procedure MyProcedure()
  var
  
  begin
    
  end;
  
}


// OBJECT Modification "File Management"(Codeunit 419)
// {
//   OBJECT-PROPERTIES
//   PROPERTIES
//   {
//     Target="File Management"(Codeunit 419);
//   }
//   CHANGES
//   {
//     { Insertion         ;Target=CreateZipArchiveObject(PROCEDURE 36);
//                          ChangedElements=VariableCollection
//                          {
//                            Zipfile@1000 : DotNet "'System.IO.Compression.FileSystem, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.IO.Compression.ZipFile";
//                            ZipAchiveMode@1001 : DotNet "'System.IO.Compression, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.IO.Compression.ZipArchiveMode";
//                          }
//                           }
//     { CodeModification  ;OriginalCode=BEGIN
//                                         FilePath := ServerTempFileName('zip');
//                                         OpenZipFile(FilePath);
//                                       END;

//                          ModifiedCode=BEGIN
//                                         FilePath := ServerTempFileName('zip');
//                                         ZipArchive := Zipfile.Open(FilePath,ZipAchiveMode.Create);
//                                       END;

//                          Target=CreateZipArchiveObject(PROCEDURE 36) }
//   }
//   CODE
//   {

//     BEGIN
//     END.
//   }
// }

