unit Janua.Phoenix.VCL.BackgroundService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs;

type
  TsrvPhoenixVCLBackgroundService = class(TService)
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  srvPhoenixVCLBackgroundService: TsrvPhoenixVCLBackgroundService;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  srvPhoenixVCLBackgroundService.Controller(CtrlCode);
end;

function TsrvPhoenixVCLBackgroundService.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

end.
