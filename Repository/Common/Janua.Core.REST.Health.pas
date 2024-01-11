//
// Created by the DataSnap proxy generator.
// 15/11/2017 16:12:11
//

unit Janua.Core.REST.Health;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  THealthMethodsClient = class(TDSAdminRestClient)
  private
    FDSServerModuleCreateCommand: TDSRestCommand;
    FBookingUndoAllCommand: TDSRestCommand;
    FBookingChoiceCommand: TDSRestCommand;
    FOpenBookingCommand: TDSRestCommand;
    FOpenBookingCommand_Cache: TDSRestCommand;
    FFinalisationCommand: TDSRestCommand;
    FMeetingsCommand: TDSRestCommand;
    FMeetingsCommand_Cache: TDSRestCommand;
    FAssignSessionBookingCommand: TDSRestCommand;
    FDoBookingCommand: TDSRestCommand;
    FNotificationReadCommand: TDSRestCommand;
    FGetNotificationsCommand: TDSRestCommand;
    FGetNotificationsCommand_Cache: TDSRestCommand;
    FSearchServicesCommand: TDSRestCommand;
    FSearchServicesCommand_Cache: TDSRestCommand;
    FSearchServicesJsonCommand: TDSRestCommand;
    FSearchServicesJsonCommand_Cache: TDSRestCommand;
    FSearchInstitutesCommand: TDSRestCommand;
    FSearchInstitutesCommand_Cache: TDSRestCommand;
    FSearchInstitutesJsonCommand: TDSRestCommand;
    FSearchInstitutesJsonCommand_Cache: TDSRestCommand;
    FLoginJsonCommand: TDSRestCommand;
    FLoginJsonCommand_Cache: TDSRestCommand;
    FCheckSessionKeyCommand: TDSRestCommand;
    FCheckSessionKeyCommand_Cache: TDSRestCommand;
    FLoginCommand: TDSRestCommand;
    FLoginCommand_Cache: TDSRestCommand;
    FStartPublicSessionCommand: TDSRestCommand;
    FStartPublicSessionCommand_Cache: TDSRestCommand;
    FCheckNewUserCommand: TDSRestCommand;
    FCheckNewUserJsonCommand: TDSRestCommand;
    FCreateNewUserCommand: TDSRestCommand;
    FCreateNewUserCommand_Cache: TDSRestCommand;
    FCreateNewUserPwdCommand: TDSRestCommand;
    FCreateNewUserPwdCommand_Cache: TDSRestCommand;
    FSaveProfileCommand: TDSRestCommand;
    FSaveProfileCommand_Cache: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    function BookingUndoAll(aSessionKey: string; aBookingID: Int64; const ARequestFilter: string = ''): Boolean;
    function BookingChoice(aSessionKey: string; aBookingID: Int64; aInstituteID: Integer; const ARequestFilter: string = ''): Boolean;
    function OpenBooking(aSessionKey: string; aBookingID: Int64; var vCheck: Boolean; const ARequestFilter: string = ''): TJSONObject;
    function OpenBooking_Cache(aSessionKey: string; aBookingID: Int64; var vCheck: Boolean; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function Finalisation(aSessionKey: string; aObject: TJSONObject; var aError: string; const ARequestFilter: string = ''): Boolean;
    function Meetings(aSessionKey: string; var aError: string; const ARequestFilter: string = ''): TJSONObject;
    function Meetings_Cache(aSessionKey: string; var aError: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function AssignSessionBooking(aSessionKey: string; aBookingID: Int64; const ARequestFilter: string = ''): Boolean;
    function DoBooking(aSessionKey: string; aSearchID: Int64; aItems: TJSONObject; var aChecked: Boolean; var aError: string; const ARequestFilter: string = ''): Int64;
    function NotificationRead(aSessionKey: string; aNotificationID: Int64; const ARequestFilter: string = ''): Boolean;
    function GetNotifications(aSessionKey: string; const ARequestFilter: string = ''): TJSONObject;
    function GetNotifications_Cache(aSessionKey: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function SearchServices(aSessionKey: string; aSearch: string; const ARequestFilter: string = ''): TJSONObject;
    function SearchServices_Cache(aSessionKey: string; aSearch: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function SearchServicesJson(aSessionKey: string; aSearch: string; const ARequestFilter: string = ''): TJSONObject;
    function SearchServicesJson_Cache(aSessionKey: string; aSearch: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function SearchInstitutes(aSessionKey: string; iItemID: Integer; iLimit: Integer; aAddress: string; latitude: Double; longitude: Double; iPage: SmallInt; const ARequestFilter: string = ''): TJSONObject;
    function SearchInstitutes_Cache(aSessionKey: string; iItemID: Integer; iLimit: Integer; aAddress: string; latitude: Double; longitude: Double; iPage: SmallInt; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function SearchInstitutesJson(aSessionKey: string; aJsonObject: TJSONObject; const ARequestFilter: string = ''): TJSONObject;
    function SearchInstitutesJson_Cache(aSessionKey: string; aJsonObject: TJSONObject; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function LoginJson(aJsonObject: TJSONObject; const ARequestFilter: string = ''): TJSONObject;
    function LoginJson_Cache(aJsonObject: TJSONObject; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function CheckSessionKey(aSessionKey: string; aAppName: string; const ARequestFilter: string = ''): TJSONObject;
    function CheckSessionKey_Cache(aSessionKey: string; aAppName: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function Login(UserName: string; Password: string; const ARequestFilter: string = ''): TJSONObject;
    function Login_Cache(UserName: string; Password: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function StartPublicSession(aAppName: string; const ARequestFilter: string = ''): TJSONObject;
    function StartPublicSession_Cache(aAppName: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function CheckNewUser(aUserName: string; const ARequestFilter: string = ''): Boolean;
    function CheckNewUserJson(aUser: TJSONObject; const ARequestFilter: string = ''): Boolean;
    function CreateNewUser(aUser: TJSONObject; var aChecked: Boolean; const ARequestFilter: string = ''): TJSONObject;
    function CreateNewUser_Cache(aUser: TJSONObject; var aChecked: Boolean; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function CreateNewUserPwd(aUserName: string; aPassword: string; var aChecked: Boolean; const ARequestFilter: string = ''): TJSONObject;
    function CreateNewUserPwd_Cache(aUserName: string; aPassword: string; var aChecked: Boolean; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function SaveProfile(aUserProfile: TJSONObject; var aChecked: Boolean; var aError: string; const ARequestFilter: string = ''): TJSONObject;
    function SaveProfile_Cache(aUserProfile: TJSONObject; var aChecked: Boolean; var aError: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
  end;

const
  THealthMethods_DSServerModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  THealthMethods_BookingUndoAll: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aBookingID'; Direction: 1; DBXType: 18; TypeName: 'Int64'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  THealthMethods_BookingChoice: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aBookingID'; Direction: 1; DBXType: 18; TypeName: 'Int64'),
    (Name: 'aInstituteID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  THealthMethods_OpenBooking: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aBookingID'; Direction: 1; DBXType: 18; TypeName: 'Int64'),
    (Name: 'vCheck'; Direction: 3; DBXType: 4; TypeName: 'Boolean'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_OpenBooking_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aBookingID'; Direction: 1; DBXType: 18; TypeName: 'Int64'),
    (Name: 'vCheck'; Direction: 3; DBXType: 4; TypeName: 'Boolean'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_Finalisation: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aObject'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: 'aError'; Direction: 3; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  THealthMethods_Meetings: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aError'; Direction: 3; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_Meetings_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aError'; Direction: 3; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_AssignSessionBooking: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aBookingID'; Direction: 1; DBXType: 18; TypeName: 'Int64'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  THealthMethods_DoBooking: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aSearchID'; Direction: 1; DBXType: 18; TypeName: 'Int64'),
    (Name: 'aItems'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: 'aChecked'; Direction: 3; DBXType: 4; TypeName: 'Boolean'),
    (Name: 'aError'; Direction: 3; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 18; TypeName: 'Int64')
  );

  THealthMethods_NotificationRead: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aNotificationID'; Direction: 1; DBXType: 18; TypeName: 'Int64'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  THealthMethods_GetNotifications: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_GetNotifications_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_SearchServices: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aSearch'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_SearchServices_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aSearch'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_SearchServicesJson: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aSearch'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_SearchServicesJson_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aSearch'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_SearchInstitutes: array [0..7] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'iItemID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'iLimit'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aAddress'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'latitude'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'longitude'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'iPage'; Direction: 1; DBXType: 5; TypeName: 'SmallInt'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_SearchInstitutes_Cache: array [0..7] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'iItemID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'iLimit'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aAddress'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'latitude'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'longitude'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'iPage'; Direction: 1; DBXType: 5; TypeName: 'SmallInt'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_SearchInstitutesJson: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aJsonObject'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_SearchInstitutesJson_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aJsonObject'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_LoginJson: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'aJsonObject'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_LoginJson_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'aJsonObject'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_CheckSessionKey: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aAppName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_CheckSessionKey_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aAppName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_Login: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'UserName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Password'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_Login_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'UserName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Password'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_StartPublicSession: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'aAppName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_StartPublicSession_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'aAppName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_CheckNewUser: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'aUserName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  THealthMethods_CheckNewUserJson: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'aUser'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  THealthMethods_CreateNewUser: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aUser'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: 'aChecked'; Direction: 3; DBXType: 4; TypeName: 'Boolean'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_CreateNewUser_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aUser'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: 'aChecked'; Direction: 3; DBXType: 4; TypeName: 'Boolean'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_CreateNewUserPwd: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'aUserName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aPassword'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aChecked'; Direction: 3; DBXType: 4; TypeName: 'Boolean'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_CreateNewUserPwd_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'aUserName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aPassword'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aChecked'; Direction: 3; DBXType: 4; TypeName: 'Boolean'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  THealthMethods_SaveProfile: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'aUserProfile'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: 'aChecked'; Direction: 3; DBXType: 4; TypeName: 'Boolean'),
    (Name: 'aError'; Direction: 3; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  THealthMethods_SaveProfile_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'aUserProfile'; Direction: 1; DBXType: 37; TypeName: 'TJSONObject'),
    (Name: 'aChecked'; Direction: 3; DBXType: 4; TypeName: 'Boolean'),
    (Name: 'aError'; Direction: 3; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

implementation

procedure THealthMethodsClient.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FConnection.CreateCommand;
    FDSServerModuleCreateCommand.RequestType := 'POST';
    FDSServerModuleCreateCommand.Text := 'THealthMethods."DSServerModuleCreate"';
    FDSServerModuleCreateCommand.Prepare(THealthMethods_DSServerModuleCreate);
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleCreateCommand.Execute;
end;

function THealthMethodsClient.BookingUndoAll(aSessionKey: string; aBookingID: Int64; const ARequestFilter: string): Boolean;
begin
  if FBookingUndoAllCommand = nil then
  begin
    FBookingUndoAllCommand := FConnection.CreateCommand;
    FBookingUndoAllCommand.RequestType := 'GET';
    FBookingUndoAllCommand.Text := 'THealthMethods.BookingUndoAll';
    FBookingUndoAllCommand.Prepare(THealthMethods_BookingUndoAll);
  end;
  FBookingUndoAllCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FBookingUndoAllCommand.Parameters[1].Value.SetInt64(aBookingID);
  FBookingUndoAllCommand.Execute(ARequestFilter);
  Result := FBookingUndoAllCommand.Parameters[2].Value.GetBoolean;
end;

function THealthMethodsClient.BookingChoice(aSessionKey: string; aBookingID: Int64; aInstituteID: Integer; const ARequestFilter: string): Boolean;
begin
  if FBookingChoiceCommand = nil then
  begin
    FBookingChoiceCommand := FConnection.CreateCommand;
    FBookingChoiceCommand.RequestType := 'GET';
    FBookingChoiceCommand.Text := 'THealthMethods.BookingChoice';
    FBookingChoiceCommand.Prepare(THealthMethods_BookingChoice);
  end;
  FBookingChoiceCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FBookingChoiceCommand.Parameters[1].Value.SetInt64(aBookingID);
  FBookingChoiceCommand.Parameters[2].Value.SetInt32(aInstituteID);
  FBookingChoiceCommand.Execute(ARequestFilter);
  Result := FBookingChoiceCommand.Parameters[3].Value.GetBoolean;
end;

function THealthMethodsClient.OpenBooking(aSessionKey: string; aBookingID: Int64; var vCheck: Boolean; const ARequestFilter: string): TJSONObject;
begin
  if FOpenBookingCommand = nil then
  begin
    FOpenBookingCommand := FConnection.CreateCommand;
    FOpenBookingCommand.RequestType := 'GET';
    FOpenBookingCommand.Text := 'THealthMethods.OpenBooking';
    FOpenBookingCommand.Prepare(THealthMethods_OpenBooking);
  end;
  FOpenBookingCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FOpenBookingCommand.Parameters[1].Value.SetInt64(aBookingID);
  FOpenBookingCommand.Parameters[2].Value.SetBoolean(vCheck);
  FOpenBookingCommand.Execute(ARequestFilter);
  vCheck := FOpenBookingCommand.Parameters[2].Value.GetBoolean;
  Result := TJSONObject(FOpenBookingCommand.Parameters[3].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.OpenBooking_Cache(aSessionKey: string; aBookingID: Int64; var vCheck: Boolean; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FOpenBookingCommand_Cache = nil then
  begin
    FOpenBookingCommand_Cache := FConnection.CreateCommand;
    FOpenBookingCommand_Cache.RequestType := 'GET';
    FOpenBookingCommand_Cache.Text := 'THealthMethods.OpenBooking';
    FOpenBookingCommand_Cache.Prepare(THealthMethods_OpenBooking_Cache);
  end;
  FOpenBookingCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FOpenBookingCommand_Cache.Parameters[1].Value.SetInt64(aBookingID);
  FOpenBookingCommand_Cache.Parameters[2].Value.SetBoolean(vCheck);
  FOpenBookingCommand_Cache.ExecuteCache(ARequestFilter);
  vCheck := FOpenBookingCommand_Cache.Parameters[2].Value.GetBoolean;
  Result := TDSRestCachedJSONObject.Create(FOpenBookingCommand_Cache.Parameters[3].Value.GetString);
end;

function THealthMethodsClient.Finalisation(aSessionKey: string; aObject: TJSONObject; var aError: string; const ARequestFilter: string): Boolean;
begin
  if FFinalisationCommand = nil then
  begin
    FFinalisationCommand := FConnection.CreateCommand;
    FFinalisationCommand.RequestType := 'POST';
    FFinalisationCommand.Text := 'THealthMethods."Finalisation"';
    FFinalisationCommand.Prepare(THealthMethods_Finalisation);
  end;
  FFinalisationCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FFinalisationCommand.Parameters[1].Value.SetJSONValue(aObject, FInstanceOwner);
  FFinalisationCommand.Parameters[2].Value.SetWideString(aError);
  FFinalisationCommand.Execute(ARequestFilter);
  aError := FFinalisationCommand.Parameters[2].Value.GetWideString;
  Result := FFinalisationCommand.Parameters[3].Value.GetBoolean;
end;

function THealthMethodsClient.Meetings(aSessionKey: string; var aError: string; const ARequestFilter: string): TJSONObject;
begin
  if FMeetingsCommand = nil then
  begin
    FMeetingsCommand := FConnection.CreateCommand;
    FMeetingsCommand.RequestType := 'GET';
    FMeetingsCommand.Text := 'THealthMethods.Meetings';
    FMeetingsCommand.Prepare(THealthMethods_Meetings);
  end;
  FMeetingsCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FMeetingsCommand.Parameters[1].Value.SetWideString(aError);
  FMeetingsCommand.Execute(ARequestFilter);
  aError := FMeetingsCommand.Parameters[1].Value.GetWideString;
  Result := TJSONObject(FMeetingsCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.Meetings_Cache(aSessionKey: string; var aError: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FMeetingsCommand_Cache = nil then
  begin
    FMeetingsCommand_Cache := FConnection.CreateCommand;
    FMeetingsCommand_Cache.RequestType := 'GET';
    FMeetingsCommand_Cache.Text := 'THealthMethods.Meetings';
    FMeetingsCommand_Cache.Prepare(THealthMethods_Meetings_Cache);
  end;
  FMeetingsCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FMeetingsCommand_Cache.Parameters[1].Value.SetWideString(aError);
  FMeetingsCommand_Cache.ExecuteCache(ARequestFilter);
  aError := FMeetingsCommand_Cache.Parameters[1].Value.GetWideString;
  Result := TDSRestCachedJSONObject.Create(FMeetingsCommand_Cache.Parameters[2].Value.GetString);
end;

function THealthMethodsClient.AssignSessionBooking(aSessionKey: string; aBookingID: Int64; const ARequestFilter: string): Boolean;
begin
  if FAssignSessionBookingCommand = nil then
  begin
    FAssignSessionBookingCommand := FConnection.CreateCommand;
    FAssignSessionBookingCommand.RequestType := 'GET';
    FAssignSessionBookingCommand.Text := 'THealthMethods.AssignSessionBooking';
    FAssignSessionBookingCommand.Prepare(THealthMethods_AssignSessionBooking);
  end;
  FAssignSessionBookingCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FAssignSessionBookingCommand.Parameters[1].Value.SetInt64(aBookingID);
  FAssignSessionBookingCommand.Execute(ARequestFilter);
  Result := FAssignSessionBookingCommand.Parameters[2].Value.GetBoolean;
end;

function THealthMethodsClient.DoBooking(aSessionKey: string; aSearchID: Int64; aItems: TJSONObject; var aChecked: Boolean; var aError: string; const ARequestFilter: string): Int64;
begin
  if FDoBookingCommand = nil then
  begin
    FDoBookingCommand := FConnection.CreateCommand;
    FDoBookingCommand.RequestType := 'POST';
    FDoBookingCommand.Text := 'THealthMethods."DoBooking"';
    FDoBookingCommand.Prepare(THealthMethods_DoBooking);
  end;
  FDoBookingCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FDoBookingCommand.Parameters[1].Value.SetInt64(aSearchID);
  FDoBookingCommand.Parameters[2].Value.SetJSONValue(aItems, FInstanceOwner);
  FDoBookingCommand.Parameters[3].Value.SetBoolean(aChecked);
  FDoBookingCommand.Parameters[4].Value.SetWideString(aError);
  FDoBookingCommand.Execute(ARequestFilter);
  aChecked := FDoBookingCommand.Parameters[3].Value.GetBoolean;
  aError := FDoBookingCommand.Parameters[4].Value.GetWideString;
  Result := FDoBookingCommand.Parameters[5].Value.GetInt64;
end;

function THealthMethodsClient.NotificationRead(aSessionKey: string; aNotificationID: Int64; const ARequestFilter: string): Boolean;
begin
  if FNotificationReadCommand = nil then
  begin
    FNotificationReadCommand := FConnection.CreateCommand;
    FNotificationReadCommand.RequestType := 'GET';
    FNotificationReadCommand.Text := 'THealthMethods.NotificationRead';
    FNotificationReadCommand.Prepare(THealthMethods_NotificationRead);
  end;
  FNotificationReadCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FNotificationReadCommand.Parameters[1].Value.SetInt64(aNotificationID);
  FNotificationReadCommand.Execute(ARequestFilter);
  Result := FNotificationReadCommand.Parameters[2].Value.GetBoolean;
end;

function THealthMethodsClient.GetNotifications(aSessionKey: string; const ARequestFilter: string): TJSONObject;
begin
  if FGetNotificationsCommand = nil then
  begin
    FGetNotificationsCommand := FConnection.CreateCommand;
    FGetNotificationsCommand.RequestType := 'GET';
    FGetNotificationsCommand.Text := 'THealthMethods.GetNotifications';
    FGetNotificationsCommand.Prepare(THealthMethods_GetNotifications);
  end;
  FGetNotificationsCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FGetNotificationsCommand.Execute(ARequestFilter);
  Result := TJSONObject(FGetNotificationsCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.GetNotifications_Cache(aSessionKey: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FGetNotificationsCommand_Cache = nil then
  begin
    FGetNotificationsCommand_Cache := FConnection.CreateCommand;
    FGetNotificationsCommand_Cache.RequestType := 'GET';
    FGetNotificationsCommand_Cache.Text := 'THealthMethods.GetNotifications';
    FGetNotificationsCommand_Cache.Prepare(THealthMethods_GetNotifications_Cache);
  end;
  FGetNotificationsCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FGetNotificationsCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FGetNotificationsCommand_Cache.Parameters[1].Value.GetString);
end;

function THealthMethodsClient.SearchServices(aSessionKey: string; aSearch: string; const ARequestFilter: string): TJSONObject;
begin
  if FSearchServicesCommand = nil then
  begin
    FSearchServicesCommand := FConnection.CreateCommand;
    FSearchServicesCommand.RequestType := 'GET';
    FSearchServicesCommand.Text := 'THealthMethods.SearchServices';
    FSearchServicesCommand.Prepare(THealthMethods_SearchServices);
  end;
  FSearchServicesCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FSearchServicesCommand.Parameters[1].Value.SetWideString(aSearch);
  FSearchServicesCommand.Execute(ARequestFilter);
  Result := TJSONObject(FSearchServicesCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.SearchServices_Cache(aSessionKey: string; aSearch: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FSearchServicesCommand_Cache = nil then
  begin
    FSearchServicesCommand_Cache := FConnection.CreateCommand;
    FSearchServicesCommand_Cache.RequestType := 'GET';
    FSearchServicesCommand_Cache.Text := 'THealthMethods.SearchServices';
    FSearchServicesCommand_Cache.Prepare(THealthMethods_SearchServices_Cache);
  end;
  FSearchServicesCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FSearchServicesCommand_Cache.Parameters[1].Value.SetWideString(aSearch);
  FSearchServicesCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FSearchServicesCommand_Cache.Parameters[2].Value.GetString);
end;

function THealthMethodsClient.SearchServicesJson(aSessionKey: string; aSearch: string; const ARequestFilter: string): TJSONObject;
begin
  if FSearchServicesJsonCommand = nil then
  begin
    FSearchServicesJsonCommand := FConnection.CreateCommand;
    FSearchServicesJsonCommand.RequestType := 'GET';
    FSearchServicesJsonCommand.Text := 'THealthMethods.SearchServicesJson';
    FSearchServicesJsonCommand.Prepare(THealthMethods_SearchServicesJson);
  end;
  FSearchServicesJsonCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FSearchServicesJsonCommand.Parameters[1].Value.SetWideString(aSearch);
  FSearchServicesJsonCommand.Execute(ARequestFilter);
  Result := TJSONObject(FSearchServicesJsonCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.SearchServicesJson_Cache(aSessionKey: string; aSearch: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FSearchServicesJsonCommand_Cache = nil then
  begin
    FSearchServicesJsonCommand_Cache := FConnection.CreateCommand;
    FSearchServicesJsonCommand_Cache.RequestType := 'GET';
    FSearchServicesJsonCommand_Cache.Text := 'THealthMethods.SearchServicesJson';
    FSearchServicesJsonCommand_Cache.Prepare(THealthMethods_SearchServicesJson_Cache);
  end;
  FSearchServicesJsonCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FSearchServicesJsonCommand_Cache.Parameters[1].Value.SetWideString(aSearch);
  FSearchServicesJsonCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FSearchServicesJsonCommand_Cache.Parameters[2].Value.GetString);
end;

function THealthMethodsClient.SearchInstitutes(aSessionKey: string; iItemID: Integer; iLimit: Integer; aAddress: string; latitude: Double; longitude: Double; iPage: SmallInt; const ARequestFilter: string): TJSONObject;
begin
  if FSearchInstitutesCommand = nil then
  begin
    FSearchInstitutesCommand := FConnection.CreateCommand;
    FSearchInstitutesCommand.RequestType := 'GET';
    FSearchInstitutesCommand.Text := 'THealthMethods.SearchInstitutes';
    FSearchInstitutesCommand.Prepare(THealthMethods_SearchInstitutes);
  end;
  FSearchInstitutesCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FSearchInstitutesCommand.Parameters[1].Value.SetInt32(iItemID);
  FSearchInstitutesCommand.Parameters[2].Value.SetInt32(iLimit);
  FSearchInstitutesCommand.Parameters[3].Value.SetWideString(aAddress);
  FSearchInstitutesCommand.Parameters[4].Value.SetDouble(latitude);
  FSearchInstitutesCommand.Parameters[5].Value.SetDouble(longitude);
  FSearchInstitutesCommand.Parameters[6].Value.SetInt16(iPage);
  FSearchInstitutesCommand.Execute(ARequestFilter);
  Result := TJSONObject(FSearchInstitutesCommand.Parameters[7].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.SearchInstitutes_Cache(aSessionKey: string; iItemID: Integer; iLimit: Integer; aAddress: string; latitude: Double; longitude: Double; iPage: SmallInt; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FSearchInstitutesCommand_Cache = nil then
  begin
    FSearchInstitutesCommand_Cache := FConnection.CreateCommand;
    FSearchInstitutesCommand_Cache.RequestType := 'GET';
    FSearchInstitutesCommand_Cache.Text := 'THealthMethods.SearchInstitutes';
    FSearchInstitutesCommand_Cache.Prepare(THealthMethods_SearchInstitutes_Cache);
  end;
  FSearchInstitutesCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FSearchInstitutesCommand_Cache.Parameters[1].Value.SetInt32(iItemID);
  FSearchInstitutesCommand_Cache.Parameters[2].Value.SetInt32(iLimit);
  FSearchInstitutesCommand_Cache.Parameters[3].Value.SetWideString(aAddress);
  FSearchInstitutesCommand_Cache.Parameters[4].Value.SetDouble(latitude);
  FSearchInstitutesCommand_Cache.Parameters[5].Value.SetDouble(longitude);
  FSearchInstitutesCommand_Cache.Parameters[6].Value.SetInt16(iPage);
  FSearchInstitutesCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FSearchInstitutesCommand_Cache.Parameters[7].Value.GetString);
end;

function THealthMethodsClient.SearchInstitutesJson(aSessionKey: string; aJsonObject: TJSONObject; const ARequestFilter: string): TJSONObject;
begin
  if FSearchInstitutesJsonCommand = nil then
  begin
    FSearchInstitutesJsonCommand := FConnection.CreateCommand;
    FSearchInstitutesJsonCommand.RequestType := 'POST';
    FSearchInstitutesJsonCommand.Text := 'THealthMethods."SearchInstitutesJson"';
    FSearchInstitutesJsonCommand.Prepare(THealthMethods_SearchInstitutesJson);
  end;
  FSearchInstitutesJsonCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FSearchInstitutesJsonCommand.Parameters[1].Value.SetJSONValue(aJsonObject, FInstanceOwner);
  FSearchInstitutesJsonCommand.Execute(ARequestFilter);
  Result := TJSONObject(FSearchInstitutesJsonCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.SearchInstitutesJson_Cache(aSessionKey: string; aJsonObject: TJSONObject; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FSearchInstitutesJsonCommand_Cache = nil then
  begin
    FSearchInstitutesJsonCommand_Cache := FConnection.CreateCommand;
    FSearchInstitutesJsonCommand_Cache.RequestType := 'POST';
    FSearchInstitutesJsonCommand_Cache.Text := 'THealthMethods."SearchInstitutesJson"';
    FSearchInstitutesJsonCommand_Cache.Prepare(THealthMethods_SearchInstitutesJson_Cache);
  end;
  FSearchInstitutesJsonCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FSearchInstitutesJsonCommand_Cache.Parameters[1].Value.SetJSONValue(aJsonObject, FInstanceOwner);
  FSearchInstitutesJsonCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FSearchInstitutesJsonCommand_Cache.Parameters[2].Value.GetString);
end;

function THealthMethodsClient.LoginJson(aJsonObject: TJSONObject; const ARequestFilter: string): TJSONObject;
begin
  if FLoginJsonCommand = nil then
  begin
    FLoginJsonCommand := FConnection.CreateCommand;
    FLoginJsonCommand.RequestType := 'POST';
    FLoginJsonCommand.Text := 'THealthMethods."LoginJson"';
    FLoginJsonCommand.Prepare(THealthMethods_LoginJson);
  end;
  FLoginJsonCommand.Parameters[0].Value.SetJSONValue(aJsonObject, FInstanceOwner);
  FLoginJsonCommand.Execute(ARequestFilter);
  Result := TJSONObject(FLoginJsonCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.LoginJson_Cache(aJsonObject: TJSONObject; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FLoginJsonCommand_Cache = nil then
  begin
    FLoginJsonCommand_Cache := FConnection.CreateCommand;
    FLoginJsonCommand_Cache.RequestType := 'POST';
    FLoginJsonCommand_Cache.Text := 'THealthMethods."LoginJson"';
    FLoginJsonCommand_Cache.Prepare(THealthMethods_LoginJson_Cache);
  end;
  FLoginJsonCommand_Cache.Parameters[0].Value.SetJSONValue(aJsonObject, FInstanceOwner);
  FLoginJsonCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FLoginJsonCommand_Cache.Parameters[1].Value.GetString);
end;

function THealthMethodsClient.CheckSessionKey(aSessionKey: string; aAppName: string; const ARequestFilter: string): TJSONObject;
begin
  if FCheckSessionKeyCommand = nil then
  begin
    FCheckSessionKeyCommand := FConnection.CreateCommand;
    FCheckSessionKeyCommand.RequestType := 'GET';
    FCheckSessionKeyCommand.Text := 'THealthMethods.CheckSessionKey';
    FCheckSessionKeyCommand.Prepare(THealthMethods_CheckSessionKey);
  end;
  FCheckSessionKeyCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FCheckSessionKeyCommand.Parameters[1].Value.SetWideString(aAppName);
  FCheckSessionKeyCommand.Execute(ARequestFilter);
  Result := TJSONObject(FCheckSessionKeyCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.CheckSessionKey_Cache(aSessionKey: string; aAppName: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FCheckSessionKeyCommand_Cache = nil then
  begin
    FCheckSessionKeyCommand_Cache := FConnection.CreateCommand;
    FCheckSessionKeyCommand_Cache.RequestType := 'GET';
    FCheckSessionKeyCommand_Cache.Text := 'THealthMethods.CheckSessionKey';
    FCheckSessionKeyCommand_Cache.Prepare(THealthMethods_CheckSessionKey_Cache);
  end;
  FCheckSessionKeyCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FCheckSessionKeyCommand_Cache.Parameters[1].Value.SetWideString(aAppName);
  FCheckSessionKeyCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FCheckSessionKeyCommand_Cache.Parameters[2].Value.GetString);
end;

function THealthMethodsClient.Login(UserName: string; Password: string; const ARequestFilter: string): TJSONObject;
begin
  if FLoginCommand = nil then
  begin
    FLoginCommand := FConnection.CreateCommand;
    FLoginCommand.RequestType := 'GET';
    FLoginCommand.Text := 'THealthMethods.Login';
    FLoginCommand.Prepare(THealthMethods_Login);
  end;
  FLoginCommand.Parameters[0].Value.SetWideString(UserName);
  FLoginCommand.Parameters[1].Value.SetWideString(Password);
  FLoginCommand.Execute(ARequestFilter);
  Result := TJSONObject(FLoginCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.Login_Cache(UserName: string; Password: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FLoginCommand_Cache = nil then
  begin
    FLoginCommand_Cache := FConnection.CreateCommand;
    FLoginCommand_Cache.RequestType := 'GET';
    FLoginCommand_Cache.Text := 'THealthMethods.Login';
    FLoginCommand_Cache.Prepare(THealthMethods_Login_Cache);
  end;
  FLoginCommand_Cache.Parameters[0].Value.SetWideString(UserName);
  FLoginCommand_Cache.Parameters[1].Value.SetWideString(Password);
  FLoginCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FLoginCommand_Cache.Parameters[2].Value.GetString);
end;

function THealthMethodsClient.StartPublicSession(aAppName: string; const ARequestFilter: string): TJSONObject;
begin
  if FStartPublicSessionCommand = nil then
  begin
    FStartPublicSessionCommand := FConnection.CreateCommand;
    FStartPublicSessionCommand.RequestType := 'GET';
    FStartPublicSessionCommand.Text := 'THealthMethods.StartPublicSession';
    FStartPublicSessionCommand.Prepare(THealthMethods_StartPublicSession);
  end;
  FStartPublicSessionCommand.Parameters[0].Value.SetWideString(aAppName);
  FStartPublicSessionCommand.Execute(ARequestFilter);
  Result := TJSONObject(FStartPublicSessionCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.StartPublicSession_Cache(aAppName: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FStartPublicSessionCommand_Cache = nil then
  begin
    FStartPublicSessionCommand_Cache := FConnection.CreateCommand;
    FStartPublicSessionCommand_Cache.RequestType := 'GET';
    FStartPublicSessionCommand_Cache.Text := 'THealthMethods.StartPublicSession';
    FStartPublicSessionCommand_Cache.Prepare(THealthMethods_StartPublicSession_Cache);
  end;
  FStartPublicSessionCommand_Cache.Parameters[0].Value.SetWideString(aAppName);
  FStartPublicSessionCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FStartPublicSessionCommand_Cache.Parameters[1].Value.GetString);
end;

function THealthMethodsClient.CheckNewUser(aUserName: string; const ARequestFilter: string): Boolean;
begin
  if FCheckNewUserCommand = nil then
  begin
    FCheckNewUserCommand := FConnection.CreateCommand;
    FCheckNewUserCommand.RequestType := 'GET';
    FCheckNewUserCommand.Text := 'THealthMethods.CheckNewUser';
    FCheckNewUserCommand.Prepare(THealthMethods_CheckNewUser);
  end;
  FCheckNewUserCommand.Parameters[0].Value.SetWideString(aUserName);
  FCheckNewUserCommand.Execute(ARequestFilter);
  Result := FCheckNewUserCommand.Parameters[1].Value.GetBoolean;
end;

function THealthMethodsClient.CheckNewUserJson(aUser: TJSONObject; const ARequestFilter: string): Boolean;
begin
  if FCheckNewUserJsonCommand = nil then
  begin
    FCheckNewUserJsonCommand := FConnection.CreateCommand;
    FCheckNewUserJsonCommand.RequestType := 'POST';
    FCheckNewUserJsonCommand.Text := 'THealthMethods."CheckNewUserJson"';
    FCheckNewUserJsonCommand.Prepare(THealthMethods_CheckNewUserJson);
  end;
  FCheckNewUserJsonCommand.Parameters[0].Value.SetJSONValue(aUser, FInstanceOwner);
  FCheckNewUserJsonCommand.Execute(ARequestFilter);
  Result := FCheckNewUserJsonCommand.Parameters[1].Value.GetBoolean;
end;

function THealthMethodsClient.CreateNewUser(aUser: TJSONObject; var aChecked: Boolean; const ARequestFilter: string): TJSONObject;
begin
  if FCreateNewUserCommand = nil then
  begin
    FCreateNewUserCommand := FConnection.CreateCommand;
    FCreateNewUserCommand.RequestType := 'POST';
    FCreateNewUserCommand.Text := 'THealthMethods."CreateNewUser"';
    FCreateNewUserCommand.Prepare(THealthMethods_CreateNewUser);
  end;
  FCreateNewUserCommand.Parameters[0].Value.SetJSONValue(aUser, FInstanceOwner);
  FCreateNewUserCommand.Parameters[1].Value.SetBoolean(aChecked);
  FCreateNewUserCommand.Execute(ARequestFilter);
  aChecked := FCreateNewUserCommand.Parameters[1].Value.GetBoolean;
  Result := TJSONObject(FCreateNewUserCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.CreateNewUser_Cache(aUser: TJSONObject; var aChecked: Boolean; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FCreateNewUserCommand_Cache = nil then
  begin
    FCreateNewUserCommand_Cache := FConnection.CreateCommand;
    FCreateNewUserCommand_Cache.RequestType := 'POST';
    FCreateNewUserCommand_Cache.Text := 'THealthMethods."CreateNewUser"';
    FCreateNewUserCommand_Cache.Prepare(THealthMethods_CreateNewUser_Cache);
  end;
  FCreateNewUserCommand_Cache.Parameters[0].Value.SetJSONValue(aUser, FInstanceOwner);
  FCreateNewUserCommand_Cache.Parameters[1].Value.SetBoolean(aChecked);
  FCreateNewUserCommand_Cache.ExecuteCache(ARequestFilter);
  aChecked := FCreateNewUserCommand_Cache.Parameters[1].Value.GetBoolean;
  Result := TDSRestCachedJSONObject.Create(FCreateNewUserCommand_Cache.Parameters[2].Value.GetString);
end;

function THealthMethodsClient.CreateNewUserPwd(aUserName: string; aPassword: string; var aChecked: Boolean; const ARequestFilter: string): TJSONObject;
begin
  if FCreateNewUserPwdCommand = nil then
  begin
    FCreateNewUserPwdCommand := FConnection.CreateCommand;
    FCreateNewUserPwdCommand.RequestType := 'GET';
    FCreateNewUserPwdCommand.Text := 'THealthMethods.CreateNewUserPwd';
    FCreateNewUserPwdCommand.Prepare(THealthMethods_CreateNewUserPwd);
  end;
  FCreateNewUserPwdCommand.Parameters[0].Value.SetWideString(aUserName);
  FCreateNewUserPwdCommand.Parameters[1].Value.SetWideString(aPassword);
  FCreateNewUserPwdCommand.Parameters[2].Value.SetBoolean(aChecked);
  FCreateNewUserPwdCommand.Execute(ARequestFilter);
  aChecked := FCreateNewUserPwdCommand.Parameters[2].Value.GetBoolean;
  Result := TJSONObject(FCreateNewUserPwdCommand.Parameters[3].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.CreateNewUserPwd_Cache(aUserName: string; aPassword: string; var aChecked: Boolean; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FCreateNewUserPwdCommand_Cache = nil then
  begin
    FCreateNewUserPwdCommand_Cache := FConnection.CreateCommand;
    FCreateNewUserPwdCommand_Cache.RequestType := 'GET';
    FCreateNewUserPwdCommand_Cache.Text := 'THealthMethods.CreateNewUserPwd';
    FCreateNewUserPwdCommand_Cache.Prepare(THealthMethods_CreateNewUserPwd_Cache);
  end;
  FCreateNewUserPwdCommand_Cache.Parameters[0].Value.SetWideString(aUserName);
  FCreateNewUserPwdCommand_Cache.Parameters[1].Value.SetWideString(aPassword);
  FCreateNewUserPwdCommand_Cache.Parameters[2].Value.SetBoolean(aChecked);
  FCreateNewUserPwdCommand_Cache.ExecuteCache(ARequestFilter);
  aChecked := FCreateNewUserPwdCommand_Cache.Parameters[2].Value.GetBoolean;
  Result := TDSRestCachedJSONObject.Create(FCreateNewUserPwdCommand_Cache.Parameters[3].Value.GetString);
end;

function THealthMethodsClient.SaveProfile(aUserProfile: TJSONObject; var aChecked: Boolean; var aError: string; const ARequestFilter: string): TJSONObject;
begin
  if FSaveProfileCommand = nil then
  begin
    FSaveProfileCommand := FConnection.CreateCommand;
    FSaveProfileCommand.RequestType := 'POST';
    FSaveProfileCommand.Text := 'THealthMethods."SaveProfile"';
    FSaveProfileCommand.Prepare(THealthMethods_SaveProfile);
  end;
  FSaveProfileCommand.Parameters[0].Value.SetJSONValue(aUserProfile, FInstanceOwner);
  FSaveProfileCommand.Parameters[1].Value.SetBoolean(aChecked);
  FSaveProfileCommand.Parameters[2].Value.SetWideString(aError);
  FSaveProfileCommand.Execute(ARequestFilter);
  aChecked := FSaveProfileCommand.Parameters[1].Value.GetBoolean;
  aError := FSaveProfileCommand.Parameters[2].Value.GetWideString;
  Result := TJSONObject(FSaveProfileCommand.Parameters[3].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.SaveProfile_Cache(aUserProfile: TJSONObject; var aChecked: Boolean; var aError: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FSaveProfileCommand_Cache = nil then
  begin
    FSaveProfileCommand_Cache := FConnection.CreateCommand;
    FSaveProfileCommand_Cache.RequestType := 'POST';
    FSaveProfileCommand_Cache.Text := 'THealthMethods."SaveProfile"';
    FSaveProfileCommand_Cache.Prepare(THealthMethods_SaveProfile_Cache);
  end;
  FSaveProfileCommand_Cache.Parameters[0].Value.SetJSONValue(aUserProfile, FInstanceOwner);
  FSaveProfileCommand_Cache.Parameters[1].Value.SetBoolean(aChecked);
  FSaveProfileCommand_Cache.Parameters[2].Value.SetWideString(aError);
  FSaveProfileCommand_Cache.ExecuteCache(ARequestFilter);
  aChecked := FSaveProfileCommand_Cache.Parameters[1].Value.GetBoolean;
  aError := FSaveProfileCommand_Cache.Parameters[2].Value.GetWideString;
  Result := TDSRestCachedJSONObject.Create(FSaveProfileCommand_Cache.Parameters[3].Value.GetString);
end;

constructor THealthMethodsClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor THealthMethodsClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor THealthMethodsClient.Destroy;
begin
  FDSServerModuleCreateCommand.DisposeOf;
  FBookingUndoAllCommand.DisposeOf;
  FBookingChoiceCommand.DisposeOf;
  FOpenBookingCommand.DisposeOf;
  FOpenBookingCommand_Cache.DisposeOf;
  FFinalisationCommand.DisposeOf;
  FMeetingsCommand.DisposeOf;
  FMeetingsCommand_Cache.DisposeOf;
  FAssignSessionBookingCommand.DisposeOf;
  FDoBookingCommand.DisposeOf;
  FNotificationReadCommand.DisposeOf;
  FGetNotificationsCommand.DisposeOf;
  FGetNotificationsCommand_Cache.DisposeOf;
  FSearchServicesCommand.DisposeOf;
  FSearchServicesCommand_Cache.DisposeOf;
  FSearchServicesJsonCommand.DisposeOf;
  FSearchServicesJsonCommand_Cache.DisposeOf;
  FSearchInstitutesCommand.DisposeOf;
  FSearchInstitutesCommand_Cache.DisposeOf;
  FSearchInstitutesJsonCommand.DisposeOf;
  FSearchInstitutesJsonCommand_Cache.DisposeOf;
  FLoginJsonCommand.DisposeOf;
  FLoginJsonCommand_Cache.DisposeOf;
  FCheckSessionKeyCommand.DisposeOf;
  FCheckSessionKeyCommand_Cache.DisposeOf;
  FLoginCommand.DisposeOf;
  FLoginCommand_Cache.DisposeOf;
  FStartPublicSessionCommand.DisposeOf;
  FStartPublicSessionCommand_Cache.DisposeOf;
  FCheckNewUserCommand.DisposeOf;
  FCheckNewUserJsonCommand.DisposeOf;
  FCreateNewUserCommand.DisposeOf;
  FCreateNewUserCommand_Cache.DisposeOf;
  FCreateNewUserPwdCommand.DisposeOf;
  FCreateNewUserPwdCommand_Cache.DisposeOf;
  FSaveProfileCommand.DisposeOf;
  FSaveProfileCommand_Cache.DisposeOf;
  inherited;
end;

end.

