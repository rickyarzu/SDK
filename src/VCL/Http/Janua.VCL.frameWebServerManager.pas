unit Janua.VCL.frameWebServerManager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  VCL.StdCtrls, VCL.Controls, VCL.Samples.Spin, VCL.Forms,
  Janua.Core.Commons, Janua.Core.Classes, Janua.WebBroker.ServerController, Janua.VCL.Interposers;

type
  TJanuaframeWebServerManager = class(TFrame)
    btnStartServer: TButton;
    btnStopServer: TButton;
    Label1: TLabel;
    JanuaWebBrokerServerManager1: TJanuaWebBrokerServerManager;
    sedPort: TSpinEdit;
    procedure btnStartServerClick(Sender: TObject);
    procedure btnStopServerClick(Sender: TObject);
  private
    procedure SetUrl(const Value: string);
    function GetUrl: string;
  public
    { Public declarations }
    property Url: string read GetUrl write SetUrl;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TframeWebBrokerStarter }

procedure TJanuaframeWebServerManager.AfterConstruction;
begin
  inherited;
  // JanuaWebBrokerServerManager1.Bind('port', sedPort, 'Value');
  sedPort.Value := JanuaWebBrokerServerManager1.Port;
  // here goes the AfterConstruction Code
end;

procedure TJanuaframeWebServerManager.BeforeDestruction;
begin
  inherited;
end;

procedure TJanuaframeWebServerManager.btnStartServerClick(Sender: TObject);
begin
  JanuaWebBrokerServerManager1.StartServer;
end;

procedure TJanuaframeWebServerManager.btnStopServerClick(Sender: TObject);
begin
  JanuaWebBrokerServerManager1.StopServer
end;

function TJanuaframeWebServerManager.GetUrl: string;
begin
  Result := JanuaWebBrokerServerManager1.Url
end;

procedure TJanuaframeWebServerManager.SetUrl(const Value: string);
begin
  JanuaWebBrokerServerManager1.Url := Value;
end;

end.
