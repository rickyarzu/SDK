unit udmFootballServer;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Http, Janua.Core.Health, Janua.Postgres.Health, Janua.Core.JPublic,
  Janua.Postgres.JPublic, Janua.Core.System, Janua.Postgres.System, Janua.Core.Cms, Janua.Postgres.Cms,
  Janua.Core.Football, Janua.Postgres.Football, Janua.Core.Mail, Janua.Core.Classes, Janua.Core.Servers,
  System.Generics.Collections, System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  Janua.Core.Types, udmServerModel, Janua.Core.Cloud, Janua.Football.Intf;

type
  TdmFootballServer = class(TdmServerModel)
    JanuaServerPgFootball: TJanuaServerPgFootball;
    JanuaPgTemplateFootball1: TJanuaPgTemplateFootball;
    JanuaPgFootballWebController1: TJanuaPgFootballWebController;
    JanuaPgWebSessionFootball1: TJanuaPgWebSessionFootball;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FFootballSettings: Janua.Football.Intf.IFootballSettings;
  protected
    { Private declarations }
  public
    { Public declarations }
    procedure Activate(aAppType: TJanuaApplicationType); override;
  end;

  TActivateThread = class(TThread)
  private
    FException: Exception;
    FDBServer: TJanuaCustomServer;
    procedure DoHandleException;
    procedure SetDBServer(const Value: TJanuaCustomServer);
  protected
    procedure Execute; override;
    procedure HandleException; virtual;
  public
    constructor Create(const aServer: TJanuaCustomServer); overload;
    property DBServer: TJanuaCustomServer read FDBServer write SetDBServer;
  end;

procedure ActivateThreaded(const aServer: TJanuaCustomServer; DoRaise: boolean = true);

var
  dmFootballServer: TdmFootballServer;

implementation

uses System.Threading, Janua.Football.Impl;
{$R *.dfm}
{ TdmFootballServer }



procedure ActivateThreaded(const aServer: TJanuaCustomServer; DoRaise: boolean = true);
begin
  // Create an instance of the TMyThread
  with TActivateThread.Create(aServer) do
  begin
    FreeOnTerminate := true;
    Start;
  end;
end;

procedure TdmFootballServer.Activate(aAppType: TJanuaApplicationType);
begin
  inherited;
  try
    JanuaServerPgFootball.KeepAlive := true;
    JanuaServerPgFootball.Activate;
    // ActivateThreaded(JanuaServerPgFootball);
    // ActivateThreaded(self.JanuaPostgresSystem);
  except
    on e: Exception do
      self.JanuaCoreLogger1.LogError(JanuaCoreOS1, JanuaServerPgFootball.LogRecords.SelectedItem, e);
  end;
end;

procedure TdmFootballServer.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FFootballSettings := TFootballSettings.Create;
  self.JanuaServerPgFootball.FootballSettings := FFootballSettings;
end;

procedure TdmFootballServer.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  JanuaServerPgFootball.Deactivate;
  self.JanuaCoreOS1.Deactivate;
end;

{ TActivateThread }

constructor TActivateThread.Create(const aServer: TJanuaCustomServer);
begin
  inherited Create(True);// lo creo suspended in modo da attendere il comando Start esterno.
  FDBServer := aServer;
end;

procedure TActivateThread.DoHandleException;
begin
  // Cancel the mouse capture    // VCL method .......................
  // if GetCapture <> 0 then SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
  // Now actually show the exception
  // if FException is Exception then
  // Application.ShowException(FException)
  // else
  System.SysUtils.ShowException(FException, nil);
end;

procedure TActivateThread.Execute;
begin
  inherited;
  FException := nil;
  if self.FDBServer <> nil then
    try
      self.Synchronize(
        procedure
        begin
          FDBServer.Activate;
        end);
    except
      HandleException;
    end
end;

procedure TActivateThread.HandleException;
begin
  // This function is virtual so you can override it
  // and add your own functionality.
  FException := Exception(ExceptObject);
  try
    // Don't show EAbort messages
    if not(FException is EAbort) then
      Synchronize(DoHandleException);
  finally
    FException := nil;
  end;
end;

procedure TActivateThread.SetDBServer(const Value: TJanuaCustomServer);
begin
  FDBServer := Value;
end;

end.
