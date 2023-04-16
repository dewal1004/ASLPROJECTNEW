codeunit 50009 "TestReportPrintSubscriber"
{ 
  EventSubscriberInstance = StaticAutomatic;

  var
    User: Record "User Setup";
  
  procedure PrintJobJnlLinefish(VAR NewJobJnlLine: Record "Job Journal Line")
  var
    JobJnlLine: Record "Job Journal Line";
    JobJnlTemplate: Record "Job Journal Template";
  begin
    JobJnlLine.Copy(NewJobJnlLine);
    JobJnlLine.SetRange("Journal Template Name",JobJnlLine."Journal Template Name");
    JobJnlLine.SetRange("Journal Batch Name",JobJnlLine."Journal Batch Name");
    JobJnlLine.SetRange("Job No.",JobJnlLine."Job No.");  //AAA Oct 2002
    JobJnlTemplate.Get(JobJnlLine."Journal Template Name");
    JobJnlTemplate.TestField("Test Report ID");
    if User.Get(UserId) then
    begin
      if User."Shortcut Dimension 1 Code"='MRKT' then
         REPORT.Run(50082,true,false,JobJnlLine)
       else
         REPORT.Run(50085,true,false,JobJnlLine);
    end;
  end;

}



