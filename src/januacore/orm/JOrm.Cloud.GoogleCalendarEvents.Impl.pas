unit JOrm.Cloud.GoogleCalendarEvents.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Phoenix.GoogleCalendarEvents.Intf, JOrm.Phoenix.GoogleCalendarEvents.Custom.Impl;

//------------------------------------------ Impl Record interface ----------------------------------

type
  TGoogleCalendarEvent = class(TCustomGoogleCalendarEvent, IGoogleCalendarEvent)
  private
  public
    constructor Create; override;

  end;

  TGoogleCalendarEvents = class(TCustomGoogleCalendarEvents, IJanuaRecordSet, IGoogleCalendarEvents)
  protected
    function GetGoogleCalendarEvent: IGoogleCalendarEvent;
  public
    constructor Create; override;
    property GoogleCalendarEvent:IGoogleCalendarEvent read GetGoogleCalendarEvent;
  end;

  TGoogleCalendarEventFactory = class
    class function CreateRecord(const aKey: string): IGoogleCalendarEvent; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IGoogleCalendarEvents; overload;
    class function CreateRecordset(const aName: string): IGoogleCalendarEvents; overload;
  end;

implementation

//------------------------------------------ Impl TGoogleCalendarEvent -------------------------------

{TGoogleCalendarEvent}

  constructor TGoogleCalendarEvent.Create;
  begin
    inherited;
  end;

  { TGoogleCalendarEvents }
  constructor TGoogleCalendarEvents.Create;
  begin
    inherited;
    FRecord := TGoogleCalendarEventFactory.CreateRecord('GoogleCalendarEvent');
  end;

  function TGoogleCalendarEvents.GetGoogleCalendarEvent: IGoogleCalendarEvent;
  begin
    Result := FRecord as IGoogleCalendarEvent;
  end;

  { TGoogleCalendarEventFactory }

  class function TGoogleCalendarEventFactory.CreateRecord(const aKey: string): IGoogleCalendarEvent;
  begin
    Result := TGoogleCalendarEvent.Create(aKey);
  end;

  class function TGoogleCalendarEventFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IGoogleCalendarEvents;
  begin
    Result := TGoogleCalendarEvents.Create(aName, aLocalStorage, aRemoteStorage);
  end;


  class function TGoogleCalendarEventFactory.CreateRecordset(const aName: string): IGoogleCalendarEvents;
  begin
    Result := TGoogleCalendarEvents.Create(aName,  nil, nil);
  end;

end.
