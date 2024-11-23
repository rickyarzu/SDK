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


      if Result then
        try
          WhatsAppSentDLL(sGUID);
          qryPersonalPlannerEvents.Edit;
          qryPersonalPlannerEventsCOLORE.AsInteger := 7911679;
          qryPersonalPlannerEvents.Post;
          spInsertWhatsAppMsg.ParamByName('wanumber').Value := lWaNumber;
          spInsertWhatsAppMsg.ParamByName('wamessage').Value := FJanuaAdvTwilio.MessageBody;
          spInsertWhatsAppMsg.ParamByName('in_out').Value := 0;
          spInsertWhatsAppMsg.ParamByName('wa_id').Value := FJanuaAdvTwilio.MessageSid;
          if vStatino <> 0 then
            spInsertWhatsAppMsg.ParamByName('report_id').Value := vStatino;
          spInsertWhatsAppMsg.ExecProc;
        except
          on e: exception do
            raise exception.Create('Messaggio a ' + lDlg.edWAPhone.Text + ' non inviato causa Errore: ' +
              sLineBreak + e.Message);
        end;