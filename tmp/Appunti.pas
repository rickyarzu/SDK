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
	
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
	
		

			   
            
            
            // Subject
            := lTitle; // vtReportPlannerDESCRIZIONE_SCHEDA.AsString;
	
			
			
			
          if (qryTecniciCalendarRESPONSABILE.AsInteger = TechID) or qryTecniciCalendar.Locate('RESPONSABILE',
            TechID, []) then
          begin
            // Google Calendar Table
            // SELECT * FROM   GOOGLE_CALENDAR_EVENTS WHERE sync = 'F' and etag = '""';
            tabGoogleEvents.Append;
            tabGoogleEventsID.AsString := qryPersonalPlannerEventsJGUID.AsString;
            tabGoogleEventsETAG.AsString := '""';
            tabGoogleEventsSUMMARY.AsString := qryPersonalPlannerEventsSUBJECT.AsString;
            tabGoogleEventsDESCRIPTION.Text := lDlg.edNote.Text;
            tabGoogleEventsCALENDARID.AsString := qryTecniciCalendarGOOGLEID.AsString;
            tabGoogleEventsSTARTTIME.AsDateTime := qryPersonalPlannerEventsDALLE_ORE.AsDateTime;
            tabGoogleEventsENDTIME.AsDateTime := qryPersonalPlannerEventsALLE_ORE.AsDateTime;
            tabGoogleEventsLOCATION.AsString := qryReportPlannercalcIndirizzo.AsString;
            tabGoogleEventsCOLOR.AsInteger := 0;
            tabGoogleEventsISALLDAY.AsString := 'F';
            tabGoogleEventsRECURRENCE.AsString := 'F';
            tabGoogleEventsSYNC.AsString := 'F';
            tabGoogleEventsBACKGROUNDCOLOR.AsInteger := 22;
            tabGoogleEventsFOREGROUNDCOLOR.AsInteger := 0;
            tabGoogleEventsJGUID.AsString := qryPersonalPlannerEventsJGUID.AsString;
            tabGoogleEvents.Post;
            var
            lEventID := StringReplace(tabGoogleEventsJGUID.AsString, '{', '', []);
            lEventID := StringReplace(lEventID, '}', '', []);
            lEventID := CreateGoogleEventDLL(lEventID);

            tabGoogleEvents.close;
            tabGoogleEvents.Open;
            if tabGoogleEvents.Locate('ID', lEventID, []) then
            begin
              Result.LoadFromDataset(tabGoogleEvents);
              vtGoogleEventsSearch.Append;
              Result.SaveToDataset(vtGoogleEventsSearch);
            end
            else
              Result.Clear;

            if lEventID <> '' then
            begin
              qryPersonalPlannerEvents.Edit;
              qryPersonalPlannerEventsGOOGLEID.AsString := lEventID;
              qryPersonalPlannerEvents.Post;
              qryReportPlanner.Edit;
              qryReportPlannerGCAL.AsString := 'G';
              qryReportPlanner.Post;
            end;

          end;
        end;
