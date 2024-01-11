unit Janua.UniGUI.MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes,
  // Januaproject
  Janua.Anagraph.ViewModel.Intf,
  Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types, Janua.System.ViewModel.Intf,
  JOrm.System.Intf, JOrm.Anagraph.Intf, Data.DB, MemDS,
  DBAccess, Uni, UniProvider, PostgreSQLUniProvider, uniGUIBaseClasses, uniGUIClasses, UniFSTheme,
  Janua.Unidac.Connection;

type

  TUniMainModule = class(TUniGUIMainModule)
    PgErgoConnection: TJanuaUniConnection;
    PgUniProv: TPostgreSQLUniProvider;
    FSTheme: TUniFSTheme;
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure UniGUIMainModuleBeforeLogin(Sender: TObject; var Handled: Boolean);
  private
    FUserSessionVM: IJanuaSystemUserSessionViewModel;
    FMainAnagraphModel: IJanuaDBAnagraphModel;
  protected
    function GetLoginCount: Integer;
    function GetLoginRegister: TLoginRegister;
    function GetUserSessionVM: IJanuaSystemUserSessionViewModel;
    function GetMainAnagraphModel: IJanuaDBAnagraphModel;
    function GetLocalUserProfile: IUserProfile;
    function GetLocalAnagraph: IAnagraphView;
    function GetAnagraphProfile: IAnagraphView;
    procedure SetLoginRegister(const Value: TLoginRegister);
    { Private declarations }
  public
    { Public declarations }
    function TryLoginOrRegister: Boolean;
  public
    /// <summary> Point to UserSessionVM User profile to be rendered to login register Form </summary>
    property LocalUserProfile: IUserProfile read GetLocalUserProfile;
    /// <summary> Point to UserSessionVM User profile to be rendered to login register Form </summary>
    property LocalAnagraph: IAnagraphView read GetLocalAnagraph;
    /// <summary> Refers the login attempts count </summary>
    property LoginCount: Integer read GetLoginCount;

    property LoginRegister: TLoginRegister read GetLoginRegister write SetLoginRegister;
    property UserSessionVM: IJanuaSystemUserSessionViewModel read GetUserSessionVM;
    property MainAnagraphModel: IJanuaDBAnagraphModel read FMainAnagraphModel;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIDialogs, Janua.UniGUI.ServerModule, uniGUIApplication, Janua.Core.Functions,
  Janua.Application.Framework, Janua.Orm.Impl;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

{ TUniMainModule }

function TUniMainModule.GetAnagraphProfile: IAnagraphView;
begin
  Result := UserSessionVM.AnagraphProfile;
end;

function TUniMainModule.GetLocalAnagraph: IAnagraphView;
begin
  Result := UserSessionVM.LocalAnagraph
end;

function TUniMainModule.GetLocalUserProfile: IUserProfile;
begin
  Result := UserSessionVM.LocalUserProfile
end;

function TUniMainModule.GetLoginCount: Integer;
begin
  Result := UserSessionVM.LoginCount;
end;

function TUniMainModule.GetLoginRegister: TLoginRegister;
begin
  Result := UserSessionVM.LoginRegister
end;

function TUniMainModule.GetMainAnagraphModel: IJanuaDBAnagraphModel;
begin
  Result := FMainAnagraphModel
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
    e.SchemaID := TJanuaApplication.SchemaID;
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

procedure TUniMainModule.SetLoginRegister(const Value: TLoginRegister);
begin
  UserSessionVM.LoginRegister := Value;
end;

function TUniMainModule.TryLoginOrRegister: Boolean;
begin
  Result := UserSessionVM.TryLoginOrRegister(
    procedure(aMessage: string)
    begin
      ShowMessage(aMessage);
    end);
end;

procedure TUniMainModule.UniGUIMainModuleBeforeLogin(Sender: TObject; var Handled: Boolean);
begin
  FSTheme.Aplly;
end;

initialization

RegisterMainModuleClass(TUniMainModule);

end.
