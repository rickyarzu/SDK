unit JOrm.Cloud.GoogleCalendarEvents.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Phoenix.GoogleCalendarEvents.Custom.Intf;

//------------------------------------------ Impl Record interface ----------------------------------

type
  TCustomGoogleCalendarEvent = class(TJanuaRecord, ICustomGoogleCalendarEvent)
  private
    FId: IJanuaField;
    FEtag: IJanuaField;
    FSummary: IJanuaField;
    FDescription: IJanuaField;
    FStarttime: IJanuaField;
    FEndtime: IJanuaField;
    FCreated: IJanuaField;
    FUpdated: IJanuaField;
    FIsallday: IJanuaField;
    FLocation: IJanuaField;
    FStatus: IJanuaField;
    FVisibility: IJanuaField;
    FRecurrence: IJanuaField;
    FRecurringid: IJanuaField;
    FSequence: IJanuaField;
    FColor: IJanuaField;
    FUsedefaultreminders: IJanuaField;
    FSendnotifications: IJanuaField;
    FCalendarid: IJanuaField;
  protected
    function GetId: IJanuaField;
    function GetEtag: IJanuaField;
    function GetSummary: IJanuaField;
    function GetDescription: IJanuaField;
    function GetStarttime: IJanuaField;
    function GetEndtime: IJanuaField;
    function GetCreated: IJanuaField;
    function GetUpdated: IJanuaField;
    function GetIsallday: IJanuaField;
    function GetLocation: IJanuaField;
    function GetStatus: IJanuaField;
    function GetVisibility: IJanuaField;
    function GetRecurrence: IJanuaField;
    function GetRecurringid: IJanuaField;
    function GetSequence: IJanuaField;
    function GetColor: IJanuaField;
    function GetUsedefaultreminders: IJanuaField;
    function GetSendnotifications: IJanuaField;
    function GetCalendarid: IJanuaField;
  public
    constructor Create; override;
    property Id: IJanuaField read GetId;
    property Etag: IJanuaField read GetEtag;
    property Summary: IJanuaField read GetSummary;
    property Description: IJanuaField read GetDescription;
    property Starttime: IJanuaField read GetStarttime;
    property Endtime: IJanuaField read GetEndtime;
    property Created: IJanuaField read GetCreated;
    property Updated: IJanuaField read GetUpdated;
    property Isallday: IJanuaField read GetIsallday;
    property Location: IJanuaField read GetLocation;
    property Status: IJanuaField read GetStatus;
    property Visibility: IJanuaField read GetVisibility;
    property Recurrence: IJanuaField read GetRecurrence;
    property Recurringid: IJanuaField read GetRecurringid;
    property Sequence: IJanuaField read GetSequence;
    property Color: IJanuaField read GetColor;
    property Usedefaultreminders: IJanuaField read GetUsedefaultreminders;
    property Sendnotifications: IJanuaField read GetSendnotifications;
    property Calendarid: IJanuaField read GetCalendarid;

  end;

  TCustomGoogleCalendarEvents = class(TJanuaRecordSet, IJanuaRecordSet, ICustomGoogleCalendarEvents)
  private
    function GetId: IJanuaField;
    function GetEtag: IJanuaField;
    function GetSummary: IJanuaField;
    function GetDescription: IJanuaField;
    function GetStarttime: IJanuaField;
    function GetEndtime: IJanuaField;
    function GetCreated: IJanuaField;
    function GetUpdated: IJanuaField;
    function GetIsallday: IJanuaField;
    function GetLocation: IJanuaField;
    function GetStatus: IJanuaField;
    function GetVisibility: IJanuaField;
    function GetRecurrence: IJanuaField;
    function GetRecurringid: IJanuaField;
    function GetSequence: IJanuaField;
    function GetColor: IJanuaField;
    function GetUsedefaultreminders: IJanuaField;
    function GetSendnotifications: IJanuaField;
    function GetCalendarid: IJanuaField;
  protected
    function GetCustomGoogleCalendarEvent: ICustomGoogleCalendarEvent;
    property CustomGoogleCalendarEvent: ICustomGoogleCalendarEvent read GetCustomGoogleCalendarEvent;
  public
    constructor Create; override;
    property Id: IJanuaField read GetId;
    property Etag: IJanuaField read GetEtag;
    property Summary: IJanuaField read GetSummary;
    property Description: IJanuaField read GetDescription;
    property Starttime: IJanuaField read GetStarttime;
    property Endtime: IJanuaField read GetEndtime;
    property Created: IJanuaField read GetCreated;
    property Updated: IJanuaField read GetUpdated;
    property Isallday: IJanuaField read GetIsallday;
    property Location: IJanuaField read GetLocation;
    property Status: IJanuaField read GetStatus;
    property Visibility: IJanuaField read GetVisibility;
    property Recurrence: IJanuaField read GetRecurrence;
    property Recurringid: IJanuaField read GetRecurringid;
    property Sequence: IJanuaField read GetSequence;
    property Color: IJanuaField read GetColor;
    property Usedefaultreminders: IJanuaField read GetUsedefaultreminders;
    property Sendnotifications: IJanuaField read GetSendnotifications;
    property Calendarid: IJanuaField read GetCalendarid;
  end;


implementation

//------------------------------------------ Impl TGoogleCalendarEvent -------------------------------

{TCustomGoogleCalendarEvent}

  constructor TCustomGoogleCalendarEvent.Create;
  begin
    inherited;
    FId:= AddCreateField(TJanuaFieldType.jptString, 'id', 'id');
    FEtag:= AddCreateField(TJanuaFieldType.jptString, 'etag', 'etag');
    FSummary:= AddCreateField(TJanuaFieldType.jptString, 'summary', 'summary');
    FDescription:= AddCreateField(TJanuaFieldType.jptBlob, 'description', 'description');
    FStarttime:= AddCreateField(TJanuaFieldType.jptDateTime, 'starttime', 'starttime');
    FEndtime:= AddCreateField(TJanuaFieldType.jptDateTime, 'endtime', 'endtime');
    FCreated:= AddCreateField(TJanuaFieldType.jptDateTime, 'created', 'created');
    FUpdated:= AddCreateField(TJanuaFieldType.jptDateTime, 'updated', 'updated');
    FIsallday:= AddCreateField(TJanuaFieldType.jptBoolean, 'isallday', 'isallday');
    FLocation:= AddCreateField(TJanuaFieldType.jptString, 'location', 'location');
    FStatus:= AddCreateField(TJanuaFieldType.jptSmallint, 'status', 'status');
    FVisibility:= AddCreateField(TJanuaFieldType.jptInteger, 'visibility', 'visibility');
    FRecurrence:= AddCreateField(TJanuaFieldType.jptString, 'recurrence', 'recurrence');
    FRecurringid:= AddCreateField(TJanuaFieldType.jptString, 'recurringid', 'recurringid');
    FSequence:= AddCreateField(TJanuaFieldType.jptInteger, 'sequence', 'sequence');
    FColor:= AddCreateField(TJanuaFieldType.jptSmallint, 'color', 'color');
    FUsedefaultreminders:= AddCreateField(TJanuaFieldType.jptBoolean, 'usedefaultreminders', 'usedefaultreminders');
    FSendnotifications:= AddCreateField(TJanuaFieldType.jptBoolean, 'sendnotifications', 'sendnotifications');
    FCalendarid:= AddCreateField(TJanuaFieldType.jptString, 'calendarid', 'calendarid');
  end;

  function TCustomGoogleCalendarEvent.GetId: IJanuaField;
  begin
    Result := FId;
  end;

  function TCustomGoogleCalendarEvent.GetEtag: IJanuaField;
  begin
    Result := FEtag;
  end;

  function TCustomGoogleCalendarEvent.GetSummary: IJanuaField;
  begin
    Result := FSummary;
  end;

  function TCustomGoogleCalendarEvent.GetDescription: IJanuaField;
  begin
    Result := FDescription;
  end;

  function TCustomGoogleCalendarEvent.GetStarttime: IJanuaField;
  begin
    Result := FStarttime;
  end;

  function TCustomGoogleCalendarEvent.GetEndtime: IJanuaField;
  begin
    Result := FEndtime;
  end;

  function TCustomGoogleCalendarEvent.GetCreated: IJanuaField;
  begin
    Result := FCreated;
  end;

  function TCustomGoogleCalendarEvent.GetUpdated: IJanuaField;
  begin
    Result := FUpdated;
  end;

  function TCustomGoogleCalendarEvent.GetIsallday: IJanuaField;
  begin
    Result := FIsallday;
  end;

  function TCustomGoogleCalendarEvent.GetLocation: IJanuaField;
  begin
    Result := FLocation;
  end;

  function TCustomGoogleCalendarEvent.GetStatus: IJanuaField;
  begin
    Result := FStatus;
  end;

  function TCustomGoogleCalendarEvent.GetVisibility: IJanuaField;
  begin
    Result := FVisibility;
  end;

  function TCustomGoogleCalendarEvent.GetRecurrence: IJanuaField;
  begin
    Result := FRecurrence;
  end;

  function TCustomGoogleCalendarEvent.GetRecurringid: IJanuaField;
  begin
    Result := FRecurringid;
  end;

  function TCustomGoogleCalendarEvent.GetSequence: IJanuaField;
  begin
    Result := FSequence;
  end;

  function TCustomGoogleCalendarEvent.GetColor: IJanuaField;
  begin
    Result := FColor;
  end;

  function TCustomGoogleCalendarEvent.GetUsedefaultreminders: IJanuaField;
  begin
    Result := FUsedefaultreminders;
  end;

  function TCustomGoogleCalendarEvent.GetSendnotifications: IJanuaField;
  begin
    Result := FSendnotifications;
  end;

  function TCustomGoogleCalendarEvent.GetCalendarid: IJanuaField;
  begin
    Result := FCalendarid;
  end;

  { TCustomGoogleCalendarEvents }
  constructor TCustomGoogleCalendarEvents.Create;
  begin
    inherited;
  end;

  function TCustomGoogleCalendarEvents.GetId: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Id;
  end;

  function TCustomGoogleCalendarEvents.GetEtag: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Etag;
  end;

  function TCustomGoogleCalendarEvents.GetSummary: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Summary;
  end;

  function TCustomGoogleCalendarEvents.GetDescription: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Description;
  end;

  function TCustomGoogleCalendarEvents.GetStarttime: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Starttime;
  end;

  function TCustomGoogleCalendarEvents.GetEndtime: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Endtime;
  end;

  function TCustomGoogleCalendarEvents.GetCreated: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Created;
  end;

  function TCustomGoogleCalendarEvents.GetUpdated: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Updated;
  end;

  function TCustomGoogleCalendarEvents.GetIsallday: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Isallday;
  end;

  function TCustomGoogleCalendarEvents.GetLocation: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Location;
  end;

  function TCustomGoogleCalendarEvents.GetStatus: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Status;
  end;

  function TCustomGoogleCalendarEvents.GetVisibility: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Visibility;
  end;

  function TCustomGoogleCalendarEvents.GetRecurrence: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Recurrence;
  end;

  function TCustomGoogleCalendarEvents.GetRecurringid: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Recurringid;
  end;

  function TCustomGoogleCalendarEvents.GetSequence: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Sequence;
  end;

  function TCustomGoogleCalendarEvents.GetColor: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Color;
  end;

  function TCustomGoogleCalendarEvents.GetUsedefaultreminders: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Usedefaultreminders;
  end;

  function TCustomGoogleCalendarEvents.GetSendnotifications: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Sendnotifications;
  end;

  function TCustomGoogleCalendarEvents.GetCalendarid: IJanuaField;
  begin
    Result := self.CustomGoogleCalendarEvent.Calendarid;
  end;

  function TCustomGoogleCalendarEvents.GetCustomGoogleCalendarEvent: ICustomGoogleCalendarEvent;
  begin
    Result := FRecord as ICustomGoogleCalendarEvent;
  end;

end.
