unit Janua.Phoenix.VCL.dmGCalendarController;

interface

uses
  // RTL
  System.SysUtils, System.Classes, System.Actions, System.Bindings.Helper, System.ImageList, System.UITypes,
  System.DateUtils, System.TypInfo, System.StrUtils, Windows, Winapi.ShellAPI, Spring, System.Math,
  // DB
  Data.DB, PostgreSQLUniProvider, UniProvider, InterBaseUniProvider, DBAccess, Uni, MemDS, VirtualTable,
  // VCL
  VCL.ActnList, VCL.ImgList, VCL.Controls, SVGIconImageListBase, SVGIconImageList, VCL.Dialogs,
  PictureContainer, VCL.Graphics, VCL.Forms,
  // Planner
  AdvPDFIO, AdvPlannerPDFIO, Planner, DBPlanner,
  // Cloud
  CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar, CloudBase, CloudBaseWin,
  CloudCustomLive, CloudLiveWin, CloudCustomLiveCalendar, CloudLiveCalendar, CloudCustomOutlook,
  CloudOutlookWin, CloudCustomOutlookCalendar, CloudOutlookCalendar, CloudWebDav, CloudvCal,
  PlanExGCalendar, PlanExLiveCalendar,
  // Inherited
  Janua.VCL.Planner.dmCustomController,
  // Januaproject
  Janua.Core.DataModule, JOrm.Cloud.GoogleCalendarEvents.Intf, JOrm.Cloud.GoogleCalendars.Intf,
  Janua.Bindings.Intf, Janua.Core.Types, JOrm.Planner.Timetable.Intf, Janua.Controls.Forms.Intf,
  Janua.VCL.Interposers, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Controls.Intf, Janua.Core.Classes,
  Janua.Components.Planner, Janua.Core.Commons, Janua.Cloud.Conf, Janua.Unidac.Connection, Janua.Cloud.Types;

type
  TdmPhoenixVCLGCalendarController = class(TdmVCLPlannerCustomController, IJanuaDataModule, IJanuaBindable)
    tabGoogleCalendars: TUniTable;
    tabGoogleCalendarsID: TStringField;
    tabGoogleCalendarsLOCATION: TStringField;
    tabGoogleCalendarsSUMMARY: TStringField;
    tabGoogleCalendarsTIMEZONE: TStringField;
    tabGoogleCalendarsCOLOR: TSmallintField;
    tabGoogleCalendarsBACK_COLOR: TIntegerField;
    tabGoogleCalendarsFORE_COLOR: TIntegerField;
    tabGoogleCalendarsISPRIMARY: TStringField;
    tabGoogleCalendarsALIAS: TStringField;
    tabGoogleCalendarsJGUID: TGuidField;
    tabGoogleEvents: TUniTable;
    tabGoogleEventsID: TStringField;
    tabGoogleEventsETAG: TStringField;
    tabGoogleEventsSUMMARY: TStringField;
    tabGoogleEventsDESCRIPTION: TWideMemoField;
    tabGoogleEventsSTARTTIME: TDateTimeField;
    tabGoogleEventsENDTIME: TDateTimeField;
    tabGoogleEventsCREATED: TDateTimeField;
    tabGoogleEventsUPDATED: TDateTimeField;
    tabGoogleEventsLOCATION: TStringField;
    tabGoogleEventsSTATUS: TSmallintField;
    tabGoogleEventsSENDNOTIFICATIONS: TStringField;
    tabGoogleEventsVISIBILITY: TIntegerField;
    tabGoogleEventsRECURRENCE: TStringField;
    tabGoogleEventsRECURRINGID: TStringField;
    tabGoogleEventsSEQUENCE: TIntegerField;
    tabGoogleEventsCOLOR: TSmallintField;
    tabGoogleEventsCALENDARID: TStringField;
    tabGoogleEventsATTENDEES: TWideMemoField;
    tabGoogleEventsREMINDERS: TWideMemoField;
    tabGoogleEventsUSEDEFAULTREMINDERS: TStringField;
    tabGoogleEventsISALLDAY: TStringField;
    tabGoogleEventsJGUID: TGuidField;
    tabGoogleCalendarsDESCRIPTION: TWideMemoField;
    tabGoogleEventsBACKGROUNDCOLOR: TIntegerField;
    tabGoogleEventsFOREGROUNDCOLOR: TIntegerField;
    qryGoogleEventsQueue: TUniQuery;
    qryGoogleEventsQueueID: TStringField;
    qryGoogleEventsQueueETAG: TStringField;
    qryGoogleEventsQueueSUMMARY: TStringField;
    qryGoogleEventsQueueDESCRIPTION: TBlobField;
    qryGoogleEventsQueueSTARTTIME: TDateTimeField;
    qryGoogleEventsQueueENDTIME: TDateTimeField;
    qryGoogleEventsQueueCREATED: TDateTimeField;
    qryGoogleEventsQueueUPDATED: TDateTimeField;
    qryGoogleEventsQueueLOCATION: TStringField;
    qryGoogleEventsQueueSTATUS: TSmallintField;
    qryGoogleEventsQueueVISIBILITY: TIntegerField;
    qryGoogleEventsQueueRECURRENCE: TStringField;
    qryGoogleEventsQueueRECURRINGID: TStringField;
    qryGoogleEventsQueueSEQUENCE: TIntegerField;
    qryGoogleEventsQueueCOLOR: TSmallintField;
    qryGoogleEventsQueueCALENDARID: TStringField;
    qryGoogleEventsQueueUSEDEFAULTREMINDERS: TStringField;
    qryGoogleEventsQueueSENDNOTIFICATIONS: TStringField;
    qryGoogleEventsQueueISALLDAY: TStringField;
    qryGoogleEventsQueueATTENDEES: TBlobField;
    qryGoogleEventsQueueREMINDERS: TBlobField;
    qryGoogleEventsQueueJGUID: TBytesField;
    qryGoogleEventsQueueBACKGROUNDCOLOR: TIntegerField;
    qryGoogleEventsQueueFOREGROUNDCOLOR: TIntegerField;
    qryGoogleEventsQueueSYNC: TStringField;
    qryPlannerEvents: TUniQuery;
    qryPlannerEventsCHIAVE: TIntegerField;
    qryPlannerEventsSTATINO: TIntegerField;
    qryPlannerEventsTECNICO: TIntegerField;
    qryPlannerEventsDALLE_ORE: TDateTimeField;
    qryPlannerEventsALLE_ORE: TDateTimeField;
    qryPlannerEventsSUBJECT: TStringField;
    qryPlannerEventsNOTE: TWideMemoField;
    qryPlannerEventsTECNICO_SIGLA: TStringField;
    qryPlannerEventsCOLORE: TIntegerField;
    qryPlannerEventsICONA: TSmallintField;
    qryPlannerEventsGOOGLE_JSON: TBlobField;
    qryPlannerEventsGFORECOLOR: TIntegerField;
    qryPlannerEventsGBACKCOLOR: TIntegerField;
    qryPlannerEventsCALENDARIO: TIntegerField;
    qryPlannerEventsGOOGLEID: TStringField;
    qryPlannerEventsJGUID: TGuidField;
    qryPlannerEventslkpMailTecnico: TStringField;
    qryUpdatePlannerEvents: TUniQuery;
    qryUpdatePlannerEventsCHIAVE: TIntegerField;
    qryUpdatePlannerEventsSTATINO: TIntegerField;
    qryUpdatePlannerEventsTECNICO: TIntegerField;
    qryUpdatePlannerEventsDALLE_ORE: TDateTimeField;
    qryUpdatePlannerEventsALLE_ORE: TDateTimeField;
    qryUpdatePlannerEventsNOTE: TWideMemoField;
    qryUpdatePlannerEventsSUBJECT: TStringField;
    qryUpdatePlannerEventsTECNICO_SIGLA: TStringField;
    qryUpdatePlannerEventsCOLORE: TIntegerField;
    qryUpdatePlannerEventsJGUID: TGuidField;
    qryUpdatePlannerEventsICONA: TSmallintField;
    qryUpdatePlannerEventsGOOGLE_JSON: TBlobField;
    qryUpdatePlannerEventsGFORECOLOR: TIntegerField;
    qryUpdatePlannerEventsGBACKCOLOR: TIntegerField;
    qryUpdatePlannerEventsCALENDARIO: TIntegerField;
    qryUpdatePlannerEventsGOOGLEID: TStringField;
    qryGoogleEvent: TUniQuery;
    qryGoogleEventID: TStringField;
    qryGoogleEventETAG: TStringField;
    qryGoogleEventSUMMARY: TStringField;
    qryGoogleEventDESCRIPTION: TBlobField;
    qryGoogleEventSTARTTIME: TDateTimeField;
    qryGoogleEventENDTIME: TDateTimeField;
    qryGoogleEventCREATED: TDateTimeField;
    qryGoogleEventUPDATED: TDateTimeField;
    qryGoogleEventLOCATION: TStringField;
    qryGoogleEventSTATUS: TSmallintField;
    qryGoogleEventVISIBILITY: TIntegerField;
    qryGoogleEventRECURRENCE: TStringField;
    qryGoogleEventRECURRINGID: TStringField;
    qryGoogleEventSEQUENCE: TIntegerField;
    qryGoogleEventCOLOR: TSmallintField;
    qryGoogleEventCALENDARID: TStringField;
    qryGoogleEventUSEDEFAULTREMINDERS: TStringField;
    qryGoogleEventSENDNOTIFICATIONS: TStringField;
    qryGoogleEventISALLDAY: TStringField;
    qryGoogleEventATTENDEES: TBlobField;
    qryGoogleEventREMINDERS: TBlobField;
    qryGoogleEventJGUID: TBytesField;
    qryGoogleEventBACKGROUNDCOLOR: TIntegerField;
    qryGoogleEventFOREGROUNDCOLOR: TIntegerField;
    qryGoogleEventSYNC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    bg: TColor;
    fg: TColor;
    Item: TGCalendarItem;
    procedure PhoenixUpdateGoogleCalendars;
  protected
    procedure FillGoogleCalendarItems; override;
    procedure InsertGoogleEventsQueue;
    procedure WriteGoogleEventsValues;
    procedure ReadGoogleEventsValues;
    procedure UpdateGoogleEventsQueue;

  public
    function AddNewGoogleItem(const aID: string): string;
    procedure FillGoogleCalendars; override;
    procedure PlannerGoogleSync;
    procedure AddNewGoogleItems;
    procedure UpdateGoogleCalendarItem(Const I: Integer); override;
  end;

var
  dmPhoenixVCLGCalendarController: TdmPhoenixVCLGCalendarController;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmPhoenixVCLGCalendarController }

function TdmPhoenixVCLGCalendarController.AddNewGoogleItem(const aID: string): string;
begin
  (*
    #### ETAG #####
    So if you make a event.get call and you get an event object back containing an etag back.
    The next time you make that call you again get an event object back containing an etag.
    If the etag is the same as the etag you had before then you know the data was not changed
    since the last time you checked it.
  *)
  qryGoogleEvent.Close;
  qryGoogleEvent.Params[0].AsString := aID;
  qryGoogleEvent.Open;

  Result := '';

  if qryGoogleEvent.RecordCount > 0 then
  begin

    Item := AdvGCalendar1.Items.Add;

    Item.Summary := qryGoogleEventSUMMARY.AsString;
    if qryGoogleEventDESCRIPTION.BlobSize > 0 then
    begin
      var
      aStream := TStringStream.Create;
      try
        qryGoogleEventDESCRIPTION.SaveToStream(aStream);
        Item.Description := aStream.DataString;
      finally
        aStream.Free;
      end;
    end;

    Item.Location := qryGoogleEventLOCATION.AsString;
    Item.Color := TGItemColor.icRed; // TGItemColor(qryGoogleEventCOLOR.AsInteger);

    if qryGoogleEventISALLDAY.AsString = 'T' then
    begin
      var
      StartDate := qryGoogleEventSTARTTIME.AsDateTime;
      Item.StartTime := EncodeDateTime(YearOf(StartDate), MonthOf(StartDate), DayOf(StartDate), 0, 0, 0, 0);
      var
      EndDate := qryGoogleEventENDTIME.AsDateTime;
      Item.EndTime := EncodeDateTime(YearOf(EndDate), MonthOf(EndDate), DayOf(EndDate), 0, 0, 0, 0);
      Item.IsAllDay := true;
    end
    else
    begin
      Item.StartTime := qryGoogleEventSTARTTIME.AsDateTime;
      Item.EndTime := qryGoogleEventENDTIME.AsDateTime;
      Item.IsAllDay := False;
    end;

    Item.Visibility := CloudCustomGCalendar.TVisibility.viDefault;
    Item.CalendarID := qryGoogleEventCALENDARID.AsString;

    AdvGCalendar1.Add(Item);
    Result := Item.ID;

    qryGoogleEvent.Edit;
    qryGoogleEventID.AsString := Item.ID;
    qryGoogleEventETAG.AsString := Item.ETag;
    qryGoogleEventCREATED.AsDateTime := Item.Created;
    qryGoogleEventUPDATED.AsDateTime := Item.Updated;
    qryGoogleEventSYNC.AsString := 'T';
    qryGoogleEvent.Post;
  end;

  { SELECT E.* FROM
    CALENDARIO_EVENTI E where uuid_to_char(JGUID) = :GUID }
end;

procedure TdmPhoenixVCLGCalendarController.AddNewGoogleItems;
begin
  qryGoogleEventsQueue.Open;
  while not qryGoogleEventsQueue.Eof do
  begin
    InsertGoogleEventsQueue;
    qryGoogleEventsQueue.Next;
  end;
end;

procedure TdmPhoenixVCLGCalendarController.DataModuleCreate(Sender: TObject);
begin
  inherited;
  // Fields.FieldByName('CAPTION')
  ItemCaptionField := nil;
  // InternalDeleteItem - Associo la procedura Interna Per Cancellare una Scheda:
  DeleteItemFunc := InternalDeleteItem;
  // property GoogleCalendarInsertProc: TProc
  { GoogleCalendarInsertProc := PhoenixInsertGoogleCalendars; }

  dsCalendars.Enabled := False;
  dsGCalendar.Enabled := False;
  dsCalendarEvents.Enabled := False;
  dsGoogleEvents.Enabled := False;
  dslkpGCalendar.Enabled := False;

end;

procedure TdmPhoenixVCLGCalendarController.FillGoogleCalendarItems;
var
  I: Integer;
  rem: string;
begin
  Screen.Cursor := crHourGlass;

  if Assigned(Fgcal) then
  begin
    AdvGCalendar1.GetCalendar(Fgcal.ID, GCalStartDate, GCalEndDate);

    for I := 0 to AdvGCalendar1.Items.Count - 1 do
    begin
      if not tabGoogleEvents.Locate('ID', AdvGCalendar1.Items[I].ID, []) then
      begin
        tabGoogleEvents.Append;
        // edID.Text := gcal.ID;    edEtag.Text := gcal.
        tabGoogleEventsID.AsString := AdvGCalendar1.Items[I].ID;
        var
        lGUID := TGUID.Empty;
        CreateGUID(lGUID);
        tabGoogleEventsJGUID.AsGUID := lGUID;
        UpdateGoogleCalendarItem(I);
        tabGoogleEvents.Post;
{$IFDEF DEBUG}
        var
        vTest := tabGoogleEventsCOLOR.AsInteger;
{$ENDIF}
      end
      else
      begin
        var
          { bTest := False; }
        bTest := (tabGoogleEventsSTARTTIME.AsDateTime <> AdvGCalendar1.Items[I].StartTime) or
          (tabGoogleEventsENDTIME.AsDateTime <> AdvGCalendar1.Items[I].EndTime) or
          (tabGoogleEventsSUMMARY.AsString <> AdvGCalendar1.Items[I].Summary) or
          (tabGoogleEventsLOCATION.AsString <> AdvGCalendar1.Items[I].Location) or
          (tabGoogleEventsCALENDARID.AsString <> AdvGCalendar1.Items[I].CalendarID);
        if bTest then
        begin
          tabGoogleEvents.Edit;
          UpdateGoogleCalendarItem(I);
          tabGoogleEvents.Post;
        end;
      end;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TdmPhoenixVCLGCalendarController.FillGoogleCalendars;
var
  I, J, K: Integer;
  isPrimary: string;

  procedure CheckColors;
  begin
    for var I := 0 to AdvGCalendar1.CalendarColors.Count - 1 do
    begin
      if Ord(Fgcal.Color) = AdvGCalendar1.CalendarColors[I].ID then
      begin
        bg := AdvGCalendar1.CalendarColors[I].BackgroundColor;
        fg := AdvGCalendar1.CalendarColors[I].ForegroundColor;
      end;
    end;

    if Fgcal.BackgroundColor <> clNone then
      bg := Fgcal.BackgroundColor;
    if Fgcal.ForegroundColor <> clNone then
      fg := Fgcal.ForegroundColor;
  end;

  procedure EditCalendar;
  begin
    tabGoogleCalendarsID.Value := Fgcal.ID;
    if Fgcal.Description <> '' then
      tabGoogleCalendarsDESCRIPTION.AsString := Fgcal.Description;
    tabGoogleCalendarsLOCATION.AsString := Fgcal.Location;
    tabGoogleCalendarsSUMMARY.AsString := Fgcal.Summary;
    tabGoogleCalendarsISPRIMARY.AsString := IfThen(Fgcal.Primary, 'T', 'F');
    tabGoogleCalendarsTIMEZONE.AsString := Fgcal.TimeZone;
    tabGoogleCalendarsCOLOR.Value := Ord(Fgcal.Color);
    tabGoogleCalendarsFORE_COLOR.Value := fg;
    tabGoogleCalendarsBACK_COLOR.Value := bg;
    if tabGoogleCalendarsJGUID.Value = '' then
      tabGoogleCalendarsJGUID.Value := TGUID.NewGuid.ToString;
  end;

begin
  PlannerGoogleSync;
  if Assigned(AdvGCalendar1) then
  begin
    // Set custom Calendar as Google Calendar API
    CloudCalendar := ccGoogle;
    // Asks GCalendar to update Calendar List
    AdvGCalendar1.GetCalendars();
    // During Update DBDaySourceGCalendar must be Inactive
    DBDaySourceGCalendar.Active := False;
    // Day Source is 'today'
    DBDaySourceGCalendar.Day := Date;

    // Google CalendarList is a StringList not used 'for server updating'
    { FGoogleCalendarList.Clear; }
    I := 0;
    J := AdvGCalendar1.Calendars.Count - 1;
    K := tabGoogleCalendars.RecordCount;
    if J >= 0 then
    begin
      for I := 0 to J do
      begin
        Fgcal := AdvGCalendar1.Calendars[I];
        if Fgcal.Primary then
          isPrimary := ' (Primary)'
        else
          isPrimary := '';

        CheckColors;

        if not tabGoogleCalendars.Locate('ID', Fgcal.ID, []) then
        begin
          tabGoogleCalendars.Append;
          EditCalendar;
          tabGoogleCalendars.Post;
        end
        else if (tabGoogleCalendarsSUMMARY.AsString <> Fgcal.Summary) or
          (tabGoogleCalendarsFORE_COLOR.Value <> fg) or (tabGoogleCalendarsBACK_COLOR.Value <> bg) then
        begin
          tabGoogleCalendars.Edit;
          EditCalendar;
          tabGoogleCalendars.Post;
        end;

        FillGoogleCalendarItems;
      end;
    end;
  end;
end;

procedure TdmPhoenixVCLGCalendarController.InsertGoogleEventsQueue;
begin
  (*
    #### ETAG #####
    So if you make a event.get call and you get an event object back containing an etag back.
    The next time you make that call you again get an event object back containing an etag.
    If the etag is the same as the etag you had before then you know the data was not changed
    since the last time you checked it.
  *)

  Item := AdvGCalendar1.Items.Add;
  WriteGoogleEventsValues;
  AdvGCalendar1.Add(Item);

  qryGoogleEventsQueue.Edit;
  qryGoogleEventsQueueID.AsString := Item.ID;
  qryGoogleEventsQueueETAG.AsString := Item.ETag;
  qryGoogleEventsQueueCREATED.AsDateTime := Item.Created;
  qryGoogleEventsQueueUPDATED.AsDateTime := Item.Updated;
  qryGoogleEventsQueueSYNC.AsString := 'T';
  qryGoogleEventsQueue.Post;

  { SELECT E.* FROM
    CALENDARIO_EVENTI E where uuid_to_char(JGUID) = :GUID }

end;

procedure TdmPhoenixVCLGCalendarController.PhoenixUpdateGoogleCalendars;
begin
  if (tabGoogleEventsID.AsString = vtGoogleEventsID.AsString) or
    tabGoogleEvents.Locate('ID', vtGoogleEventsID.AsString, []) then
  begin
    if (tabGoogleEventsCALENDARID.Value <> vtGoogleEventsCALENDARID.Value) or
      (tabGoogleEventsSUMMARY.Value <> vtGoogleEventsSUMMARY.Value) or
      (tabGoogleEventsSTARTTIME.Value <> vtGoogleEventsSTARTTIME.Value) or
      (tabGoogleEventsENDTIME.Value <> vtGoogleEventsENDTIME.Value) then
    begin
      tabGoogleEvents.Edit;
      tabGoogleEventsCALENDARID.Value := vtGoogleEventsCALENDARID.Value;
      tabGoogleEventsETAG.Value := vtGoogleEventsETAG.Value;
      tabGoogleEventsSUMMARY.Value := vtGoogleEventsSUMMARY.Value;
      tabGoogleEventsDESCRIPTION.Value := vtGoogleEventsDESCRIPTION.Value;
      tabGoogleEventsSTARTTIME.Value := vtGoogleEventsSTARTTIME.Value;
      tabGoogleEventsENDTIME.Value := vtGoogleEventsENDTIME.Value;
      tabGoogleEventsCREATED.Value := vtGoogleEventsCREATED.Value;
      tabGoogleEventsUPDATED.Value := vtGoogleEventsUPDATED.Value;
      tabGoogleEventsISALLDAY.Value := IfThen(vtGoogleEventsISALLDAY.AsBoolean, 'T', 'F');
      tabGoogleEventsLOCATION.Value := vtGoogleEventsLOCATION.Value;
      tabGoogleEventsSTATUS.Value := vtGoogleEventsSTATUS.Value;
      tabGoogleEventsVISIBILITY.Value := vtGoogleEventsVISIBILITY.Value;
      tabGoogleEventsRECURRENCE.Value := vtGoogleEventsRECURRENCE.Value;
      tabGoogleEventsRECURRINGID.Value := vtGoogleEventsRECURRINGID.Value;
      tabGoogleEventsSEQUENCE.Value := vtGoogleEventsSEQUENCE.Value;
      tabGoogleEventsCOLOR.Value := vtGoogleEventsCOLOR.Value;
      tabGoogleEventsUSEDEFAULTREMINDERS.Value := IfThen(vtGoogleEventsUSEDEFAULTREMINDERS.AsBoolean,
        'T', 'F');
      tabGoogleEventsSENDNOTIFICATIONS.Value := IfThen(vtGoogleEventsSENDNOTIFICATIONS.AsBoolean, 'T', 'F');
      tabGoogleEventsCALENDARID.Value := vtGoogleEventsCALENDARID.Value;
      tabGoogleEventsATTENDEES.Value := vtGoogleEventsAttendees.Value;
      tabGoogleEventsREMINDERS.Value := vtGoogleEventsREMINDERS.Value;
      if not vtGoogleEventsJGUID.IsNull then
        tabGoogleEventsJGUID.Value := vtGoogleEventsJGUID.Value;
      tabGoogleEvents.Post;
    end;
  end;
end;

procedure TdmPhoenixVCLGCalendarController.PlannerGoogleSync;
begin
  JanuaUniConnection1.Connected := true;

  tabGoogleCalendars.Open;
  tabGoogleCalendars.Last;
  tabGoogleCalendars.First;

  tabGoogleEvents.Open;
  tabGoogleEvents.Last;
  tabGoogleEvents.First;

end;

procedure TdmPhoenixVCLGCalendarController.ReadGoogleEventsValues;
begin

end;

procedure TdmPhoenixVCLGCalendarController.UpdateGoogleCalendarItem(const I: Integer);
begin
  tabGoogleEventsETAG.AsString := AdvGCalendar1.Items[I].ETag;
  tabGoogleEventsCOLOR.Value := Ord(CurrentGCalendar.Color);
  tabGoogleEventsBACKGROUNDCOLOR.AsInteger := bg;
  tabGoogleEventsFOREGROUNDCOLOR.AsInteger := fg;
  tabGoogleEventsCALENDARID.AsString := AdvGCalendar1.Items[I].CalendarID;
  tabGoogleEventsSTARTTIME.AsDateTime := AdvGCalendar1.Items[I].StartTime;
  tabGoogleEventsENDTIME.AsDateTime := AdvGCalendar1.Items[I].EndTime;
  tabGoogleEventsSUMMARY.AsString := AdvGCalendar1.Items[I].Summary;
  tabGoogleEventsDESCRIPTION.AsString := AdvGCalendar1.Items[I].Description;
  tabGoogleEventsCREATED.AsDateTime := AdvGCalendar1.Items[I].Created;
  tabGoogleEventsUPDATED.AsDateTime := AdvGCalendar1.Items[I].Updated;
  tabGoogleEventsISALLDAY.AsBoolean := AdvGCalendar1.Items[I].IsAllDay;
  // IfThen(AdvGCalendar1.Items[i].IsAllDay , 'T', 'F');
  tabGoogleEventsLOCATION.AsString := AdvGCalendar1.Items[I].Location;
  tabGoogleEventsSTATUS.AsInteger := Ord(AdvGCalendar1.Items[I].Status);
  tabGoogleEventsVISIBILITY.AsInteger := Ord(AdvGCalendar1.Items[I].Visibility);
  tabGoogleEventsRECURRENCE.AsString := AdvGCalendar1.Items[I].Recurrence;
  { TODO : Gestire gli Attendees in base all'Item Selezionato AdvGCalendar1.Items[i].Attendees; }
  tabGoogleEventsATTENDEES.AsString := '';
  { TODO : Gestire i Reminders in base all'Item Selezionato AdvGCalendar1.Items[i].Reminders; }
  tabGoogleEventsREMINDERS.AsString := '';
end;

procedure TdmPhoenixVCLGCalendarController.UpdateGoogleEventsQueue;
begin

end;

procedure TdmPhoenixVCLGCalendarController.WriteGoogleEventsValues;
begin
  Item.Summary := qryGoogleEventsQueueSUMMARY.AsString;
  if qryGoogleEventsQueueDESCRIPTION.BlobSize > 0 then
  begin
    var
    aStream := TStringStream.Create;
    try
      qryGoogleEventsQueueDESCRIPTION.SaveToStream(aStream);
      Item.Description := aStream.DataString;
    finally
      aStream.Free;
    end;
  end;

  Item.Location := qryGoogleEventsQueueLOCATION.AsString;
  Item.Color := TGItemColor.icRed; // TGItemColor(qryGoogleEventsQueueCOLOR.AsInteger);

  if qryGoogleEventsQueueISALLDAY.AsString = 'T' then
  begin
    var
    StartDate := qryGoogleEventsQueueSTARTTIME.AsDateTime;
    Item.StartTime := EncodeDateTime(YearOf(StartDate), MonthOf(StartDate), DayOf(StartDate), 0, 0, 0, 0);
    var
    EndDate := qryGoogleEventsQueueENDTIME.AsDateTime;
    Item.EndTime := EncodeDateTime(YearOf(EndDate), MonthOf(EndDate), DayOf(EndDate), 0, 0, 0, 0);
    Item.IsAllDay := true;
  end
  else
  begin
    Item.StartTime := qryGoogleEventsQueueSTARTTIME.AsDateTime;
    Item.EndTime := qryGoogleEventsQueueENDTIME.AsDateTime;
    Item.IsAllDay := False;
  end;

  Item.Visibility := CloudCustomGCalendar.TVisibility.viDefault;
  Item.CalendarID := qryGoogleEventsQueueCALENDARID.AsString;

end;

end.
