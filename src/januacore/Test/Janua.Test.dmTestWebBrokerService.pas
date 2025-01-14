unit Janua.Test.dmTestWebBrokerService;

interface

uses
  System.SysUtils, System.Classes, System.Net.HttpClient,
  Janua.WebBroker.Server, Janua.Core.Commons, Janua.Core.Classes, Janua.WebBroker.ServerController;

type
  TdmTestWebBrokerService = class(TDataModule)
    JanuaWebBrokerServerManager1: TJanuaWebBrokerServerManager;
    procedure DataModuleCreate(Sender: TObject);
  private
    FWebModuleClass: TComponentClass;
    FWebServer: TJanuaWebBrokerServer;
    FWebBrokerClass: TJanuaWebBrokerServerClass;
    FActive: Boolean;
    procedure SetActive(const Value: Boolean);
    function GetUrl: string;
    function GetPort: Smallint;
    procedure ConsoleStopServer;
    procedure ConsoleStartServer;
    procedure TestConsole;
    procedure SetPortConsole(APort: String);
    procedure WriteArrow;
  public
    procedure StopServer;
    procedure StartServer;
    procedure ConsoleRun;
    procedure ConsoleLogProc(aProc: string; aMessage: string; aClass: TObject);
  public
    { Public declarations }
    property Active: Boolean read FActive write SetActive;
    property Url: string read GetUrl;
    property Port: Smallint read GetPort;
  end;

var
  dmTestWebBrokerService: TdmTestWebBrokerService;

implementation

uses
  Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

const
  cArrow = '->';
  cCommandStart = 'start';
  cCommandStop = 'stop';
  cCommandStatus = 'status';
  cCommandHelp = 'help';
  cCommandSetPort = 'set port';
  cCommandExit = 'exit';
  sPortInUse = '- Error: Port %s already in use';
  sPortSet = '- Port set to %s';
  sServerRunning = '- The Server is already running';
  sStartingServer = '- Starting HTTP Server on port %d';
  sStoppingServer = '- Stopping Server';
  sServerStopped = '- Server Stopped';
  sServerNotRunning = '- The Server is not running';
  sInvalidCommand = '- Error: Invalid Command';
  sIndyVersion = '- Indy Version: ';
  sActive = '- Active: ';
  sPort = '- Port: ';
  sSessionID = '- Session ID CookieName: ';
  sCommands = 'Enter a Command: ' + slineBreak + '   - "start" to start the server' + slineBreak +
    '   - "stop" to stop the server' + slineBreak + '   - "set port" to change the default port' + slineBreak
    + '   - "status" for Server status' + slineBreak + '   - "help" to show commands' + slineBreak +
    '   - "exit" to close the application';

procedure WriteCommands;
begin
  Writeln(sCommands);
  Write(cArrow);
end;

procedure TdmTestWebBrokerService.ConsoleLogProc(aProc, aMessage: string; aClass: TObject);
begin
  Writeln(aClass.ClassName + '.' + aProc + ': ' + aMessage);
end;

procedure TdmTestWebBrokerService.ConsoleRun;
var
  LResponse: string;
begin
  WriteCommands;
  SetActive(True);
  JanuaWebBrokerServerManager1.LogProc := ConsoleLogProc;
  try
    while True do
    begin
      Readln(LResponse);
      LResponse := LowerCase(LResponse);
      if LResponse.StartsWith(cCommandSetPort) then
        SetPortConsole(LResponse)
      else if sametext(LResponse, cCommandStart) then
        ConsoleStartServer
      else if sametext(LResponse, cCommandStatus) then
        JanuaWebBrokerServerManager1.WriteStatus
      else if sametext(LResponse, cCommandStop) then
        JanuaWebBrokerServerManager1.StopServer
      else if sametext(LResponse, cCommandHelp) then
        WriteCommands
      else if sametext(LResponse, cCommandExit) then
      begin
        JanuaWebBrokerServerManager1.StopServer;
        break
      end
      else
      begin
        Writeln(sInvalidCommand);
        Write(cArrow);
      end;
    end;
  finally
    SetActive(False);
  end;

end;

procedure TdmTestWebBrokerService.ConsoleStartServer;
begin
  Writeln(Format(sStartingServer, [JanuaWebBrokerServerManager1.Port]));
  StartServer;
  Write(cArrow);
end;

procedure TdmTestWebBrokerService.ConsoleStopServer;
begin
  if JanuaWebBrokerServerManager1.Active then
  begin
    Writeln(sStoppingServer);
    StopServer;
    Writeln(sServerStopped);
  end
  else
    Writeln(sServerNotRunning);
  Write(cArrow);

end;

procedure TdmTestWebBrokerService.DataModuleCreate(Sender: TObject);
begin
  FActive := False;
end;

function TdmTestWebBrokerService.GetPort: Smallint;
begin
  Result := JanuaWebBrokerServerManager1.Port;
end;

function TdmTestWebBrokerService.GetUrl: string;
begin
  Result := JanuaWebBrokerServerManager1.Url;
end;

procedure TdmTestWebBrokerService.SetActive(const Value: Boolean);
begin
  if FActive <> Value then
  begin
    FActive := Value;
    if Value then
    begin
      JanuaWebBrokerServerManager1.WebBrokerClass := JanuaWebBrokerServerClass;
      FActive := JanuaWebBrokerServerManager1.Activate;
    end
    else
    begin
      StopServer
    end;
  end;
end;

procedure TdmTestWebBrokerService.SetPortConsole(APort: String);
begin
  APort := APort.Replace(cCommandSetPort, '').Trim;
  if (APort.ToInteger) > 0 then
  begin
    JanuaWebBrokerServerManager1.Port := APort.ToInteger;
    Writeln(Format(sPortSet, [APort]));
  end
  else
    Writeln(Format(sPortInUse, [APort]));
  {
    end
    else
    Writeln(sServerRunning);
  }
  Write(cArrow);
end;

procedure TdmTestWebBrokerService.StartServer;
begin
  JanuaWebBrokerServerManager1.StartServer;
end;

procedure TdmTestWebBrokerService.StopServer;
begin
  JanuaWebBrokerServerManager1.StopServer
end;

procedure TdmTestWebBrokerService.TestConsole;
begin
  ConsoleRun;
end;

procedure TdmTestWebBrokerService.WriteArrow;
begin
  // if TJanuaApplication.ApplicationType in [jatConsoleSrv] then
  Write(cArrow);
end;

end.
