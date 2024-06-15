unit JOrm.Phoenix.GoogleCalendars.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Phoenix.GoogleCalendars.Custom.Intf;

//------------------------------------------ Impl Record interface ----------------------------------

type
  TCustomGoogleCalendar = class(TJanuaRecord, ICustomGoogleCalendar)
  private
    FId: IJanuaField;
    FDescription: IJanuaField;
    FLocation: IJanuaField;
    FSummary: IJanuaField;
    FPrimary: IJanuaField;
    FTimezone: IJanuaField;
    FColor: IJanuaField;
    FBackColor: IJanuaField;
    FForeColor: IJanuaField;
  protected
    function GetId: IJanuaField;
    function GetDescription: IJanuaField;
    function GetLocation: IJanuaField;
    function GetSummary: IJanuaField;
    function GetPrimary: IJanuaField;
    function GetTimezone: IJanuaField;
    function GetColor: IJanuaField;
    function GetBackColor: IJanuaField;
    function GetForeColor: IJanuaField;
  public
    constructor Create; override;
    property Id: IJanuaField read GetId;
    property Description: IJanuaField read GetDescription;
    property Location: IJanuaField read GetLocation;
    property Summary: IJanuaField read GetSummary;
    property Primary: IJanuaField read GetPrimary;
    property Timezone: IJanuaField read GetTimezone;
    property Color: IJanuaField read GetColor;
    property BackColor: IJanuaField read GetBackColor;
    property ForeColor: IJanuaField read GetForeColor;

  end;

  TCustomGoogleCalendars = class(TJanuaRecordSet, IJanuaRecordSet, ICustomGoogleCalendars)
  private
    function GetId: IJanuaField;
    function GetDescription: IJanuaField;
    function GetLocation: IJanuaField;
    function GetSummary: IJanuaField;
    function GetPrimary: IJanuaField;
    function GetTimezone: IJanuaField;
    function GetColor: IJanuaField;
    function GetBackColor: IJanuaField;
    function GetForeColor: IJanuaField;
  protected
    function GetCustomGoogleCalendar: ICustomGoogleCalendar;
    property CustomGoogleCalendar: ICustomGoogleCalendar read GetCustomGoogleCalendar;
  public
    constructor Create; override;
    property Id: IJanuaField read GetId;
    property Description: IJanuaField read GetDescription;
    property Location: IJanuaField read GetLocation;
    property Summary: IJanuaField read GetSummary;
    property Primary: IJanuaField read GetPrimary;
    property Timezone: IJanuaField read GetTimezone;
    property Color: IJanuaField read GetColor;
    property BackColor: IJanuaField read GetBackColor;
    property ForeColor: IJanuaField read GetForeColor;
  end;


implementation

//------------------------------------------ Impl TGoogleCalendar -------------------------------

{TCustomGoogleCalendar}

  constructor TCustomGoogleCalendar.Create;
  begin
    inherited;
    FId:= AddCreateField(TJanuaFieldType.jptString, 'id', 'id');
    FDescription:= AddCreateField(TJanuaFieldType.jptBlob, 'description', 'description');
    FLocation:= AddCreateField(TJanuaFieldType.jptString, 'location', 'location');
    FSummary:= AddCreateField(TJanuaFieldType.jptString, 'summary', 'summary');
    FPrimary:= AddCreateField(TJanuaFieldType.jptBoolean, 'primary', 'primary');
    FTimezone:= AddCreateField(TJanuaFieldType.jptString, 'timezone', 'timezone');
    FColor:= AddCreateField(TJanuaFieldType.jptSmallint, 'color', 'color');
    FBackColor:= AddCreateField(TJanuaFieldType.jptInteger, 'back_color', 'back_color');
    FForeColor:= AddCreateField(TJanuaFieldType.jptInteger, 'fore_color', 'fore_color');
  end;

  function TCustomGoogleCalendar.GetId: IJanuaField;
  begin
    Result := FId;
  end;

  function TCustomGoogleCalendar.GetDescription: IJanuaField;
  begin
    Result := FDescription;
  end;

  function TCustomGoogleCalendar.GetLocation: IJanuaField;
  begin
    Result := FLocation;
  end;

  function TCustomGoogleCalendar.GetSummary: IJanuaField;
  begin
    Result := FSummary;
  end;

  function TCustomGoogleCalendar.GetPrimary: IJanuaField;
  begin
    Result := FPrimary;
  end;

  function TCustomGoogleCalendar.GetTimezone: IJanuaField;
  begin
    Result := FTimezone;
  end;

  function TCustomGoogleCalendar.GetColor: IJanuaField;
  begin
    Result := FColor;
  end;

  function TCustomGoogleCalendar.GetBackColor: IJanuaField;
  begin
    Result := FBackColor;
  end;

  function TCustomGoogleCalendar.GetForeColor: IJanuaField;
  begin
    Result := FForeColor;
  end;

  { TCustomGoogleCalendars }
  constructor TCustomGoogleCalendars.Create;
  begin
    inherited;
  end;

  function TCustomGoogleCalendars.GetId: IJanuaField;
  begin
    Result := self.CustomGoogleCalendar.Id;
  end;

  function TCustomGoogleCalendars.GetDescription: IJanuaField;
  begin
    Result := self.CustomGoogleCalendar.Description;
  end;

  function TCustomGoogleCalendars.GetLocation: IJanuaField;
  begin
    Result := self.CustomGoogleCalendar.Location;
  end;

  function TCustomGoogleCalendars.GetSummary: IJanuaField;
  begin
    Result := self.CustomGoogleCalendar.Summary;
  end;

  function TCustomGoogleCalendars.GetPrimary: IJanuaField;
  begin
    Result := self.CustomGoogleCalendar.Primary;
  end;

  function TCustomGoogleCalendars.GetTimezone: IJanuaField;
  begin
    Result := self.CustomGoogleCalendar.Timezone;
  end;

  function TCustomGoogleCalendars.GetColor: IJanuaField;
  begin
    Result := self.CustomGoogleCalendar.Color;
  end;

  function TCustomGoogleCalendars.GetBackColor: IJanuaField;
  begin
    Result := self.CustomGoogleCalendar.BackColor;
  end;

  function TCustomGoogleCalendars.GetForeColor: IJanuaField;
  begin
    Result := self.CustomGoogleCalendar.ForeColor;
  end;

  function TCustomGoogleCalendars.GetCustomGoogleCalendar: ICustomGoogleCalendar;
  begin
    Result := FRecord as ICustomGoogleCalendar;
  end;

end.
