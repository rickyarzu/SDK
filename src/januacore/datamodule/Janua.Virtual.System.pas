unit Janua.Virtual.System;

interface

uses Janua.Orm.Intf, Janua.Server.Intf, Janua.Core.Types,
  // Data Module
  udmVirtualSystemServer,
  // Orm
  JOrm.System.Intf,
  // Parent
  Janua.Core.DB.Intf, Janua.System.Server.Intf, Janua.System.Server.Impl;

type
  TJanuaVirtualSystemStorage = class(TJanuaDBSystemStorage, IJanuaStorage, IJanuaSystemStorage)
  private
    FDM: TdmVirtualSystemServer;
  strict protected
    function InternalLogin: boolean;
    function InternalLoginSocial: boolean;
  strict protected
    procedure SetAfterDestroyDataset; override;
    procedure SetInternalCreateDBDataSets; override;
    procedure SetInternalCreateDataset; override;
    procedure SetAfterCreateDataset; override;
    procedure SetInternalDestroyDataset; override;
    procedure SetInternalAssignDatasets; override;

  public
    constructor Create; override;
    destructor Destroy; override;
  public
    function DoPayment(aAmount: Currency; aDate: TDate): boolean;
    procedure CloseProfile; override;
    procedure SetUserKey(const Value: String);
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    procedure SetConfirmMail(const Value: boolean);
    procedure SetLoggedIn(const Value: boolean);
    procedure SetGuestUserKey(const Value: string);
    procedure SetGuestProfile(const Value: IUserProfile);
    procedure SetLocalTest(const Value: boolean);
    procedure SetSearchUserProfile(const Value: IUserProfile);
    procedure OpenUserProfile; override;
    function InternalAddUser(const aUser: IUserProfile): boolean;
    function InternalAddUserSocial(const aUser: IUserProfile): boolean;
    function InternalCheckUserSocial(const aUser: IUserProfile): boolean;
    function InternalCheckUser(var count: integer; aUser: IUserProfile): boolean;
    { Private declarations }
    { Public declarations }
    procedure SetSelectedSchema(const Value: Int64); override;
    // Imposta la lista degli Schemi
    function SaveProfile(const aProfile: IUserProfile): boolean; override;
    procedure SetProfileFromQuery; override;
    function FindUserByKey(const key: string): boolean; override;
    function FindUserByID(const Id: integer): boolean; override;
    function SearchUserByID(const aID: integer): boolean; override;
    function SearchUserByName(const aName: string): boolean; override;
    function SearchUserByEmail(const aMail: string): boolean; override;
    function searchuserbyGUID(const aGUID: TGUID): boolean; override;
    function SearchUserBySocialID(aID: string; aSocial: string): boolean; override;
    function AddUser(const aUser: IUserProfile): boolean; override;
    function AdminAddUser(const aUser: IUserProfile): boolean; override;
    function login(const aUser: IUser): boolean; override;
    function LoginByKey(const aKey: string): boolean; override;
    function LoginByKey: boolean; override;
    procedure GetSession; override;
    function findaddress(const aAddress: string): smallint; override;
    function findaddressbyID(const aID: Int64): smallint; override;
    procedure SetGuestByKey(const aKey: string);
    procedure ConnectSession(const SessionKey: string);
    function SearchUsers(const aUserName, aEmail: string): integer; override;
    procedure GetSchemasList(const SessionKey: string); override;
    // è possibile avviare una Sessione Pubblica direttamente da un URL
    function StartSessionByUrl(const aUrl: string): boolean;
    function DoPaymentSearchUser(const aAmount: Currency; const aDate: TDate): boolean; override;
    function DoPaymentSession(const aAmount: Currency; const aDate: TDate): boolean; override;
    function CheckUser(const aUser: IUserProfile): boolean; override;
    function SearchUserByKey(const aKey: string): boolean; override;
    /// <summary> Deletes an user from the storage after searching its profile </summary>
    function DelUser(const aUser: IUserProfile): boolean; override;
    /// <summary> Deletes an user from the storage using Searched User Profile </summary>
    function DelUser: boolean; override;
    /// <summary> Deletes an user from the storage using Searched User Profile by User ID </summary>
    function DelUser(const aUserID: integer): boolean; override;
    /// <summary> Deletes an user from the storage using Searched User Profile by EMail UID </summary>
    function DelUser(const aEmail: string): boolean; override;
    /// <summary> Deletes an user from the storage using Searched User Profile by GUID </summary>
    function DelUser(const aGUID: TGUID): boolean; override;
  end;

type
  TJanuaServerVirtualSystemFactory = class(TJanuaServerSystemFactory, IJanuaServerSystemFactory)
  public
    function GetSystemStorage: IJanuaSystemStorage; override;
  end;

implementation

uses Spring, System.SysUtils, System.StrUtils, Janua.Orm.Types, Janua.Orm.Firedac;

{ TJanuaServerVirtualSystemFactory }

function TJanuaServerVirtualSystemFactory.GetSystemStorage: IJanuaSystemStorage;
begin
  Result := TJanuaVirtualSystemStorage.Create;
end;

{ TJanuaVirtualSystemStorage }

function TJanuaVirtualSystemStorage.AddUser(const aUser: IUserProfile): boolean;
begin
  Result := not SearchUserByEmail(aUser.User.Email.AsString);
  if Result then
    self.FUserLogin := aUser.User; // .GetUserProfile.Assign(aUser);
end;

function TJanuaVirtualSystemStorage.AdminAddUser(const aUser: IUserProfile): boolean;
begin
  { TODO : Implementare VirtualSystemStorage AdminAddUser }
  Result := False;
end;

function TJanuaVirtualSystemStorage.CheckUser(const aUser: IUserProfile): boolean;
begin
  Result := False;
end;

procedure TJanuaVirtualSystemStorage.CloseProfile;
begin

end;

procedure TJanuaVirtualSystemStorage.ConnectSession(const SessionKey: string);
begin

end;

constructor TJanuaVirtualSystemStorage.Create;
begin
  inherited;
end;

function TJanuaVirtualSystemStorage.DelUser(const aUser: IUserProfile): boolean;
begin
  Result := (aUser.Db_user_id.AsInteger > 0) and DelUser(aUser.Db_user_id.AsInteger)
end;

function TJanuaVirtualSystemStorage.DelUser: boolean;
begin
  Result := FDM.vtUsers.RecordCount > 0;
  FDM.vtUsers.Delete;
end;

function TJanuaVirtualSystemStorage.DelUser(const aUserID: integer): boolean;
begin
  Result := self.FindUserByID(aUserID) and DelUser;

end;

destructor TJanuaVirtualSystemStorage.Destroy;
begin
  if Assigned(self.FDM) then
    FreeAndNil(FDM);
  inherited;
end;

function TJanuaVirtualSystemStorage.DoPayment(aAmount: Currency; aDate: TDate): boolean;
begin
  self.FUserLogin.Payment.AsBoolean := True;
  self.FUserLogin.PaymentExpirationDate.AsDateTime := aDate;
  Result := True;
end;

function TJanuaVirtualSystemStorage.DoPaymentSearchUser(const aAmount: Currency; const aDate: TDate): boolean;
begin
  self.FUserLogin.Payment.AsBoolean := True;
  self.FUserLogin.PaymentExpirationDate.AsDateTime := aDate;
  Result := True;
end;

function TJanuaVirtualSystemStorage.DoPaymentSession(const aAmount: Currency; const aDate: TDate): boolean;
begin
  self.FUserLogin.Payment.AsBoolean := True;
  self.FUserLogin.PaymentExpirationDate.AsDateTime := aDate;
  Result := True;
end;

function TJanuaVirtualSystemStorage.findaddress(const aAddress: string): smallint;
begin
  { TODO : Implementare VirtualSystemStorage findaddress }
  Result := -1;
end;

function TJanuaVirtualSystemStorage.findaddressbyID(const aID: Int64): smallint;
begin
  { TODO : Implementare VirtualSystemStorage findaddressbyID }
  Result := -1;
end;

function TJanuaVirtualSystemStorage.FindUserByID(const Id: integer): boolean;
begin
  Result := self.FDM.vtUsers.Locate('db_user_id', Id);

end;

function TJanuaVirtualSystemStorage.FindUserByKey(const key: string): boolean;
begin
  Result := self.FDM.vtUsers.Locate('verify_token', key);
end;

procedure TJanuaVirtualSystemStorage.GetSchemasList(const SessionKey: string);
begin

end;

procedure TJanuaVirtualSystemStorage.GetSession;
begin

end;

function TJanuaVirtualSystemStorage.InternalAddUser(const aUser: IUserProfile): boolean;
begin
  { TODO : Implementare VirtualSystemStorage InternalAddUser }
  Result := False;
end;

function TJanuaVirtualSystemStorage.InternalAddUserSocial(const aUser: IUserProfile): boolean;
begin
  { TODO : Implementare VirtualSystemStorage InternalAddUserSocial }
  Result := False;
end;

function TJanuaVirtualSystemStorage.InternalCheckUser(var count: integer; aUser: IUserProfile): boolean;
var
  Datasets: TArray<IJanuaDBDataset>;
begin
  Result := self.SearchUserByEmail(aUser.User.Email.AsString);
  SetLength(Datasets, 1);
  Datasets[0] := GetjdsUsers;
  if Result then
    FUserLogin.LoadFromDataset(GetjdsUsers);
  // self.GetUserProfile.LoadFromDataset(GetjdsUserProfiles, Datasets);
end;

function TJanuaVirtualSystemStorage.InternalCheckUserSocial(const aUser: IUserProfile): boolean;
begin
  { TODO : Implementare VirtualSystemStorage InternalCheckUserSocial }
  Result := False;
end;

function TJanuaVirtualSystemStorage.InternalLogin: boolean;
begin
  { TODO : Implementare VirtualSystemStorage InternalLogin }
  Result := False;
end;

function TJanuaVirtualSystemStorage.InternalLoginSocial: boolean;
begin
  { TODO : Implementare VirtualSystemStorage InternalLoginSocial }
  Result := False;
end;

function TJanuaVirtualSystemStorage.login(const aUser: IUser): boolean;
var
  LDatasets: TArray<IJanuaDBDataset>;
  LSessionKey: string;
begin
  Guard.CheckNotNull(FDM, self.ClassName + '.login FDM IS NIL');
  begin
    // per verificare la login esegue un Locate su tabella
    Result := SearchUserByEmail(aUser.Email.AsString);
    Guard.CheckNotNull(GetjdsUsers, self.ClassName + '.login GetjdsUsers is nil');
    Guard.CheckNotNull(GetjdsUsers.Dataset, self.ClassName + '.login GetjdsUsers.Dataset is nil');
    if Result then
      Result := FDM.vtUserspassword.AsString.ToLower = aUser.Password.AsString.ToLower;
    // se risultato va a buon fine allora esegue un Upload dei dati.
    if Result then
    begin
      self.FUserLogin.LoadFromDataset(GetjdsUsers, LDatasets);
      // occorre anche simulare il caricamento di una sessione dell'utente che ha fatto la login se corretta
      FDM.vtSession.Locate('db_user_id', FUserLogin.DbUserId.AsInteger);
      LSessionKey := FDM.vtSessiondb_session_key.AsWideString; // riprendo il valore della chiave
      FDM.vtSession.Filter := 'db_session_key = ' + '''' + LSessionKey + '''';
      FDM.vtSession.Filtered := True;
      // Cerco la prima sessione valida dell'utente
      // User Session dovrebbe effettuare il caricamento non solo dalla sessione ma anche dalla scheda utente
      SetLength(LDatasets, 0); // svuoto l'elenco dei dataset
      SetLength(LDatasets, 2); // Imposto l'elenco dei dataset a 2 = FUser, FUserProfile
      Guard.CheckNotNull(GetjdsUserProfiles, self.ClassName + '.login GetjdsUserProfiles is nil');
      Guard.CheckNotNull(GetjdsUserProfiles.Dataset,
        self.ClassName + '.login GetjdsUserProfiles.Dataset is nil');
      // imposto i due Dataset nell'ordine con cui erano stati creati nella classe base di IUserSession
      FDM.vtUserProfiles.Locate('db_user_id', FUserLogin.DbUserId.AsInteger);
      FDM.vtUserProfiles.Filter := 'db_user_id = ' + FUserLogin.DbUserId.AsString;
      FDM.vtUserProfiles.Filtered := True;
      LDatasets[0] := self.GetjdsUsers;
      LDatasets[1] := self.GetjdsUserProfiles;
      // a questo punto carico i dati.
      // 2019-08-05 AR Data Loading moved to Server System
      // GetUserSession.LoadFromDataset(GetjdsUserSessions, LDatasets);
      {
        FDM.vtUsers.Filter := '';
        FDM.vtUsers.Filtered := False;

        FDM.vtSession.Filter := '';
        FDM.vtSession.Filtered := False;

        FDM.vtUserProfiles.Filter := '';
        FDM.vtUserProfiles.Filtered := False;
      }
    end;
  end;
end;

function TJanuaVirtualSystemStorage.LoginByKey: boolean;
var
  LDatasets: TArray<IJanuaDBDataset>;
begin
  Result := False;
  if self.GetSessionKey <> '' then
  begin
    // per verificare la login esegue un Locate su tabella
    FDM.vtSession.Filter := 'db_session_key = ' + '''' + GetSessionKey + '''';
    FDM.vtSession.Filtered := True;

    Result := FDM.vtSession.RecordCount = 1;

    Guard.CheckNotNull(GetjdsUsers, self.ClassName + '.LoginByKey GetjdsUsers is nil');
    Guard.CheckNotNull(GetjdsUsers.Dataset, self.ClassName + '.LoginByKey GetjdsUsers.Dataset is nil');

    Result := Result and FDM.vtUserProfiles.Locate('db_user_id', FDM.vtSessiondb_user_id.AsString) and
      FDM.vtUsers.Locate('db_user_id', FDM.vtSessiondb_user_id.AsString);

    if Result then
    begin
      FDM.vtUserProfiles.Filter := 'db_user_id = ' + FDM.vtSessiondb_user_id.AsString;
      FDM.vtUserProfiles.Filtered := True;
      FDM.vtUsers.Filter := 'db_user_id = ' + FDM.vtSessiondb_user_id.AsString;
      FDM.vtUsers.Filtered := True;
      // 2019-08-05 AR Data Loading moved to Server System
      self.FUserLogin.LoadFromDataset(GetjdsUsers, LDatasets);
      // Cerco la prima sessione valida dell'utente
      // User Session dovrebbe effettuare il caricamento non solo dalla sessione ma anche dalla scheda utente
      SetLength(LDatasets, 0); // svuoto l'elenco dei dataset
      SetLength(LDatasets, 2); // Imposto l'elenco dei dataset a 2 = FUser, FUserProfile
      Guard.CheckNotNull(GetjdsUserProfiles, self.ClassName + '.login GetjdsUserProfiles is nil');
      Guard.CheckNotNull(GetjdsUserProfiles.Dataset,
        self.ClassName + '.LoginByKey GetjdsUserProfiles.Dataset is nil');
      // imposto i due Dataset nell'ordine con cui erano stati creati nella classe base di IUserSession

      LDatasets[0] := self.GetjdsUsers;
      LDatasets[1] := self.GetjdsUserProfiles;
      // a questo punto carico i dati.
      // 2019-08-05 AR Data Loading moved to Server System
      // GetUserSession.LoadFromDataset(self.GetjdsUserSessions, LDatasets);

      FDM.vtUsers.Filter := '';
      FDM.vtUsers.Filtered := False;

      FDM.vtSession.Filter := '';
      FDM.vtSession.Filtered := False;

      FDM.vtUserProfiles.Filter := '';
      FDM.vtUserProfiles.Filtered := False;
    end;
  end;
end;

function TJanuaVirtualSystemStorage.LoginByKey(const aKey: string): boolean;
begin
  Guard.CheckNotNull(FDM, self.ClassName + '.login FDM IS NIL');
  self.SetSessionKey(aKey);
  Result := LoginByKey;
end;

procedure TJanuaVirtualSystemStorage.OpenUserProfile;
begin

end;

function TJanuaVirtualSystemStorage.SaveProfile(const aProfile: IUserProfile): boolean;
begin
  Result := False;
  { TODO : TJanuaVirtualSystemStorage.SaveProfile(aProfile: IUserProfile) }
end;

function TJanuaVirtualSystemStorage.SearchUserByEmail(const aMail: string): boolean;
begin
  Result := False;
  if FDM.vtUsers.Locate('email', aMail.ToLower) then
  begin
    Result := FDM.vtUsersdb_user_id.AsInteger > 0;
    FDM.vtUsers.Filter := 'db_user_id in (' + FDM.vtUsersdb_user_id.AsString + ')';
    FDM.vtUsers.Filtered := True;
    Result := (FDM.vtUsers.RecordCount > 0) and (FDM.vtUsersdb_user_id.AsInteger > 0)
  end;
end;

function TJanuaVirtualSystemStorage.searchuserbyGUID(const aGUID: TGUID): boolean;
begin
  Result := self.FDM.vtUsers.Locate('ssrs_jguid', aGUID.ToString)

end;

function TJanuaVirtualSystemStorage.SearchUserByID(const aID: integer): boolean;
begin
  if FDM.vtUsers.Locate('db_user_id', aID) then
  begin
    Result := FDM.vtUsersdb_user_id.AsInteger > 0;
    FDM.vtUsers.Filter := 'db_user_id in (' + Result.ToString + ')';
    FDM.vtUsers.Filtered := True;
  end;
end;

function TJanuaVirtualSystemStorage.SearchUserByKey(const aKey: string): boolean;
begin
  Result := False;
end;

function TJanuaVirtualSystemStorage.SearchUserByName(const aName: string): boolean;
begin
  { TODO : Implementare VirtualSystemStorage SearchUserByName }
  Result := False;
end;

function TJanuaVirtualSystemStorage.SearchUserBySocialID(aID, aSocial: string): boolean;
begin
  { TODO : Implementare VirtualSystemStorage SearchUserBySocialID }
  Result := False;
end;

function TJanuaVirtualSystemStorage.SearchUsers(const aUserName, aEmail: string): integer;
begin
  { TODO : Implementare VirtualSystemStorage SearchUsers }
  Result := -1;
end;

procedure TJanuaVirtualSystemStorage.SetAfterCreateDataset;
begin
  inherited;

end;

procedure TJanuaVirtualSystemStorage.SetAfterDestroyDataset;
begin
  inherited;

end;

procedure TJanuaVirtualSystemStorage.SetConfirmMail(const Value: boolean);
begin

end;

procedure TJanuaVirtualSystemStorage.SetGuestByKey(const aKey: string);
begin

end;

procedure TJanuaVirtualSystemStorage.SetGuestProfile(const Value: IUserProfile);
begin

end;

procedure TJanuaVirtualSystemStorage.SetGuestUserKey(const Value: string);
begin

end;

procedure TJanuaVirtualSystemStorage.SetInternalAssignDatasets;
begin
  inherited;

end;

procedure TJanuaVirtualSystemStorage.SetInternalCreateDataset;
begin
  inherited;

  FInternalCreateDataset := procedure
    begin
      if not Assigned(FDM) then
        FDM := TdmVirtualSystemServer.Create(nil);
    end;
end;

procedure TJanuaVirtualSystemStorage.SetInternalCreateDBDataSets;
begin
  inherited;
  FInternalCreateDBDataSets := procedure
    begin
      SetjdsUsers(TJanuaVtDataset.Create(FDM.vtUsers, [TJanuaEntity.SysDbUsers]));
      SetjdsUserProfiles(TJanuaVtDataset.Create(FDM.vtUserProfiles, [TJanuaEntity.SysDbUsersProfiles]));
      // ---- Note: This Dataset includes informations from 3 entities on Database is used to test multiple
      // ---- entities on Recordsets
      SetjdsUserSessions(TJanuaVtDataset.Create(FDM.vtUserSessions, [SysDbUserSessions, SysDbUsersProfiles,
        SysDbUsers]));
      SetjdsSearchUserProfiles(TJanuaVtDataset.Create(FDM.vtUserProfiles, [TJanuaEntity.SysDbUsersProfiles]));
      SetjdsSearchUsers(TJanuaVtDataset.Create(FDM.vtUsers, [TJanuaEntity.SysDbUsers]));
    end;

end;

procedure TJanuaVirtualSystemStorage.SetInternalDestroyDataset;
begin
  inherited;

  FInternalDestroyDataset := procedure
    begin
      if Assigned(FDM) then
      begin
        self.FDM.Free;
        FDM := nil;
      end;
    end;
end;

procedure TJanuaVirtualSystemStorage.SetLocalTest(const Value: boolean);
begin

end;

procedure TJanuaVirtualSystemStorage.SetLoggedIn(const Value: boolean);
begin

end;

procedure TJanuaVirtualSystemStorage.SetProfileFromQuery;
begin

end;

procedure TJanuaVirtualSystemStorage.SetRegisterError(const Value: TJanuaRegisterError);
begin
  { TODO : Implementare VirtualSystemStorage SetRegisterError }
end;

procedure TJanuaVirtualSystemStorage.SetSearchUserProfile(const Value: IUserProfile);
begin
  { TODO : Implementare VirtualSystemStorage SetSearchUserProfile }
end;

procedure TJanuaVirtualSystemStorage.SetSelectedSchema(const Value: Int64);
begin
  { TODO : Implementare VirtualSystemStorage SetSelectedSchema }
end;

procedure TJanuaVirtualSystemStorage.SetUserKey(const Value: String);
begin
  { TODO : Implementare VirtualSystemStorage SetUserKey }
end;

function TJanuaVirtualSystemStorage.StartSessionByUrl(const aUrl: string): boolean;
begin
  { TODO : Implementare VirtualSystemStorage StartSessionByUrl }
  Result := False;
end;

function TJanuaVirtualSystemStorage.DelUser(const aGUID: TGUID): boolean;
begin
  Result := searchuserbyGUID(aGUID) and DelUser;
end;

function TJanuaVirtualSystemStorage.DelUser(const aEmail: string): boolean;
begin
  Result := SearchUserByEmail(aEmail) and DelUser;
end;

end.
