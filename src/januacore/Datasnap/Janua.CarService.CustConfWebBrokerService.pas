unit Janua.CarService.CustConfWebBrokerService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  {Vcl.Graphics,} {Vcl.Controls,} Vcl.SvcMgr {, Vcl.Dialogs};

type
  TService3 = class(TService)
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  Service3: TService3;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Service3.Controller(CtrlCode);
end;

function TService3.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

end.
