      Async.Run<Boolean>(
        function: Boolean
        begin
        end,
        procedure(const aValue: Boolean)
        begin
          // This is the "success" callback. Runs in the UI thread and
          // gets the result of the "background" anonymous method.
          vtGoogleEventsSearch.First;
          dsGCalendar.Enabled := True;
          dsGoogleEvents.Enabled := True;
          dslkpGCalendar.Enabled := True;
        end,
        procedure(const Ex: Exception)
        begin
          // This is the "error" callback.
          // Runs in the UI thread and is called only if the
          // "background" anonymous method raises an exception.
          JShowError(Ex.Message);
        end);	
		
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
            Stopwatch := TStopwatch.StartNew;

            Elapsed := Stopwatch.Elapsed;
            Seconds := Elapsed.TotalSeconds;
          finally
            System.TMonitor.Exit(JMonitor);
          end;
        end,
        procedure(const aValue: Boolean)
        begin
          // This is the "success" callback. Runs in the UI thread and
          // gets the result of the "background" anonymous method.

        end,
        nil);
    end);
	
      FCookies.JsonDeserialize(aLines.Text);
'C:\Users\Ergomercator\AppData\Roaming\januaproject\desktop.phoenix_asso.com\conf\desktop.phoenix_asso.com.cookies.json'