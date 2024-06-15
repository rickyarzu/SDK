unit JOrm.Phoenix.GoogleCalendars.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Phoenix.GoogleCalendars.Intf, JOrm.Phoenix.GoogleCalendars.Custom.Impl;

//------------------------------------------ Impl Record interface ----------------------------------

type
  TGoogleCalendar = class(TCustomGoogleCalendar, IGoogleCalendar)
  private
  public
    constructor Create; override;

  end;

  TGoogleCalendars = class(TCustomGoogleCalendars, IJanuaRecordSet, IGoogleCalendars)
  protected
    function GetGoogleCalendar: IGoogleCalendar;
  public
    constructor Create; override;
    property GoogleCalendar:IGoogleCalendar read GetGoogleCalendar;
  end;

  TGoogleCalendarFactory = class
    class function CreateRecord(const aKey: string): IGoogleCalendar; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IGoogleCalendars; overload;
    class function CreateRecordset(const aName: string): IGoogleCalendars; overload;
  end;

implementation

//------------------------------------------ Impl TGoogleCalendar -------------------------------

{TGoogleCalendar}

  constructor TGoogleCalendar.Create;
  begin
    inherited;
  end;

  { TGoogleCalendars }
  constructor TGoogleCalendars.Create;
  begin
    inherited;
    FRecord := TGoogleCalendarFactory.CreateRecord('GoogleCalendar');
  end;

  function TGoogleCalendars.GetGoogleCalendar: IGoogleCalendar;
  begin
    Result := FRecord as IGoogleCalendar;
  end;

  { TGoogleCalendarFactory }

  class function TGoogleCalendarFactory.CreateRecord(const aKey: string): IGoogleCalendar;
  begin
    Result := TGoogleCalendar.Create(aKey);
  end;

  class function TGoogleCalendarFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IGoogleCalendars;
  begin
    Result := TGoogleCalendars.Create(aName, aLocalStorage, aRemoteStorage);
  end;


  class function TGoogleCalendarFactory.CreateRecordset(const aName: string): IGoogleCalendars;
  begin
    Result := TGoogleCalendars.Create(aName,  nil, nil);
  end;

end.
