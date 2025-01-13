unit Janua.CarService.dlgWebBrokerCustConfirmation;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Types,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.AppEvnts, Vcl.StdCtrls,
  IdHTTPWebBrokerBridge,
  Web.WebReq,
  Web.WebBroker,
  Janua.WebBroker.ServerConst,
  Janua.Core.Types,
  Janua.Http.WebServer,
  Janua.CarService.WebModuleCustomerConfirmation, Vcl.Samples.Spin;

// IdHTTPWebBrokerBridge, IdGlobal, Web.HTTPApp;

type
  TForm1 = class(TForm)
    ButtonStart: TButton;
    ButtonStop: TButton;
    Label1: TLabel;
    ApplicationEvents1: TApplicationEvents;
    ButtonOpenBrowser: TButton;
    edPort: TSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure ButtonOpenBrowserClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FServer: TJanuaWebServer;
    procedure StartServer;
    procedure StopServer;
    procedure RefreshButtons;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
{$IFDEF MSWINDOWS}
  Winapi.Windows, Winapi.ShellApi,
{$ENDIF}
  System.Generics.Collections, Janua.Application.Framework;

procedure TForm1.ButtonOpenBrowserClick(Sender: TObject);
{$IFDEF MSWINDOWS}
var
  LURL: string;
{$ENDIF}
begin
  StartServer;
  LURL := Format('http://localhost:%s', [edPort.Text]);
{$IFDEF MSWINDOWS}
  ShellExecute(0, nil, PChar(LURL), nil, nil, SW_SHOWNOACTIVATE);
{$ENDIF}
end;

procedure TForm1.ButtonStartClick(Sender: TObject);
begin
  StartServer;
end;

procedure TForm1.ButtonStopClick(Sender: TObject);
begin
  StopServer;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  FServer := TJanuaWebServerFactory.CreateWebServer;
  FServer.Port := TJanuaWebServer.GetPort(8084);
  EditPort.Text := FServer.Port.ToString;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FServer.Free;
end;

procedure TForm1.RefreshButtons;
begin
  ButtonStart.Enabled := not FServer.IsActive;
  ButtonStop.Enabled := FServer.IsActive;
  EditPort.Enabled := not FServer.IsActive;
end;

procedure TForm1.StartServer;
begin
  if not FServer.IsActive then
  begin
    FServer.Port := StrToInt(EditPort.Text);
    FServer.StartServer;
  end;
end;

procedure TForm1.StopServer;
begin
  FServer.StopServer;
    FServer.IsActive := False;
end;

end.
