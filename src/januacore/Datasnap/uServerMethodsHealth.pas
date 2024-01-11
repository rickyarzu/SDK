unit uServerMethodsHealth;

interface

uses
  // System
  System.SysUtils, System.Classes, System.Json,
  // Datasnap
  DataSnap.DSProviderDataModuleAdapter, DataSnap.DSServer, DataSnap.DSAuth,
  // System Components
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  // Janua Components
  Janua.Core.Types, Janua.Core.Http, Janua.Core.Health, Janua.Core.Customcontrols, Janua.Core.Mail,
  Janua.Core.Classes, Janua.Core.Cloud, Janua.Core.System, Janua.Core.Functions,
  Janua.Postgres.System, Janua.Core.Cms, Janua.Core.JPublic, Janua.Core.Servers, Janua.Core.Football,
  // Janua Postgres Controls
  Janua.Postgres.Football, Janua.Postgres.Health, Janua.Postgres.JPublic, Janua.Postgres.Cms,
  // Visual Form Inheritance
  uServerMethodsModel, Janua.Core.DB, Data.DB, MemDS, VirtualTable, DBAccess, Uni, Janua.Unidac.Connection, ;

type
  THealthMethods = class(TDSServerModuleModel)
    JanuaServerHealthBooking1: TJanuaServerHealthBooking;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
{$METHODINFO ON}
    { Public declarations }
    function BookingUndoAll(const aSessionKey: string; const aBookingID: Int64): boolean;
    function BookingChoice(const aSessionKey: string; const aBookingID: Int64; const aInstituteID: integer): boolean;
    function OpenBooking(const aSessionKey: string; const aBookingID: Int64; var vCheck: boolean): TJsonObject;
    function Finalisation(const aSessionKey: string; aObject: TJsonObject; var aError: string): boolean;
    function Meetings(const aSessionKey: string; var aError: string): TJsonObject;
    function AssignSessionBooking(aSessionKey: string; aBookingID: Int64): boolean;
    function DoBooking(aSessionKey: string; aSearchID: Int64; aItems: TJsonObject; var aChecked: boolean;
      var aError: string): Int64;
    function NotificationRead(aSessionKey: string; aNotificationID: Int64): boolean;
    function GetNotifications(aSessionKey: string): TJsonObject;
    function SearchServices(aSessionKey: string; aSearch: string): TJsonObject;
    function SearchServicesJson(aSessionKey: string; aSearch: string): TJsonObject;
    function SearchInstitutes(aSessionKey: string; iItemID, iLimit: integer; aAddress: string;
      latitude, longitude: Double; iPage: smallint = 1): TJsonObject;
    function SearchInstitutesJson(aSessionKey: string; aJsonObject: TJsonObject): TJsonObject;
    // function SaveprofileJson(aUserProfile: TJsonObject): boolean;
  end;
{$METHODINFO OFF}

implementation

{$R *.dfm}

uses System.StrUtils, Janua.Anagraph.Types;

function THealthMethods.AssignSessionBooking(aSessionKey: string; aBookingID: Int64): boolean;
begin
  Result := aBookingID > 0;
  if Result then
    Result := self.JanuaServerHealthBooking1.CheckSessionKey(aSessionKey);
  if Result then
  begin
    self.JanuaServerHealthBooking1.BookingID := aBookingID;
    Result := JanuaServerHealthBooking1.AssignSessionBooking;
  end;
end;

function THealthMethods.BookingChoice(const aSessionKey: string; const aBookingID: Int64;
  const aInstituteID: integer): boolean;
begin
  if self.JanuaServerHealthBooking1.CheckSessionKey(aSessionKey) then
  begin
    JanuaServerHealthBooking1.InstituteID := aInstituteID;
    JanuaServerHealthBooking1.BookingID := aBookingID;
    Result := JanuaServerHealthBooking1.InstituteConfirmation;
  end;
end;

function THealthMethods.BookingUndoAll(const aSessionKey: string; const aBookingID: Int64): boolean;
begin
  if self.JanuaServerHealthBooking1.CheckSessionKey(aSessionKey) then
  begin

  end;
end;

function THealthMethods.DoBooking(aSessionKey: string; aSearchID: Int64; aItems: TJsonObject; var aChecked: boolean;
  var aError: string): Int64;
var
  aAnagraphs: TJanuaAnagraphs;
begin
  if (aSessionKey <> '') and JanuaServerHealthBooking1.CheckSessionKey(aSessionKey) then
    try
      aAnagraphs.LoadFromJsonObject(aItems);
      self.JanuaServerHealthBooking1.BookingInstitutes := aAnagraphs;
      JanuaServerHealthBooking1.SearchID := aSearchID;
      JanuaServerHealthBooking1.select1 := 0;
      JanuaServerHealthBooking1.select2 := 0;
      JanuaServerHealthBooking1.select3 := 0;
      if JanuaServerHealthBooking1.BookingInstitutes.Count >= 3 then
        JanuaServerHealthBooking1.select3 := JanuaServerHealthBooking1.BookingInstitutes.Items[2].anagraph_id;
      if JanuaServerHealthBooking1.BookingInstitutes.Count >= 2 then
        JanuaServerHealthBooking1.select2 := JanuaServerHealthBooking1.BookingInstitutes.Items[1].anagraph_id;
      if JanuaServerHealthBooking1.BookingInstitutes.Count >= 1 then
        JanuaServerHealthBooking1.select1 := JanuaServerHealthBooking1.BookingInstitutes.Items[0].anagraph_id;
      Result := self.JanuaServerHealthBooking1.DoBooking;
      aChecked := Result > 0;
      if not aChecked then
        aError := self.JanuaServerHealthBooking1.LastErrorMessage;
    except
      on e: Exception do
      begin
        Result := -1;
        aChecked := False;
        aError := 'Errore di prenotazione sul server: ' + e.Message;
      end;
    end
  else
  begin
    Result := -1;
    aChecked := False;
    aError := 'Errore di prenotazione sul server: Sessione scaduta o non esistente ripetere login ';
  end;
end;

procedure THealthMethods.DSServerModuleCreate(Sender: TObject);
begin
  inherited;
  FJanuaCustomDBServer := self.JanuaServerHealthBooking1;
  self.JanuaVCLOS1.Activate;
end;

function THealthMethods.Finalisation(const aSessionKey: string; aObject: TJsonObject; var aError: string): boolean;
var
  aBooking: TJanuaHealthBooking;
begin
  Result := False;
  if Assigned(aObject) and JanuaServerHealthBooking1.CheckSessionKey(aSessionKey) then
  begin
    if not JanuaServerHealthBooking1.IsPublic then
    begin
      try
        aBooking.LoadFromJsonObject(aObject);
        Result := self.JanuaServerHealthBooking1.Finalisation(aBooking);
      except
        on e: Exception do
        begin
          aError := 'Errore di registrazione prenotazione: ' + e.Message;
          Result := False;
        end;
      end
    end
    else
    begin
      aError := 'Errore di registrazione prenotazione: ' + ' Sessione non pubblica';
      Result := False;
    end;
  end
  else
  begin
    aError := 'Errore di registrazione prenotazione: ' + JanuaServerHealthBooking1.LastErrorMessage;
    Result := False;
  end;
end;

function THealthMethods.OpenBooking(const aSessionKey: string; const aBookingID: Int64; var vCheck: boolean)
  : TJsonObject;
var
  temp: TJsonObject;
  aBooking: TJanuaHealthBooking;
begin
  if self.JanuaServerHealthBooking1.CheckSessionKey(aSessionKey) then
  begin
    vCheck := self.JanuaServerHealthBooking1.OpenBooking(aBookingID);
    aBooking := JanuaServerHealthBooking1.Booking;
    temp := aBooking.AsJsonObject;
    Result := temp;
  end;
end;

function THealthMethods.GetNotifications(aSessionKey: string): TJsonObject;
begin
  if JanuaServerHealthBooking1.CheckSessionKey(aSessionKey) and not JanuaServerHealthBooking1.IsPublic then
    JanuaServerHealthBooking1.GetHealthNotifications
  else
    self.JanuaServerHealthBooking1.HealthNotifications.Clear;

  Result := JanuaServerHealthBooking1.HealthNotifications.AsJsonObject;
end;

function THealthMethods.Meetings(const aSessionKey: string; var aError: string): TJsonObject;
begin
  if self.JanuaServerHealthBooking1.CheckSessionKey(aSessionKey) then
  begin
    JanuaServerHealthBooking1.GetMeetings;
    aError := '';
  end
  else
  begin
    aError := 'Sessione scaduta o errata sessione';
  end;

  Result := JanuaServerHealthBooking1.Meetings.AsJsonObject;

end;

function THealthMethods.NotificationRead(aSessionKey: string; aNotificationID: Int64): boolean;
begin
  Result := JanuaServerHealthBooking1.CheckSessionKey(aSessionKey);
  if Result then
    Result := JanuaServerHealthBooking1.SetNotificationRead(aNotificationID);
end;

function THealthMethods.SearchInstitutes(aSessionKey: string; iItemID, iLimit: integer; aAddress: string;
  latitude, longitude: Double; iPage: smallint = 1): TJsonObject;
var
  test: integer;
  aCoordinates: TJanuaRecordCoordinates;
  aSearcHeader: Janua.Core.Health.TJanuaHealthSearchHeader;
begin
  aCoordinates.Clear;
  aSearcHeader.Clear;
  aCoordinates.latitude := latitude;
  aCoordinates.longitude := longitude;
  test := -1;
  if JanuaServerHealthBooking1.CheckSessionKey(aSessionKey) then
    test := self.JanuaServerHealthBooking1.SearchInstitutes(iItemID, iLimit, aAddress, aCoordinates);
  if test = -1 then
    Result := aSearcHeader.AsJsonObject;
  Result := JanuaServerHealthBooking1.Booking.Search.AsJsonObject;
end;

function THealthMethods.SearchInstitutesJson(aSessionKey: string; aJsonObject: TJsonObject): TJsonObject;
var
  test: integer;
  aSearcHeader: Janua.Core.Health.TJanuaHealthSearchHeader;
begin
  aSearcHeader.LoadFromJsonObject(aJsonObject);
  JanuaServerHealthBooking1.SessionKey := aSessionKey;
  test := JanuaServerHealthBooking1.SearchInstitutes(aSearcHeader);
  Result := JanuaServerHealthBooking1.Booking.Search.AsJsonObject;
end;

function THealthMethods.SearchServices(aSessionKey: string; aSearch: string): TJsonObject;
begin
  JanuaServerHealthBooking1.SessionKey := aSessionKey;
  self.JanuaServerHealthBooking1.SearchServices(aSearch);
  Result := JanuaServerHealthBooking1.mdsServices.AsJsonObject;

end;

function THealthMethods.SearchServicesJson(aSessionKey, aSearch: string): TJsonObject;
begin
  JanuaServerHealthBooking1.SessionKey := aSessionKey;
  self.JanuaServerHealthBooking1.SearchServices(aSearch);
  Result := JanuaServerHealthBooking1.JanuaServices.AsJsonObject;
end;

end.
