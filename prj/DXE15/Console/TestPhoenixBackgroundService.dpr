program TestPhoenixBackgroundService;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Janua.Phoenix.VCL.BackgroundThread in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.BackgroundThread.pas',
  Janua.FDAC.Phoenix.Lab in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Lab.pas' {dmFDACPhoenixLab: TDataModule},
  Janua.FDAC.Phoenix.Model in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Model.pas' {dmFDACPhoenixModel: TDataModule},
  uPhoenixBackgroundServiceConf in '..\VCL\uPhoenixBackgroundServiceConf.pas',
  udmPgStorage in '..\..\..\src\januaunidac\datamodules\udmPgStorage.pas' {dmPgStorage: TDataModule},
  Janua.Phoenix.PgTwilioSync in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.PgTwilioSync.pas' {dmPgTWilioSync: TDataModule};

var
  FBackgroundThread: TBackgroundThread;

procedure StartThread;
begin
  FBackgroundThread := TBackgroundThread.Create(True);
  FBackgroundThread.Start;
end;

procedure StopThread;
begin

end;

procedure TestTwilio;
begin
  var
  lTwilio := TdmPgTWilioSync.Create(nil);
  try
    lTwilio.SyncDBTwilio;
    lTwilio.SyncMessages;
  finally
    lTwilio.Free;
  end;
end;

begin
  TPhoenixBackgroundServiceApp.ApplicationSetup('service.assoantincendio.com');
  var
  lResponse := '';
  try

    while True do
    begin
      readln(lResponse);
      if lResponse = 'start' then
        StartThread
      else if lResponse = 'twilio' then
        TestTwilio
      else if lResponse = 'stop' then


    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
