      Async.Run<Boolean>(
        function: Boolean
        begin
          // This is the "background" anonymous method. Runs in the
          // background thread, and its result is passed
          // to the "success" callback.
          // In this case the result is a String.
          Result := True;
          System.TMonitor.Enter(JMonitor);
          try

          finally
            System.TMonitor.Exit(JMonitor);
          end;
        end,
        procedure(const aValue: Boolean)
        begin
          // This is the "success" callback. Runs in the UI thread and
          // gets the result of the "background" anonymous method.

        end,
        procedure(const Ex: exception)
        begin
          // This is the "error" callback.
          // Runs in the UI thread and is called only if the
          // "background" anonymous method raises an exception.
          JShowError(Ex.Message);
        end);

procedure TfrmPhoenixVCLReportPlanner.btnUpdateImageClick(Sender: TObject);
begin
  with dmVCLPhoenixPlannerController do
  begin
    qryReportPlanner.First;
    while not qryReportPlanner.Eof do
    begin
      qryReportPlanner.Edit;
      qryReportPlannerSTATO.AsInteger := qryReportPlannerSTATO.AsInteger;
      dmVCLPhoenixPlannerController.qryReportPlanner.Post;
      qryReportPlanner.Next;
    end;
  end;
end;