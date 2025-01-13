unit Janua.Phoenix.VCL.BackgroundService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, System.Win.Registry,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.SvcMgr, VCL.Dialogs
  // Janua
    , Janua.Phoenix.VCL.TWilioBackgroundThread;

type
  TsrvPhoenixVCLBackgroundService = class(TService)
    procedure ServiceExecute(Sender: TService);
    procedure ServiceContinue(Sender: TService; var Continued: Boolean);
    procedure ServiceAfterInstall(Sender: TService);
    procedure ServicePause(Sender: TService; var Paused: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
  private
    FBackgroundThread: TTwilioBackgroundThread;
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

procedure TsrvPhoenixVCLBackgroundService.ServiceAfterInstall(Sender: TService);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('SYSTEMCurrentControlSetServices' + name, false) then
    begin
      Reg.WriteString('Description', 'Phoenix Background Service');
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TsrvPhoenixVCLBackgroundService.ServiceContinue(Sender: TService; var Continued: Boolean);
begin
  FBackgroundThread.Continue;
  Continued := True;
end;

procedure TsrvPhoenixVCLBackgroundService.ServiceExecute(Sender: TService);
begin
  while not Terminated do
  begin
    ServiceThread.ProcessRequests(false);
    TThread.Sleep(1000);
  end;
end;

procedure TsrvPhoenixVCLBackgroundService.ServicePause(Sender: TService; var Paused: Boolean);
begin
  FBackgroundThread.Pause;
  Paused := True;
end;

procedure TsrvPhoenixVCLBackgroundService.ServiceStart(Sender: TService; var Started: Boolean);
begin
  FBackgroundThread := TTwilioBackgroundThread.Create(True);
  FBackgroundThread.Start;
  Started := True;
end;

procedure TsrvPhoenixVCLBackgroundService.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  FBackgroundThread.Terminate;
  FBackgroundThread.WaitFor;
  FreeAndNil(FBackgroundThread);
  Stopped := True;
end;

end.
