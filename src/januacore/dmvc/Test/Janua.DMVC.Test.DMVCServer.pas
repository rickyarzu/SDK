unit Janua.DMVC.Test.DMVCServer;

interface

uses
  System.SysUtils, System.Classes,
  // MVC/Indy
  MVCFramework.Logger,
  MVCFramework.Commons,
  MVCFramework.REPLCommandsHandlerU,
  Web.ReqMulti,
  Web.WebReq,
  Web.WebBroker,
  IdContext,
  IdHTTPWebBrokerBridge;

type
  TdmDMVCTestServer = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FPort: Word;
    { Private declarations }
    procedure SetPort(const Value: Word);
  protected
    FServer: TIdHTTPWebBrokerBridge;
    FCustomHandler: TMVCCustomREPLCommandsHandler;
  public
    procedure StartHttpServer;
    procedure StopHttpServer;
    property Port: Word read FPort write SetPort;
  end;

var
  dmDMVCTestServer: TdmDMVCTestServer;

implementation

uses Janua.Core.Functions, Janua.DMVC.Test.WebModule, Janua.Application.Framework;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDataModule1 }

procedure TdmDMVCTestServer.DataModuleCreate(Sender: TObject);
begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  WebRequestHandlerProc.MaxConnections := 1024;
end;

procedure TdmDMVCTestServer.DataModuleDestroy(Sender: TObject);
begin
  StopHttpServer;
end;

procedure TdmDMVCTestServer.SetPort(const Value: Word);
begin
  FPort := Value;
end;

procedure TdmDMVCTestServer.StartHttpServer;
begin
  FCustomHandler :=
      function(const Value: String; const Server: TIdHTTPWebBrokerBridge; out Handled: Boolean): THandleCommandResult
    begin
      Handled := False;
      Result := THandleCommandResult.Unknown;
      // Write here your custom command for the REPL using the following form...
      // ***
      // Handled := False;
      // if (Value = 'apiversion') then
      // begin
      // REPLEmit('Print my API version number');
      // Result := THandleCommandResult.Continue;
      // Handled := True;
      // end
      // else if (Value = 'datetime') then
      // begin
      // REPLEmit(DateTimeToStr(Now));
      // Result := THandleCommandResult.Continue;
      // Handled := True;
      // end;
    end;
  FServer := TIdHTTPWebBrokerBridge.Create(nil);
  FServer.OnParseAuthentication := TMVCParseAuthentication.OnParseAuthentication;
  FServer.DefaultPort := FPort;
  { more info about MaxConnections
    http://www.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=TIdCustomTCPServer_MaxConnections.html }
  FServer.MaxConnections := 0;
  { more info about ListenQueue
    http://www.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=TIdCustomTCPServer_ListenQueue.html }
  FServer.ListenQueue := 200;
  { required if you use JWT middleware }
  FServer.OnParseAuthentication := TMVCParseAuthentication.OnParseAuthentication;
  FServer.Active := True;
end;

procedure TdmDMVCTestServer.StopHttpServer;
begin
  if Assigned(FServer) then
  begin
    FServer.Active := False;
    FServer.Free;
  end;
end;

end.
