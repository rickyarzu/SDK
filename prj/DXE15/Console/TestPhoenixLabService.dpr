program TestPhoenixLabService;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Janua.Phoenix.VCL.LabBackgroundThread in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.LabBackgroundThread.pas',
  Janua.Phoenix.dmIBLabSync in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.dmIBLabSync.pas' {dmPhoenixIBLab: TDataModule},
  Janua.Phoenix.dmIBModel in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.dmIBModel.pas' {dmPhoenixIBModel: TDataModule},
  Globale in '..\..\..\..\Phoenix\Phoenix\SW\PhoenixMain\Globale.pas',
  uPhoenixBackgroundServiceConf in '..\VCL\uPhoenixBackgroundServiceConf.pas';

var
  FBackgroundThread: TPhoenixLabBackgroundThread;

procedure StartThread;
begin
  FBackgroundThread := TPhoenixLabBackgroundThread.Create(True);
  FBackgroundThread.Start;
end;

procedure StopThread;
begin

end;

begin
  TPhoenixBackgroundServiceApp.ApplicationSetup('service.assoantincendio.com');
  SystemInformation.LoadIni;
  var
  lResponse := '';
  try

    while True do
    begin
      readln(lResponse);
      if lResponse = 'start' then
        StartThread
      else if lResponse = 'stop' then


    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
