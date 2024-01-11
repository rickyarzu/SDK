unit Janua.Sports.PadelWordpressService;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs, uniGUIService;

type
  TUniGuiPadelBackEndServiceModule = class(TUniGUIService)
  private
    { Private declarations }
  protected
    procedure InitService; override;
  public
    { Public declarations }
    function GetServiceController: TServiceController; override;
  end;

var
  UniGuiPadelBackEndServiceModule: TUniGuiPadelBackEndServiceModule;

implementation

{$R *.dfm}

uses
  UniGUIVars;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  UniGuiPadelBackEndServiceModule.Controller(CtrlCode);
end;

function TUniGuiPadelBackEndServiceModule.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TUniGuiPadelBackEndServiceModule.InitService;
begin
  SetServerClass(UniGUIServerModuleClass);
end;

end.
