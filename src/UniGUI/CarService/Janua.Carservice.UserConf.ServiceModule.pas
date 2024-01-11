unit Janua.Carservice.UserConf.ServiceModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,
  uniGUIService;

type
  TUniServicePikappCustConf = class(TUniGUIService)
  private
    { Private declarations }
  protected
    procedure InitService; override;
  public
    { Public declarations }
    function GetServiceController: TServiceController; override;
  end;

var
  UniServicePikappCustConf: TUniServicePikappCustConf;

implementation

{$R *.dfm}

uses
  UniGUIVars;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  UniServicePikappCustConf.Controller(CtrlCode);
end;

function TUniServicePikappCustConf.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TUniServicePikappCustConf.InitService;
begin
  SetServerClass(UniGUIServerModuleClass);
end;

end.
