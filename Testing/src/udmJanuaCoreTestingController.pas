unit udmJanuaCoreTestingController;

interface

uses
  // System
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Vcl
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.AppEvnts, Vcl.StdCtrls,

  // Web Broker Technology
  IdHTTPWebBrokerBridge, Web.HTTPApp,
  // Forms
  ufrmTestJanuaCoreClasses, ufrmTestJanuaCoreFTP, ufrmMDCTestStatisticsQuery,
  udmJanuaCoreTesting, ufrmJanuaCoreFunctions, ufrmTestMailSenderMain, ufrmTestFootball,
  ufrmTestFootballWebBroker, ufrmTestStatisticsPostgres, ufrmMDCTestPostgresFrameworks, ufrmVCLMDILogger;

type
  TNewMDIFormEvent = procedure(const aForm: TForm) of object;

type
  TdmJanuaCoreTestingController = class(TDataModule)
    procedure DataModuleDestroy(Sender: TObject);
  private
    FServer: TIdHTTPWebBrokerBridge;
    ffrmTestJanuaCoreClasses: TfrmTestJanuaCoreClasses;
    FfrmMDCTestPostgresFrameworks: TfrmMDCTestPostgresFrameworks;
    ffrmTestJanuaCoreFTP: TfrmTestJanuaCoreFTP;
    FdmJanuaCoreTesting: TdmJanuaCoreTesting;
    FfrmJanuaCoreFunctions: TfrmJanuaCoreFunctions;
    FfrmTestFootball: TfrmTestFootball;
    FActive: boolean;
    FWebPort: integer;
    FOnNewMDIForm: TNewMDIFormEvent;
    FfrmVCLMDILogger: TfrmVCLMDILogger;
    function getfrmTestJanuaCoreClasses: TfrmTestJanuaCoreClasses;
    procedure SetdmJanuaCoreTesting(const Value: TdmJanuaCoreTesting);
    procedure SetfrmJanuaCoreFunctions(const Value: TfrmJanuaCoreFunctions);
    procedure SetfrmTestFootball(const Value: TfrmTestFootball);
    procedure SetActive(const Value: boolean);
    procedure SetWebPort(const Value: integer);
    procedure SetOnNewMDIForm(const Value: TNewMDIFormEvent);
    procedure SetfrmVCLMDILogger(const Value: TfrmVCLMDILogger);
    { Private declarations }
  public
    { Public declarations }
    procedure ShowTestClasses;
    function Activate: boolean;
    procedure Terminate;
    // Database Frameworkds
    procedure ShowPostgresFrameworks;
    // Statistics Analytics
    procedure ShowTestStatisticsCore;
    procedure ShowTestStatisticsServer;
    procedure ShowTestVCLStatisticsServer;
    // Football Testing
    procedure ShowWebBrokerFootball;
    procedure ShowTestFunctions;
    procedure ShowTestMail;
    procedure ShowTestFootball;
    procedure ShowTestMetronics;
    procedure StopServer;
    procedure StartServer(aPort: string);
    procedure OpenBrowser;
    function ServerUrl: string;
  public
    property OnNewMDIForm: TNewMDIFormEvent read FOnNewMDIForm write SetOnNewMDIForm;
    property Active: boolean read FActive write SetActive;
    property frmTestJanuaCoreClasses: TfrmTestJanuaCoreClasses read getfrmTestJanuaCoreClasses;
    property dmJanuaCoreTesting: TdmJanuaCoreTesting read FdmJanuaCoreTesting write SetdmJanuaCoreTesting;
    property frmJanuaCoreFunctions: TfrmJanuaCoreFunctions read FfrmJanuaCoreFunctions write SetfrmJanuaCoreFunctions;
    property frmTestFootball: TfrmTestFootball read FfrmTestFootball write SetfrmTestFootball;
    property frmVCLMDILogger: TfrmVCLMDILogger read FfrmVCLMDILogger write SetfrmVCLMDILogger;
    property WebPort: integer read FWebPort write SetWebPort;
  end;

implementation

uses Winapi.Windows, Winapi.ShellApi, Datasnap.DSSession, ufrmTestMetronics, ufrmTestStatistics;

var
  dmJanuaCoreTestingController: TdmJanuaCoreTestingController;

  { %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
  { TdmJanuaCoreTestingController }

procedure TerminateThreads;
begin
  if TDSSessionManager.Instance <> nil then
    TDSSessionManager.Instance.TerminateAllSessions;
end;

function TdmJanuaCoreTestingController.Activate: boolean;
begin
  // This procedure Activate and Assigns units from the Project Controller ...............
  if not self.FActive then
  begin
    if not Assigned(FServer) then
      FServer := TIdHTTPWebBrokerBridge.Create(self);
    FdmJanuaCoreTesting := TdmJanuaCoreTesting.Create(Application);
    FfrmVCLMDILogger:= TfrmVCLMDILogger.Create(Application);
    FfrmVCLMDILogger.dsLog.DataSet := FdmJanuaCoreTesting.vrtLogs;
    FfrmVCLMDILogger.dsDBLog.DataSet := FdmJanuaCoreTesting.vrtDBLogs;
    FfrmVCLMDILogger.WindowState := wsMaximized;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(self.frmVCLMDILogger);
    FActive := dmJanuaCoreTesting.Activate;
  end;

  Result := FActive;
end;

procedure TdmJanuaCoreTestingController.DataModuleDestroy(Sender: TObject);
begin
  if Assigned(self.FdmJanuaCoreTesting) then
    self.FdmJanuaCoreTesting.Free;
  if Assigned(self.ffrmTestJanuaCoreClasses) then
    self.ffrmTestJanuaCoreClasses.Free;
  if Assigned(FfrmJanuaCoreFunctions) then
    FfrmJanuaCoreFunctions.Free;
  if Assigned(FfrmTestFootball) then
    FfrmTestFootball.Free;

end;

function TdmJanuaCoreTestingController.getfrmTestJanuaCoreClasses: TfrmTestJanuaCoreClasses;
begin
  Result := self.ffrmTestJanuaCoreClasses;
end;

procedure TdmJanuaCoreTestingController.OpenBrowser;
begin
  if not self.FServer.Active then
    StartServer(self.FWebPort.ToString);
  ShellExecute(0, nil, PChar(self.ServerUrl), nil, nil, SW_SHOWNOACTIVATE);
end;

function TdmJanuaCoreTestingController.ServerUrl: string;
begin
  Result := Format('http://localhost:%s', [self.FWebPort.ToString]);
end;

procedure TdmJanuaCoreTestingController.SetActive(const Value: boolean);
begin
  FActive := Value;
end;

procedure TdmJanuaCoreTestingController.SetdmJanuaCoreTesting(const Value: TdmJanuaCoreTesting);
begin
  FdmJanuaCoreTesting := Value;
end;

procedure TdmJanuaCoreTestingController.SetfrmJanuaCoreFunctions(const Value: TfrmJanuaCoreFunctions);
begin
  FfrmJanuaCoreFunctions := Value;
end;

procedure TdmJanuaCoreTestingController.SetfrmTestFootball(const Value: TfrmTestFootball);
begin
  FfrmTestFootball := Value;
end;

procedure TdmJanuaCoreTestingController.SetfrmVCLMDILogger(const Value: TfrmVCLMDILogger);
begin
  FfrmVCLMDILogger := Value;
end;

procedure TdmJanuaCoreTestingController.SetOnNewMDIForm(const Value: TNewMDIFormEvent);
begin
  FOnNewMDIForm := Value;
end;

procedure TdmJanuaCoreTestingController.SetWebPort(const Value: integer);
begin
  FWebPort := Value;
end;

procedure TdmJanuaCoreTestingController.ShowPostgresFrameworks;
begin
  if not Assigned(self.FfrmMDCTestPostgresFrameworks) then
  begin
    self.FfrmMDCTestPostgresFrameworks := TfrmMDCTestPostgresFrameworks.Create(Application);
    FfrmMDCTestPostgresFrameworks.FormStyle := TFormStyle.fsMDIChild;
    FfrmMDCTestPostgresFrameworks.WindowState := wsMaximized;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(FfrmMDCTestPostgresFrameworks);
  end;
  FfrmMDCTestPostgresFrameworks.Show;
end;

procedure TdmJanuaCoreTestingController.ShowTestClasses;
begin
  if not Assigned(self.ffrmTestJanuaCoreClasses) then
  begin
    self.ffrmTestJanuaCoreClasses := TfrmTestJanuaCoreClasses.Create(Application);
    ffrmTestJanuaCoreClasses.FormStyle := TFormStyle.fsMDIChild;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(ffrmTestJanuaCoreClasses);
  end;

  ffrmTestJanuaCoreClasses.Show;
end;

procedure TdmJanuaCoreTestingController.ShowTestFootball;
begin
  if not Assigned(FfrmTestFootball) then
  begin
    Application.CreateForm(TfrmTestFootball, FfrmTestFootball);
    FfrmTestFootball.dmJanuaCoreTesting := FdmJanuaCoreTesting;
    FfrmTestFootball.WindowState := wsMaximized;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(FfrmTestFootball);
  end;
  FfrmTestFootball.Show;
end;

procedure TdmJanuaCoreTestingController.ShowTestFunctions;
begin
  if not Assigned(FfrmJanuaCoreFunctions) then
  begin
    FfrmJanuaCoreFunctions := TfrmJanuaCoreFunctions.Create(Application);
    FfrmJanuaCoreFunctions.WindowState := wsMaximized;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(FfrmJanuaCoreFunctions);
  end;
  FfrmJanuaCoreFunctions.Show;
end;

procedure TdmJanuaCoreTestingController.ShowTestMail;
begin
  if not Assigned(frmTestMailSenderMain) then
  begin
    Application.CreateForm(TfrmTestMailSenderMain, frmTestMailSenderMain);
    frmTestMailSenderMain.WindowState := wsMaximized;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(frmTestMailSenderMain);
  end;
  frmTestMailSenderMain.Show;
end;

procedure TdmJanuaCoreTestingController.ShowTestMetronics;
begin
  if not Assigned(ufrmTestMetronics.frmTestMetronics) then
  begin
    Application.CreateForm(TfrmTestMetronics, frmTestMetronics);
    frmTestMetronics.WindowState := wsMaximized;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(frmTestMetronics);
  end;
  frmTestMetronics.Show;
end;

procedure TdmJanuaCoreTestingController.ShowTestStatisticsCore;
begin
  if not Assigned(frmTestStatistics) then
  begin
    Application.CreateForm(TfrmTestStatistics, frmTestStatistics);
    frmTestStatistics.WindowState := wsMaximized;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(frmTestStatistics);
  end;
  frmTestStatistics.Show;
end;

procedure TdmJanuaCoreTestingController.ShowTestStatisticsServer;
begin
  if not Assigned(frmTestStatisticsServer) then
  begin
    Application.CreateForm(TfrmTestStatisticsServer, frmTestStatisticsServer);
    frmTestStatistics.WindowState := wsMaximized;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(frmTestStatistics);
  end;
  frmTestStatisticsServer.Show;
end;

procedure TdmJanuaCoreTestingController.ShowTestVCLStatisticsServer;
begin
  // ufrmMDCTestStatisticsQuery
  if not Assigned(ufrmMDCTestStatisticsQuery.frmMDCTestStatisticsQueries) then
  begin
    Application.CreateForm(ufrmMDCTestStatisticsQuery.TfrmMDCTestStatisticsQueries, frmMDCTestStatisticsQueries);
    frmMDCTestStatisticsQueries.WindowState := wsMaximized;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(frmMDCTestStatisticsQueries);
  end;
  frmMDCTestStatisticsQueries.Show;

end;

procedure TdmJanuaCoreTestingController.ShowWebBrokerFootball;
begin
  if not Assigned(frmTestFootballWebBroker) then
  begin
    Application.CreateForm(TfrmTestFootballWebBroker, frmTestFootballWebBroker);
    frmTestFootballWebBroker.WindowState := wsMaximized;
    // invia il nuovo Form all'evento di Notifica .......................................................................
    if Assigned(FOnNewMDIForm) then
      FOnNewMDIForm(frmTestFootballWebBroker);
  end;
  frmTestFootballWebBroker.Show;
end;

procedure TdmJanuaCoreTestingController.StartServer(aPort: string);
begin
  if not Assigned(FServer) then
    FServer := TIdHTTPWebBrokerBridge.Create(self);
  if not FServer.Active then
  begin
    self.FWebPort := StrToInt(aPort);
    FServer.Bindings.Clear;
    FServer.DefaultPort := self.FWebPort;
    FServer.Active := True;
  end;
end;

procedure TdmJanuaCoreTestingController.StopServer;
begin
  TerminateThreads;
  FServer.Active := False;
  FServer.Bindings.Clear;
end;

procedure TdmJanuaCoreTestingController.Terminate;
begin
  self.Destroy;
end;

end.
