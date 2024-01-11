unit Janua.Core.Conf;

{$I JANUACORE.INC}

interface

uses Janua.Core.Functions, Janua.Http.Types, Janua.Core.Types, Janua.Core.Classes, System.Classes, Janua.Controls.Dialogs.Intf,
  Janua.Controls.Dialogs.Impl;

type
  TJanuaServerConfiguration = class(TJanuaPersistent)
  private
    function GetAddress: string;
    function GetDatabaseName: string;
    function GetDirect: boolean;
    function GetPassword: string;
    function GetPort: Word;
    function GetSchema: string;
    function GetUsername: string;
    procedure SetAddress(const Value: string);
    procedure SetDatabaseName(const Value: string);
    procedure SetDirect(const Value: boolean);
    procedure SetPassword(const Value: string);
    procedure SetPort(const Value: Word);
    procedure SetSchema(const Value: string);
    procedure SetUsername(const Value: string);
    function GetDirectory: String;
    procedure SetDirectory(const Value: String);
  published
    property Address: string read GetAddress write SetAddress;
    property Password: string read GetPassword write SetPassword;
    property Username: string read GetUsername write SetUsername;
    property Schema: string read GetSchema write SetSchema;
    property Port: Word read GetPort write SetPort default 5432;
    property DatabaseName: string read GetDatabaseName write SetDatabaseName;
    property Direct: boolean read GetDirect write SetDirect default True;
    property Directory: String read GetDirectory write SetDirectory;
  public
    procedure SaveProfile;
    procedure LoadProfile;
    procedure SetRecordConf(aRecordConf: TJanuaServerRecordConf);
  end;

type
  TJanuaOSConfiguration = class(TJanuaPersistent)
  private
    function GetCustomServer: boolean;
    function GetDirectory: String;
    function GetHomeDirectory: TJanuaOSHomeDir;
    function GetLinuxHome: string;
    function GetResolveToFile: boolean;
    function GetTitle: String;
    function GetUseCurrentDir: boolean;
    procedure SetCustomServer(const Value: boolean);
    procedure SetDirectory(const Value: String);
    procedure SetHomeDirectory(const Value: TJanuaOSHomeDir);
    procedure SetLinuxHome(const Value: string);
    procedure SetResolveToFile(const Value: boolean);
    procedure SetTitle(const Value: String);
    procedure SetUseCurrentDir(const Value: boolean);
  published
    property Title: String read GetTitle write SetTitle;
    property CustomServer: boolean read GetCustomServer write SetCustomServer;
    property ResolveToFile: boolean read GetResolveToFile write SetResolveToFile;
    property UseCurrentDir: boolean read GetUseCurrentDir write SetUseCurrentDir;
    property Directory: String read GetDirectory write SetDirectory;
    property LinuxHome: string read GetLinuxHome write SetLinuxHome;
    property HomeDirectory: TJanuaOSHomeDir read GetHomeDirectory write SetHomeDirectory;
  end;

type
  TJanuaConf = class(TJanuaCoreComponent)
  private
    FJanuaDBServerDialog: IJanuaServerDialog;
    FJanuaServerConf: TJanuaServerConfiguration;
    FJanuaOSConfiguration: TJanuaOSConfiguration; // persistent class configuration
    /// App Url è il 'cuore' del sistema di configurazione del server, tale valore determina la Home Page
    /// ma anche i certificati, i file conf, e gli URL di connnessione o la sessione pubblica e lo schema
    /// dela App medesima. Le funyioni sono GetAppUrl che pesca dal record Pubblico.
    /// TJanuaApplication.AppName e AppUrl sono di fatto sinonimi della APPUID all'interno dello
    /// schema Januaproject.
    function GetAppUrl: string;
    procedure SetAppUrl(const Value: string);
    function GetJanuaDBServerDialog: IJanuaServerDialog;
    procedure SetJanuaDBServerDialog(const Value: IJanuaServerDialog);
    procedure SeTJanuaServerConfiguration(const Value: TJanuaServerConfiguration);

    function GetApplicationFramework: TJanuaApplicationFramework;
    function GetApplicationType: TJanuaApplicationType;
    function GetAssetsUrl: string;
    function GetProtocol: TJanuaProtocol;
    procedure SetApplicationType(const Value: TJanuaApplicationType);
    procedure SetAssetsUrl(const Value: string);
    procedure SetProtocol(const Value: TJanuaProtocol);
    procedure SetJanuaOSConfiguration(const Value: TJanuaOSConfiguration);
    function GetProtocolAssetsUrl: string;
    function GetProtocolText: string;
    function GetProtocolUrl: string;
    function GetSiteAddess: string;
    procedure SetSiteAddess(const Value: string);
  public
    procedure ApplyProfile;
    procedure LoadProfile;
    procedure SaveProfile;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: boolean; override;
  published
    property JanuaOSConfiguration: TJanuaOSConfiguration read FJanuaOSConfiguration write SetJanuaOSConfiguration;
    // http - https protocol Management Site Url Server Url Management
    property Protocol: TJanuaProtocol read GetProtocol write SetProtocol;
    property AssetsUrl: string read GetAssetsUrl write SetAssetsUrl;
    property ProtocolText: string read GetProtocolText;
    property ProtocolUrl: string read GetProtocolUrl;
    property ProtocolAssetsUrl: string read GetProtocolAssetsUrl;
    property SiteAddess: string read GetSiteAddess write SetSiteAddess;

    property ApplicationFramework: TJanuaApplicationFramework read GetApplicationFramework;
    property ApplicationType: TJanuaApplicationType read GetApplicationType write SetApplicationType;
    property AppUrl: string read GetAppUrl write SetAppUrl;
    property JanuaServerConf: TJanuaServerConfiguration read FJanuaServerConf write SeTJanuaServerConfiguration;
  end;

Type
  TJanuaAppConf = Class(TJanuaCoreComponent)
  private
    function GetAppName: string;
    procedure SetAppName(const Value: string);
  protected
    function InternalActivate: boolean; override;
  public
  published
    property AppName: string read GetAppName write SetAppName;
  End;

implementation

uses
  Janua.Application.Framework, System.SysUtils, System.TypInfo;

{ TJanuaServerConfiguration }

procedure TJanuaConf.ApplyProfile;
begin
  // TJanuaCustomServer.SetTJanuaApplication.JanuaServerConf(self.FRecordConf);
end;

function TJanuaServerConfiguration.GetAddress: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Address;
end;

function TJanuaServerConfiguration.GetDatabaseName: string;
begin
  Result := TJanuaApplication.JanuaServerConf.DatabaseName
end;

function TJanuaServerConfiguration.GetDirect: boolean;
begin
  Result := TJanuaApplication.JanuaServerConf.Direct
end;

function TJanuaServerConfiguration.GetDirectory: String;
begin
  Result := TJanuaApplication.Directory
end;

function TJanuaServerConfiguration.GetPassword: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Password
end;

function TJanuaServerConfiguration.GetPort: Word;
begin
  Result := TJanuaApplication.JanuaServerConf.Port
end;

function TJanuaServerConfiguration.GetSchema: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Schema
end;

function TJanuaServerConfiguration.GetUsername: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Username
end;

procedure TJanuaServerConfiguration.LoadProfile;
begin
  if (not self.IsDesigning) and TJanuaCoreOS.GetActive then
  begin
    TJanuaCoreOS.LoadConfiguration;
    Address := TJanuaCoreOS.ReadParam('Server', 'Address', GetAddress);
    Port := TJanuaCoreOS.ReadParam('Server', 'Port', GetPort);
    Schema := TJanuaCoreOS.ReadParam('Server', 'Schema', GetSchema);
    DatabaseName := TJanuaCoreOS.ReadParam('Server', 'DatabaseName', GetDatabaseName);
    Username := TJanuaCoreOS.ReadParam('Server', 'UserName', GetUsername);
    Password := TJanuaCoreOS.ReadParam('Server', 'Password', GetPassword);
  end;
end;

constructor TJanuaConf.Create(AOwner: TComponent);
begin
  inherited;
  FJanuaServerConf := TJanuaServerConfiguration.Create(self);
  JanuaOSConfiguration := TJanuaOSConfiguration.Create(self);
end;

destructor TJanuaConf.Destroy;
begin
  // FJauaCoreConf è Gestito da FPersistents .... quindi non va esplicitamente distrutto
  {
    self.FJanuaServerConf.DisposeOf;
    self.FJanuaServerConf := nil;
  }
  inherited;
end;

function TJanuaConf.GetApplicationFramework: TJanuaApplicationFramework;
begin
  Result := TJanuaApplication.ApplicationFramework;
end;

function TJanuaConf.GetApplicationType: TJanuaApplicationType;
begin
  Result := TJanuaApplication.ApplicationType;
end;

function TJanuaConf.GetAppUrl: string;
begin
  Result := TJanuaApplication.AppName
end;

function TJanuaConf.GetAssetsUrl: string;
begin
  Result := TJanuaApplication.AssetsUrl
end;

function TJanuaConf.GetJanuaDBServerDialog: IJanuaServerDialog;
begin
  if not Assigned(FJanuaDBServerDialog) then
    TJanuaApplicationFactory.TryGetInterface(IJanuaServerDialog, FJanuaDBServerDialog);

  Result := FJanuaDBServerDialog // : IJanuaServerDialog;
end;

function TJanuaConf.GetProtocol: TJanuaProtocol;
begin
  Result := TJanuaApplication.Protocol;
end;

function TJanuaConf.GetProtocolAssetsUrl: string;
begin
  Result := TJanuaApplication.ProtocolAssetsUrl
end;

function TJanuaConf.GetProtocolText: string;
begin
  Result := TJanuaApplication.ProtocolText
end;

function TJanuaConf.GetProtocolUrl: string;
begin
  Result := TJanuaApplication.ProtocolUrl
end;

function TJanuaConf.GetSiteAddess: string;
begin
  Result := TJanuaApplication.SiteAddess
end;

function TJanuaConf.InternalActivate: boolean;
begin
  Result := Active;
  if not Active then
    try
      Result := inherited and notDesigning;
      if Result then
      begin
        Result := False;
        LoadProfile;
        Result := True;
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;

procedure TJanuaConf.LoadProfile;
begin
  if not(csDesigning in self.ComponentState) and TJanuaCoreOS.GetActive then
  begin
    self.FJanuaServerConf.LoadProfile;
  end;
end;

procedure TJanuaConf.SaveProfile;
begin
  if not(csDesigning in self.ComponentState) then
  begin
    self.FJanuaServerConf.SaveProfile;
  end;
end;

procedure TJanuaConf.SetApplicationType(const Value: TJanuaApplicationType);
begin
  if TJanuaApplication.ApplicationType <> Value then
  begin
    TJanuaApplication.ApplicationType := Value;
    if not(csDesigning in self.ComponentState) then
    begin
      // self.WriteLog('TJanuaServerConfiguration.SetApplicationType:', Value);
      SaveProfile;
      ApplyProfile
    end;
  end;
end;

procedure TJanuaConf.SetAppUrl(const Value: string);
begin
  if TJanuaApplication.AppName <> Value then
  begin
    TJanuaApplication.AppName := Value;
    if not(csDesigning in self.ComponentState) then
    begin
      // self.WriteLog('TJanuaServerConfiguration.SetAppUrl:', Value);
      SaveProfile;
      ApplyProfile
    end;
  end;
end;

procedure TJanuaConf.SetAssetsUrl(const Value: string);
begin
  if TJanuaApplication.AssetsUrl <> Value then
  begin
    TJanuaApplication.AssetsUrl := Value;
    self.SaveProfile;
  end;
end;

procedure TJanuaConf.SetJanuaDBServerDialog(const Value: IJanuaServerDialog);
begin
  FJanuaDBServerDialog := Value;
end;

procedure TJanuaConf.SetJanuaOSConfiguration(const Value: TJanuaOSConfiguration);
begin
  FJanuaOSConfiguration := Value;
end;

procedure TJanuaConf.SeTJanuaServerConfiguration(const Value: TJanuaServerConfiguration);
begin
  FJanuaServerConf := Value;
end;

procedure TJanuaConf.SetProtocol(const Value: TJanuaProtocol);
begin
  if TJanuaApplication.Protocol <> Value then
  begin
    TJanuaApplication.Protocol := Value;
    self.SaveProfile;
  end;
end;

procedure TJanuaConf.SetSiteAddess(const Value: string);
begin
  if TJanuaApplication.SiteAddess <> Value then
  begin
    TJanuaApplication.SiteAddess := Value;
    self.SaveProfile;
  end;
end;

procedure TJanuaServerConfiguration.SaveProfile;
begin
  if (not self.IsDesigning) and TJanuaCoreOS.GetActive then
  begin
    TJanuaCoreOS.WriteParam('Server', 'Address', GetAddress);
    TJanuaCoreOS.WriteParam('Server', 'Port', GetPort);
    TJanuaCoreOS.WriteParam('Server', 'Schema', GetSchema);
    TJanuaCoreOS.WriteParam('Server', 'DatabaseName', GetDatabaseName);
    TJanuaCoreOS.WriteParam('Server', 'UserName', GetUsername);
    TJanuaCoreOS.WriteParam('Server', 'Password', GetPassword);
  end;
end;

procedure TJanuaServerConfiguration.SetAddress(const Value: string);
begin
  if TJanuaApplication.ServerAddress <> Value then
  begin
    TJanuaApplication.ServerAddress := Value;
    SaveProfile;
  end;
end;

procedure TJanuaServerConfiguration.SetDatabaseName(const Value: string);
begin
  if TJanuaApplication.ServerDatabaseName <> Value then
  begin
    TJanuaApplication.ServerDatabaseName := Value;
    SaveProfile;
  end;
end;

procedure TJanuaServerConfiguration.SetDirect(const Value: boolean);
begin
  if TJanuaApplication.ServerDirect <> Value then
  begin
    TJanuaApplication.ServerDirect := Value;
    self.SaveProfile
  end;
end;

procedure TJanuaServerConfiguration.SetDirectory(const Value: String);
begin
  if TJanuaApplication.Directory <> Value then
  begin
    TJanuaApplication.Directory := Value;
    // self.SaveProfile // Directory è una variabile che non si salva o si carica da File ...
  end;
end;

procedure TJanuaServerConfiguration.SetPassword(const Value: string);
begin
  if TJanuaApplication.ServerPassword <> Value then
  begin
    TJanuaApplication.ServerPassword := Value;
    // self.WriteLog('TJanuaServerConf.SetPassword:', Value);
    if not self.IsDesigning then
      SaveProfile;
  end;
end;

procedure TJanuaServerConfiguration.SetPort(const Value: Word);
begin
  if TJanuaApplication.ServerPort <> Value then
  begin
    TJanuaApplication.ServerPort := Value;
    // self.WriteLog('TJanuaServerConf.SetPassword:', Value.ToString);
    if not self.IsDesigning then
      self.SaveProfile
  end;
end;

procedure TJanuaServerConfiguration.SetRecordConf(aRecordConf: TJanuaServerRecordConf);
begin
  TJanuaApplication.JanuaServerConf := aRecordConf;
end;

procedure TJanuaServerConfiguration.SetSchema(const Value: string);
begin
  if TJanuaApplication.ServerSchema <> Value then
  begin
    TJanuaApplication.ServerSchema := Value;
    // self.WriteLog('TJanuaServerConf.SetSchema:', Value);
    SaveProfile;
  end;
end;

procedure TJanuaServerConfiguration.SetUsername(const Value: string);
begin
  if TJanuaApplication.ServerUsername <> Value then
  begin
    TJanuaApplication.ServerUsername := Value;
    // self.WriteLog('TJanuaServerConf.SetUsername:', Value);
    SaveProfile
  end;
end;

{ TJanuaAppConf }

function TJanuaAppConf.GetAppName: string;
begin
  Result := TJanuaApplication.AppName
end;

function TJanuaAppConf.InternalActivate: boolean;
begin
  Result := inherited;
end;

procedure TJanuaAppConf.SetAppName(const Value: string);
begin
  TJanuaApplication.AppName := Value;
end;

{ TJanuaOSConfiguration }

function TJanuaOSConfiguration.GetCustomServer: boolean;
begin
  Result := TJanuaApplication.OsProfile.CustomServer
end;

function TJanuaOSConfiguration.GetDirectory: String;
begin
  Result := TJanuaApplication.OsProfile.Directory
end;

function TJanuaOSConfiguration.GetHomeDirectory: TJanuaOSHomeDir;
begin
  Result := TJanuaApplication.OsProfile.HomeDirectory
end;

function TJanuaOSConfiguration.GetLinuxHome: string;
begin
  Result := TJanuaApplication.OsProfile.LinuxHome;
end;

function TJanuaOSConfiguration.GetResolveToFile: boolean;
begin
  Result := TJanuaApplication.ResolveToFile;
end;

function TJanuaOSConfiguration.GetTitle: String;
begin
  Result := TJanuaApplication.OsProfile.Title;
end;

function TJanuaOSConfiguration.GetUseCurrentDir: boolean;
begin
  Result := TJanuaApplication.OsProfile.UseCurrentDir;
end;

procedure TJanuaOSConfiguration.SetCustomServer(const Value: boolean);
begin
  TJanuaApplication.OsProfileCustomServer := Value;
end;

procedure TJanuaOSConfiguration.SetDirectory(const Value: String);
begin
  TJanuaApplication.OsProfileDirectory := Value;
end;

procedure TJanuaOSConfiguration.SetHomeDirectory(const Value: TJanuaOSHomeDir);
begin
  TJanuaApplication.OsProfileHomeDirectory := Value;
end;

procedure TJanuaOSConfiguration.SetLinuxHome(const Value: string);
begin
  TJanuaApplication.OsProfileLinuxHome := Value;
end;

procedure TJanuaOSConfiguration.SetResolveToFile(const Value: boolean);
begin
  TJanuaApplication.ResolveToFile := Value;
end;

procedure TJanuaOSConfiguration.SetTitle(const Value: String);
begin
  TJanuaApplication.Title := Value;
end;

procedure TJanuaOSConfiguration.SetUseCurrentDir(const Value: boolean);
begin
  TJanuaApplication.OsProfileUseCurrentDir := Value
end;

end.
