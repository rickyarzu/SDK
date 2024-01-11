unit uServiceTesting;

interface

uses
  {
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
    Vcl.SvcMgr, IdHTTPWebBrokerBridge,
    Janua.Core.Types, Janua.Core.Classes;
  }
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Graphics, Vcl.Controls,
  Vcl.SvcMgr, Vcl.Dialogs,
  Janua.Football.Intf, Janua.Football.Web.Intf,
  Janua.http.Intf,
  Janua.Core.Classes,
  Janua.Core.Types,
  // Indy Web Broker
  IdHTTPWebBrokerBridge,
  // Cloud
  Janua.Cloud.Files.Intf,
  // Database e Model
  Janua.Football.Server.Intf, Janua.Cms.Server.Intf, Janua.System.Server.Intf;

type
  TfrmServiceTesting = class(TService)
    procedure ServiceCreate(Sender: TObject);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
  private
    { Private declarations }
    LServer: TIdHTTPWebBrokerBridge;
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  frmServiceTesting: TfrmServiceTesting;
  // --------------------------------------------------------------------------------------
  // Classi per la gestione dell'accesso ai file ed allo Storage
  // --------------------------------------------------------------------------------------
  FileStorage: IJanuaCloudFileStorage;
  ImageStorage: IJanuaCloudFileStorage;

implementation

uses
  Spring,
  // Server WebBroker   Web.WebBroker, Web.WebReq,
  Web.WebBroker, Web.WebReq,
  // http
  Janua.http.Impl, Janua.Cloud.http.Impl,
  // Database
  Janua.Postgres.Football.Impl, Janua.Postgres.Cms.Impl, Janua.Postgres.System.Impl,
  // Cloud
  Janua.Postgres.Cloud, Janua.Cloud.Files.Cache, Janua.Cloud.Images.Cache;

{$R *.dfm}

procedure initializeCloud;
begin
  if not TJanuaCloudFileCache.Initialized then
  begin
    try
      try
        if not Assigned(FileStorage) then
          FileStorage := TJanuaPgCloudStorage.Create;
      except
        on e: exception do
          raise exception.Create('InitializeCloud.TJanuaPgCloudStorage.Create Error: ' + e.Message);
      end;
      // Cloud Files Cache Initialization ..................................................
      TJanuaCloudFileCache.Initialize(FileStorage);
      TJanuaCloudFileCache.SetupResources;
    except
      on e: exception do
        raise exception.Create('InitializeCloud.TJanuaCloudFileCache Error: ' + e.Message);
    end;
  end;
  if not TJanuaCloudImagesCache.Initialized then
  begin
    if not Assigned(ImageStorage) then
      ImageStorage := TJanuaPgCloudStorage.Create;
    // Cloud Images Cache Initialization ..................................................
    Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.Initialize(ImageStorage);
    Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.SetupResources;
    // ..............................................................................
  end
end;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  frmServiceTesting.Controller(CtrlCode);
end;

function TfrmServiceTesting.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TfrmServiceTesting.ServiceCreate(Sender: TObject);
begin

  try
    LogMessage('Service initialize Cloud: ' + JanuaApplicationGlobalProfile.JanuaServerConf.Conf,
      EVENTLOG_INFORMATION_TYPE);
    initializeCloud;
    // ..............................................................................
    LogMessage('Service Creating WebRequestHandler', EVENTLOG_INFORMATION_TYPE);
    {
    if WebRequestHandler <> nil then
      WebRequestHandler.WebModuleClass := WebModuleClass;
    }
    LogMessage('Service Creating MaxConnections := 1000', EVENTLOG_INFORMATION_TYPE);
    WebRequestHandler.MaxConnections := 1000;
    // inizializzazione delle memorie su Create o su Start?
  except
    on e: exception do
      raise exception.Create(self.ClassName + '.ServiceCreate: ' + sLineBreak + e.Message);
  end;
end;

procedure TfrmServiceTesting.ServiceStart(Sender: TService; var Started: Boolean);
begin
  try
    LServer := TIdHTTPWebBrokerBridge.Create(nil);
    LServer.Bindings.Clear;
    LServer.DefaultPort := JanuaApplicationGlobalProfile.ListenPort;
    LogMessage('Service Creating on Port: ' + LServer.DefaultPort.ToString, EVENTLOG_INFORMATION_TYPE);
    LServer.Active := True;
    LogMessage('Service Starting: ' + JanuaApplicationGlobalProfile.JanuaServerConf.Conf,
      EVENTLOG_INFORMATION_TYPE);
    Started := True;
    LogMessage('Service Started on Port: ' + LServer.DefaultPort.ToString, EVENTLOG_INFORMATION_TYPE);
  except
    on e: exception do
    begin
      LogMessage(self.ClassName + '.ServiceStart: ' + sLineBreak + e.Message, EVENTLOG_ERROR_TYPE);
      raise exception.Create(self.ClassName + '.ServiceStart: ' + sLineBreak + e.Message);
    end;
  end;
end;

end.
