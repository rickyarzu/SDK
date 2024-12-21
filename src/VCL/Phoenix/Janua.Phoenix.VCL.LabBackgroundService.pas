unit Janua.Phoenix.VCL.LabBackgroundService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, System.Win.Registry,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.SvcMgr, VCL.Dialogs
  // Janua
    , Janua.Phoenix.VCL.LabBackgroundThread;

type
  TsrvPhoenixVCLLabBackgroundService = class(TService)
    procedure ServiceExecute(Sender: TService);
    procedure ServiceContinue(Sender: TService; var Continued: Boolean);
    procedure ServiceAfterInstall(Sender: TService);
    procedure ServicePause(Sender: TService; var Paused: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
  private
    FBackgroundThread: TPhoenixLabBackgroundThread;
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  srvPhoenixVCLLabBackgroundService: TsrvPhoenixVCLLabBackgroundService;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  srvPhoenixVCLLabBackgroundService.Controller(CtrlCode);
end;

function TsrvPhoenixVCLLabBackgroundService.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TsrvPhoenixVCLLabBackgroundService.ServiceAfterInstall(Sender: TService);
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

procedure TsrvPhoenixVCLLabBackgroundService.ServiceContinue(Sender: TService; var Continued: Boolean);
begin
  FBackgroundThread.Continue;
  Continued := True;
end;

procedure TsrvPhoenixVCLLabBackgroundService.ServiceExecute(Sender: TService);
begin
  while not Terminated do
  begin
    ServiceThread.ProcessRequests(false);
    TThread.Sleep(1000);
  end;
end;

procedure TsrvPhoenixVCLLabBackgroundService.ServicePause(Sender: TService; var Paused: Boolean);
begin
  FBackgroundThread.Pause;
  Paused := True;
end;

procedure TsrvPhoenixVCLLabBackgroundService.ServiceStart(Sender: TService; var Started: Boolean);
begin
  FBackgroundThread := TPhoenixLabBackgroundThread.Create(True);
  FBackgroundThread.Start;
  Started := True;
end;

procedure TsrvPhoenixVCLLabBackgroundService.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  FBackgroundThread.Terminate;
  FBackgroundThread.WaitFor;
  FreeAndNil(FBackgroundThread);
  Stopped := True;
end;

end.
