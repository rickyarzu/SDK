unit Janua.Carservice.UsersServiceModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs, uniGUIService;

type
  TUniGuiCarServiceUsersServiceModule = class(TUniGUIService)
  private
    { Private declarations }
  protected
    procedure InitService; override;
  public
    { Public declarations }
    function GetServiceController: TServiceController; override;
  end;

var
  UniGuiCarServiceUsersServiceModule: TUniGuiCarServiceUsersServiceModule;

implementation

{$R *.dfm}

uses
  UniGUIVars;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  UniGuiCarServiceUsersServiceModule.Controller(CtrlCode);
end;

function TUniGuiCarServiceUsersServiceModule.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TUniGuiCarServiceUsersServiceModule.InitService;
begin
  SetServerClass(UniGUIServerModuleClass);
end;

end.
