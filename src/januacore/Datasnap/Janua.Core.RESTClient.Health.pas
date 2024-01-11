unit Janua.Core.RESTClient.Health;

interface

uses
  // System
  System.SysUtils, System.JSON,
  // Janua
  Janua.Core.Functions, Janua.Core.Types, Janua.Core.Classes, Janua.Core.Health, Janua.Core.REST.Health,
  Janua.Core.System, Janua.Core.Anagraph, Janua.Anagraph.Types;

type
  TJanuaRESTHealthClient = class(TJanuaCustomHealthClient)
  private
    FHealthMethodsClient: THealthMethodsClient;
  public
    constructor Create(aHealthMethodsClient: THealthMethodsClient); overload;
    // Connection Testing Procedures ..................................................................................
    function EchoString(Value: string): string; override;
    function ReverseString(Value: string): string; override;
    // Common System Procedures .......................................................................................
    procedure Logout; override;
    function SaveProfile(var aUser: TJanuaRecordUserProfile): boolean; override;
    function Login(aUser: TJanuaRecordUserProfile): TJanuaLoginRecord; overload; override;
    function Login(Username, Password: string): TJanuaLoginRecord; overload; override;
    function CheckSessionKey(aSessionKey: string): TJanuaLoginRecord; overload; override;
    function CheckNewUser(aUser: TJanuaRecordUserProfile): boolean; overload; override;
    function CheckNewUser(aUser: string): boolean; overload; override;
    function CreateNewUser(aUser: TJanuaRecordUserProfile; var aChecked: boolean): TJanuaRecordUserProfile; override;
    // Health Specific Procedures .....................................................................................
    function GetMeetings: integer; override;
    function BookingUndoAll(const aBookingID: Int64): boolean; override;
    function BookingChoice(const aBookingID: Int64; const aInstituteID: integer): boolean; override;
    function getBooking(aBookingID: Int64): boolean; override;
    function BookingFinalize: boolean; overload; override;
    function GetNotifications: integer; overload; override;
    function GetNotifications(aSessionKey: string): integer; overload; override;
    function AssignSessionBooking: boolean; override;
    function SearchServices(const aSessionKey: string; const aSearch: string): TJsonObject; override;
    function StartPublicSession(const aAppName: string): TJanuaServerSession; override;
    function SearchServicesJson(aSessionKey: string; aSearch: string; const ARequestFilter: string = '')
      : TJsonObject; override;
    function SearchInstitutes(aSessionKey: string; iItemID: integer; iLimit: integer; aAddress: string;
      Coordinates: TJanuaRecordCoordinates; iPage: smallint = 1): TJanuaHealthSearch; overload; override;
    function SearchInstitutes(aSessionKey: string; aSearchHeader: TJanuaHealthSearchHeader): TJanuaHealthSearch;
      overload; override;
    function DoBooking: Int64; overload; override;
    function DoBooking(aInstitutes: TJanuaAnagraphs): Int64; overload; override;
    function NotificationRead(aNotificationID: Int64): boolean;  overload; override;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaRESTHealthClient }

function TJanuaRESTHealthClient.CheckNewUser(aUser: TJanuaRecordUserProfile): boolean;
begin
  Result := FHealthMethodsClient.CheckNewUserJson(aUser.AsJsonObject)
end;

function TJanuaRESTHealthClient.AssignSessionBooking: boolean;
begin
  Result := FHealthMethodsClient.AssignSessionBooking(self.SessionKey, self.Booking.id)
end;

function TJanuaRESTHealthClient.BookingChoice(const aBookingID: Int64; const aInstituteID: integer): boolean;
begin
  Result := FHealthMethodsClient.BookingChoice(self.SessionKey, aBookingID, aInstituteID);
end;

function TJanuaRESTHealthClient.BookingFinalize: boolean;
var
  aError: string;
  aTest: string;
begin
  Result := False;
  try
    aTest := self.FBooking.ToString;
    self.WriteLog('TJanuaRESTHealthClient.BookingFinalize', aTest);

    if FBooking.Check then
      Result := FHealthMethodsClient.Finalisation(self.SessionKey, self.Booking.AsJsonObject, aError)
    else
      aError := 'Errore di Verifica della prenotazione: ' + FBooking.ErrorMessage;

    if not Result then
    begin
      self.FLastErrorMessage := 'Errore di registrazione prenotazione: ' + aError;
    end;
  except
    on e: exception do
    begin
      self.FLastErrorMessage := 'Errore di registrazione prenotazione: ' + e.Message;
      Result := False;
    end;

  end;
end;

function TJanuaRESTHealthClient.BookingUndoAll(const aBookingID: Int64): boolean;
begin
  { TODO : Add Check BookingUndoAll server side & Client Side }
end;

function TJanuaRESTHealthClient.CheckNewUser(aUser: string): boolean;
begin
  Result := FHealthMethodsClient.CheckNewUser(aUser);
end;

function TJanuaRESTHealthClient.CheckSessionKey(aSessionKey: string): TJanuaLoginRecord;
var
  aObject: TJsonObject;
begin
  aObject := self.FHealthMethodsClient.CheckSessionKey(aSessionKey, JanuaApplicationGlobalProfile.AppName);
  self.FLoginRecord.LoadFromJsonObject(aObject);
  Result := self.FLoginRecord;
end;

constructor TJanuaRESTHealthClient.Create(aHealthMethodsClient: THealthMethodsClient);
begin
  self.FHealthMethodsClient := aHealthMethodsClient;
end;

function TJanuaRESTHealthClient.CreateNewUser(aUser: TJanuaRecordUserProfile; var aChecked: boolean)
  : TJanuaRecordUserProfile;
begin
  self.ClientRecord.UserProfile.AsJsonObject := self.FHealthMethodsClient.CreateNewUser(aUser.AsJsonObject, aChecked);
end;

function TJanuaRESTHealthClient.DoBooking: Int64;
var
  aChecked: boolean;
  aError: string;
begin
  aChecked := False;
  aError := '';

  // Result := 0;

  if self.FBooking.Search.id > 0 then
  begin
    Result := FHealthMethodsClient.DoBooking(self.SessionKey, FBooking.Search.id, FBooking.Institutes.AsJsonObject,
      aChecked, aError);
    self.FBooking.id := Result;
    FBooking.UserProfile := self.ClientRecord.UserProfile;
    if not aChecked or (Result <= 0) then
    begin
      self.FHasErrors := True;
      self.FLastErrorMessage := aError;
      self.WriteLog('TJanuaRESTHealthClient.BookingFinalize', aError, True);
    end;
  end
  else
    raise exception.Create('JanuaRESTHealthClient.DoBooking error Search is not set');
end;

function TJanuaRESTHealthClient.DoBooking(aInstitutes: TJanuaAnagraphs): Int64;
begin
  self.FBooking.Institutes := aInstitutes;
  Result := self.DoBooking;
end;

function TJanuaRESTHealthClient.EchoString(Value: string): string;
begin
 // Result := FHealthMethodsClient.EchoString(Value)
end;

function TJanuaRESTHealthClient.GetNotifications: integer;
var
  aObject: TJsonObject;
  // aNotification: TJanuaHealthNotification;
begin
  // Result := 0;
  aObject := FHealthMethodsClient.GetNotifications(self.SessionKey);
  self.FNotifications.LoadFromJsonObject(aObject);
  // se ci sono notifiche NON lette allora imposta il contatore delle notifiche non lette da 0 a x.
  Result := self.FNotifications.Unread;
end;

function TJanuaRESTHealthClient.getBooking(aBookingID: Int64): boolean;
var
  aJsonObject: TJsonObject;
begin
  // ricerca il booking in base ad un ID Ritorna True se è stato trovato ...................................
  self.FBooking.Clear;
  aJsonObject := self.FHealthMethodsClient.OpenBooking(SessionKey, aBookingID, Result);
  self.FBooking.LoadFromJsonObject(aJsonObject);
end;

function TJanuaRESTHealthClient.GetMeetings: integer;
var
  aObject: TJsonObject;
  // aNotification: TJanuaHealthNotification;
  aError: string;
begin
  // Result := 0;
  aObject := FHealthMethodsClient.Meetings(self.SessionKey, aError);
  self.FMeetings.LoadFromJsonObject(aObject);
  // se ci sono notifiche NON lette allora imposta il contatore delle notifiche non lette da 0 a x.
  Result := self.FMeetings.Count;
  // function Meetings(aSessionKey: string; var aError: string; const ARequestFilter: string = ''): TJSONObject;
  // self.CheckSessionKey(aSessionKey);
end;

function TJanuaRESTHealthClient.GetNotifications(aSessionKey: string): integer;
begin
  if self.SessionKey <> aSessionKey then
  begin
    self.SessionKey := aSessionKey;
    self.CheckSessionKey(aSessionKey);
  end;
  Result := GetNotifications;
end;

function TJanuaRESTHealthClient.Login(aUser: TJanuaRecordUserProfile): TJanuaLoginRecord;
begin
  Result.AsJsonObject := FHealthMethodsClient.LoginJson(aUser.AsJsonObject);
end;

function TJanuaRESTHealthClient.Login(Username, Password: string): TJanuaLoginRecord;
var
  aJsonObject: TJsonObject;
begin
  aJsonObject := FHealthMethodsClient.Login(Username, Password);
  Result.LoadFromJsonObject(aJsonObject);
  if Result.IsLoggedIn then
  begin
    self.FLoginRecord := Result;
    self.Session := Result.Session;
    self.UserProfile := Result.UserProfile;
    TJanuaCoreOS.WriteParam('clientrecord', 'session', ClientRecord.Session.AsJsonObject.ToJSON);
    TJanuaCoreOS.WriteParam('clientrecord', 'user', ClientRecord.UserProfile.AsJsonObject.ToJSON);
    TJanuaCoreOS.WriteParam('session', 'key', ClientRecord.Session.Key);
    TJanuaCoreOS.SaveConfiguration;
  end
  else
  begin
    self.FHasErrors := True;
    self.FLastErrorMessage := 'Errore di login, nome utente o password errati';
  end;
end;

procedure TJanuaRESTHealthClient.Logout;
begin
  inherited;
  StartPublicSession(JanuaApplicationGlobalProfile.AppName);
end;

function TJanuaRESTHealthClient.NotificationRead(aNotificationID: Int64): boolean;
begin
  if FHealthMethodsClient.NotificationRead(self.SessionKey, aNotificationID) then
  begin
    if self.Notifications.FindItemByID(aNotificationID) then
    begin
      self.Notifications.Items[self.Notifications.ItemIndex].read := True;
    end;
  end;
end;

function TJanuaRESTHealthClient.ReverseString(Value: string): string;
begin
 // Result := FHealthMethodsClient.ReverseString(Value)
end;

function TJanuaRESTHealthClient.SearchInstitutes(aSessionKey: string; iItemID, iLimit: integer; aAddress: string;
  Coordinates: TJanuaRecordCoordinates; iPage: smallint = 1): TJanuaHealthSearch;
begin
  Result.LoadFromJsonObject(FHealthMethodsClient.SearchInstitutes(aSessionKey, iItemID, iLimit, aAddress,
    Coordinates.latitude, Coordinates.longitude, iPage, ''));

  self.Booking.Search := Result; // imposto la ricerca a Search Result in oggetto Booking.
  // nota: cambiando la ricerca andrebbe anche 'azzerata' la variabile Booking quindi ....
  // quantomeno azzero la lista degli istituti selezionati avendo rifatto la ricerca .....
  self.Booking.Institutes.Clear;
  // ed azzero anche l'ultimo istituto cliccato portandolo quindi a '0' di indice.........
  self.Booking.SelectedInstitute.Clear;
end;

function TJanuaRESTHealthClient.SaveProfile(var aUser: TJanuaRecordUserProfile): boolean;
var
  aJsonObject: TJsonObject;
begin
  aJsonObject := self.FHealthMethodsClient.SaveProfile(aUser.AsJsonObject, Result, self.FErrorMessage);
  if not Result then
  begin
    self.FHasErrors := True;
  end
  else
  begin
    aUser.LoadFromJsonObject(aJsonObject);
    // Now uses the protected Function of the Anchestor Creator Class
    self.SetUserProfile(aUser);
    // self.ClientRecord.UserProfile := aUser;
  end;
end;

function TJanuaRESTHealthClient.SearchInstitutes(aSessionKey: string; aSearchHeader: TJanuaHealthSearchHeader)
  : TJanuaHealthSearch;
var
  aJsonObject: TJsonObject;
begin
  aJsonObject := FHealthMethodsClient.SearchInstitutesJson(aSessionKey, aSearchHeader.AsJsonObject, '');
  Result.LoadFromJsonObject(aJsonObject);
  Result.Header := aSearchHeader;
  self.FBooking.Search := Result;
  self.FBooking.Service.id := Result.Header.ItemID;
  self.FBooking.Service.title := Result.Search;
  // Result := self.FBooking.Search;
end;

function TJanuaRESTHealthClient.SearchServices(const aSessionKey, aSearch: string): TJsonObject;
begin
  Result := FHealthMethodsClient.SearchServices(aSessionKey, aSearch)
end;

function TJanuaRESTHealthClient.SearchServicesJson(aSessionKey, aSearch: string; const ARequestFilter: string)
  : TJsonObject;
begin
  Result := FHealthMethodsClient.SearchServicesJson(aSessionKey, aSearch)
end;

function TJanuaRESTHealthClient.StartPublicSession(const aAppName: string): TJanuaServerSession;
begin
  self.SetPublicSessionJson(FHealthMethodsClient.StartPublicSession(aAppName));
  Result := FLoginRecord.Session;
end;

end.
