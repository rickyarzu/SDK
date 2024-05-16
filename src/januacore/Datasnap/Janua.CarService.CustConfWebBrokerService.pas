unit Janua.CarService.CustConfWebBrokerService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  {Vcl.Graphics,} {Vcl.Controls,} Vcl.SvcMgr {, Vcl.Dialogs};

type
  TJanuaCarServiceCustConfWebBrokerService = class(TService)
  private
    { Private declarations }
  protected
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  JanuaCarServiceCustConfWebBrokerService: TJanuaCarServiceCustConfWebBrokerService;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  JanuaCarServiceCustConfWebBrokerService.Controller(CtrlCode);
end;

function TJanuaCarServiceCustConfWebBrokerService.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

end.
