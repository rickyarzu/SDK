unit udmServerModel;

interface

uses
  System.SysUtils, System.Classes, System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  Janua.Core.Classes, Janua.Core.Servers, Janua.Core.Mail, Janua.Core.System, Janua.Postgres.System, Janua.Core.Cms,
  Janua.Core.Types, Janua.Postgres.Cms, Janua.Core.JPublic, Janua.Postgres.JPublic, System.Generics.Collections,
  Janua.Core.Cloud;

type
  TdmServerModel = class(TDataModule)
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    JanuaServerConf1: TJanuaServerConf;
    JanuaMailSender1: TJanuaMailSender;
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaServerJPublic: TJanuaServerJPublic;
    JanuaServerPgCms: TJanuaServerPgCms;
    JanuaPostgresSystem: TJanuaPostgresSystem;
    JanuaFileCache1: TJanuaFileCache;
    JanuaCoreOS1: TJanuaCoreOS;
    JanuaCloudOAuth1: TJanuaCloudOAuth;
    procedure DataModuleDestroy(Sender: TObject);
  private
    procedure SetAppName(const Value: string);
    function GetAppName: string;
    procedure SetResolveToFile(const Value: Boolean);
    function GetResolveToFile: Boolean;
  protected
    { Private declarations }
  public
    procedure Activate(aAppType: TJanuaApplicationType); virtual;
  public
    { Public declarations }
    property AppName: string read GetAppName write SetAppName;
    property ResolveToFile: Boolean read GetResolveToFile write SetResolveToFile;
  end;

var
  dmServerModel: TdmServerModel;

implementation

{$R *.dfm}
{ TdmServerModel }

procedure TdmServerModel.Activate(aAppType: TJanuaApplicationType);
var
  i: integer;
begin
  for i := 0 to self.ComponentCount - 1 do
    if self.Components[i] is Janua.Core.Servers.TJanuaCustomServer then
      (self.Components[i] as Janua.Core.Servers.TJanuaCustomServer).ApplicationType := aAppType;

  self.JanuaCoreLogger1.ApplicationType := aAppType;

  try
    self.JanuaCoreOS1.Activate;
  except
    on e: exception do
    begin
      self.JanuaCoreLogger1.LogMessage := '.JanuaCoreOS1.Activate Errror: ' + JanuaCoreOS1.LastErrorMessage;
      JanuaCoreLogger1.e := e;
    end;
  end;

  try
    self.JanuaServerConf1.Activate;
  except
    on e: exception do
      self.JanuaCoreLogger1.LogError(JanuaServerConf1, JanuaServerConf1.LogRecords.SelectedItem, e);
  end;

end;

procedure TdmServerModel.DataModuleDestroy(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to self.ComponentCount - 1 do
    if self.Components[i] is Janua.Core.Servers.TJanuaCustomServer then
      (self.Components[i] as Janua.Core.Servers.TJanuaCustomServer).CloseConnection;
end;

function TdmServerModel.GetAppName: string;
begin
  Result := JanuaApplicationGlobalProfile.AppName;
end;

function TdmServerModel.GetResolveToFile: Boolean;
begin
  Result := JanuaCoreOS1.ResolveToFile
end;

procedure TdmServerModel.SetAppName(const Value: string);
begin
  if Value <> '' then
    JanuaApplicationGlobalProfile.AppName := Value;
end;

procedure TdmServerModel.SetResolveToFile(const Value: Boolean);
begin
  // FResolveToFile := Value;
  self.JanuaCoreOS1.ResolveToFile := Value;
end;

end.
