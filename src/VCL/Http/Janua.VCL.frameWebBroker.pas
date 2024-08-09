unit Janua.VCL.frameWebBroker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // WebBroker

  //VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, scControls;

type
  TframeWebBrokerStarter = class(TFrame)
    btnStartServer: TButton;
    btnStopServer: TButton;
    sedPort: TscSpinEdit;
  private
    FWebModuleClass: TComponentClass;
    procedure SetWebModuleClass(const Value: TComponentClass);
  protected
    procedure StartServer;
    procedure StopServer;
  public
    { Public declarations }
    property WebModuleClass: TComponentClass read FWebModuleClass write SetWebModuleClass;
  public
    procedure AfterConstruction;
    procedure BeforeDestruction;
  end;

implementation

{$R *.dfm}

{ TframeWebBrokerStarter }

procedure TframeWebBrokerStarter.AfterConstruction;
begin

end;

procedure TframeWebBrokerStarter.BeforeDestruction;
begin

end;

procedure TframeWebBrokerStarter.SetWebModuleClass(const Value: TComponentClass);
begin
  FWebModuleClass := Value;
end;

procedure TframeWebBrokerStarter.StartServer;
begin

end;

procedure TframeWebBrokerStarter.StopServer;
begin

end;

end.
