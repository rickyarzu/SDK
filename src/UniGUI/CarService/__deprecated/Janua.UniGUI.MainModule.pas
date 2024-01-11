unit Janua.UniGUI.MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes,
  // Januaproject
  Janua.Anagraph.ViewModel.Intf,
  Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types, Janua.System.ViewModel.Intf,
  JOrm.System.UserProfile.Custom.Intf, JOrm.System.Intf, JOrm.Anagraph.Intf, Data.DB, MemDS,
  DBAccess, Uni, UniProvider, PostgreSQLUniProvider;

type
  TLoginRegister = (lrLogin, lrRegister);

  TUniMainModule = class(TUniGUIMainModule)
    PgErgoConnection: TJanuaUniConnection;
    PgUniProv: TPostgreSQLUniProvider;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure qrySingleAnagraphBeforePost(DataSet: TDataSet);
  private
    FLoginCount: Integer;
    FLoginRegister: TLoginRegister;
    FAnagraphProfile: IAnagraphView;
    FUserSessionVM: IJanuaSystemUserSessionViewModel;
    FMainAnagraphModel: IJanuaDBAnagraphModel;
    procedure SetLoginCount(const Value: Integer);
    procedure SetLoginRegister(const Value: TLoginRegister);
    procedure SetAnagraphProfile(const Value: IAnagraphView);
    procedure SetUser(const Value: IUser);
    procedure SetUserProfile(const Value: IUserProfile);
    function GetUserSessionVM: IJanuaSystemUserSessionViewModel;
    procedure SetMainAnagraphModel(const Value: IJanuaDBAnagraphModel);
    function GetUser: IUser;
    function GetAnagraphProfile: IAnagraphView;
    { Private declarations }
  public
    { Public declarations }
    function TryLoginOrRegister: Boolean;
    function CreateNewAnagraph(const Value: IUser): Integer;
  public
    property User: IUser read GetUser write SetUser;
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile write SetAnagraphProfile;
    property LoginCount: Integer read FLoginCount write SetLoginCount;
    property LoginRegister: TLoginRegister read FLoginRegister write SetLoginRegister;
    property UserSessionVM: IJanuaSystemUserSessionViewModel read GetUserSessionVM;
    property MainAnagraphModel: IJanuaDBAnagraphModel read FMainAnagraphModel write SetMainAnagraphModel;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, Janua.CarService.UniGUI.ServerModule, uniGUIApplication, Janua.Core.Functions,
  Janua.Application.Framework;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

{ TUniMainModule }

function TUniMainModule.CreateNewAnagraph(const Value: IUser): Integer;
begin
  if UserSessionVM.SilentLogin(Value) then
  begin
    if not User.DbUserId.AsInteger > 0 then
      raise Exception.Create('User Registration Error ');

    if FAnagraphProfile.GUID.IsEmpty then
      FAnagraphProfile.GUID := TGUID.NewGuid;

    qrySingleAnagraph.Close;
    qrySingleAnagraph.ParamByName('jguid').AsString := FAnagraphProfile.GUIDString;
    qrySingleAnagraph.Open;
    FAnagraphProfile.DirectSaveToDataset(qrySingleAnagraph);
    { FAnagraphProfile.DBDataset := qrySingleAnagraph;
      qrySingleAnagraph.Edit;
      FAnagraphProfile.SaveToDataset(True);
      if qrySingleAnagraph.State in [dsInsert, dsEdit] then
      qrySingleAnagraph.Post; }

    qrySingleAnagraph.Close;
    qrySingleAnagraph.ParamByName('jguid').AsString := FAnagraphProfile.GUIDString;
    qrySingleAnagraph.Open;

    FAnagraphProfile.DirectLoadFromDataset(qrySingleAnagraph);

    Result := FAnagraphProfile.AnagraphId.AsInteger;
    sqlUpdateUser.ParamByName('db_user_id').AsInteger := User.DbUserId.AsInteger;
    sqlUpdateUser.ParamByName('anagraph_id').AsInteger := Result;
    sqlUpdateUser.Execute;

    if Result > 0 then
    begin
      UserSessionVM.CurrentRecord.UserProfile.AnagraphId.AsInteger := Result;
    end;
  end;

end;

function TUniMainModule.GetAnagraphProfile: IAnagraphView;
begin

end;

function TUniMainModule.GetUser: IUser;
begin
  Result := FUserProfile.User
end;

function TUniMainModule.GetUserSessionVM: IJanuaSystemUserSessionViewModel;
begin
  if not Assigned(FUserSessionVM) then
  begin
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaSystemUserSessionViewModel, FUserSessionVM) then
      // GetInterfacedObject(IJanuaStyleManager, lStyleManager);
      // if Supports(lStyleManager, IJanuaStyleManager, FStyleManager) then
      raise Exception.Create('JanuaApplication IJanuaSystemUserSessionViewModel not registered ')
    else
      FUserSessionVM.Activate;
  end;
  Result := FUserSessionVM;
end;

procedure TUniMainModule.PgErgoConnectionBeforeConnect(Sender: TObject);
var
  I: Integer;
  a: TJanuaServerRecordConf;
  e: TJanuaUniConnection;
  s: string;
begin
  a := TJanuaApplication.JanuaServerConf;
  e := PgErgoConnection;
  begin
    e.Server := TJanuaApplication.ServerAddress;
    e.Port := TJanuaApplication.ServerPort;
    e.Database := TJanuaApplication.ServerDatabaseName;
    // non aggiorno lo schema in quanto ogni server ha il suo schema .........................................
    s := 'PostgreSQL.Schema' + e.SpecificOptions.NameValueSeparator + a.Schema;
    I := e.SpecificOptions.IndexOfName('PostgreSQL.Schema');
    if (I > -1) and (e.SpecificOptions[I] <> s) then
      e.SpecificOptions[I] := s;
    e.Password := a.Password;
    e.Username := a.Username;
    s := 'PostgreSQL.UseUnicode' + e.SpecificOptions.NameValueSeparator + 'True';
    I := e.SpecificOptions.IndexOfName('PostgreSQL.UseUnicode');
    if (I > -1) and (e.SpecificOptions[I] <> s) then
      e.SpecificOptions[I] := s;
  end;

end;

procedure TUniMainModule.qrySingleAnagraphBeforePost(DataSet: TDataSet);
begin
  qrySingleAnagraphan_currency_id.Value := 1;
end;

procedure TUniMainModule.SetAnagraphProfile(const Value: IAnagraphView);
begin
  FAnagraphProfile := Value;
end;

procedure TUniMainModule.SetLoginCount(const Value: Integer);
begin
  FLoginCount := Value;
end;

procedure TUniMainModule.SetLoginRegister(const Value: TLoginRegister);
begin
  FLoginRegister := Value;
end;

procedure TUniMainModule.SetMainAnagraphModel(const Value: IJanuaDBAnagraphModel);
begin
  FMainAnagraphModel := Value;
end;

procedure TUniMainModule.SetUser(const Value: IUser);
begin
  FUserProfile.User := Value;
end;

procedure TUniMainModule.SetUserProfile(const Value: IUserProfile);
begin
  FUserProfile := Value;
end;

function TUniMainModule.TryLoginOrRegister: Boolean;
begin
  Inc(FLoginCount);
  // Result := False;
  if FLoginRegister = TLoginRegister.lrLogin then
  begin
    Result := UserSessionVM.SilentLogin(FUserProfile.User);
    if Result then
    begin
      FUserProfile := nil;
      FUserProfile := UserSessionVM.CurrentRecord.UserProfile;
    end;
  end
  else
  begin
    Result := UserSessionVM.RegisterUser(FUserProfile) and (CreateNewAnagraph(User) > 0);
    if Result then
    begin
      FUserProfile := nil;
      FUserProfile := UserSessionVM.CurrentRecord.UserProfile;
      sqlUpdateUser.ParamByName('anagraph_id').AsInteger := FAnagraphProfile.AnagraphId.AsInteger;
      sqlUpdateUser.Execute;
    end;
  end;

end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
  FLoginCount := 0;
  // Setup from Janua Application Framework
  { TJanuaOrmFactory.TryGetRecordIntf(IUser, FUser, 'User'); }
  TJanuaOrmFactory.TryGetRecordIntf(IUserProfile, FUserProfile, 'UserProfile');
  TJanuaOrmFactory.TryGetRecordIntf(IAnagraphView, FAnagraphProfile, 'AnagraphProfile');
  // TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphModel, FJanuaDBAnagraphModel);

  FLoginRegister := TLoginRegister.lrLogin;
end;

initialization

RegisterMainModuleClass(TUniMainModule);

end.
