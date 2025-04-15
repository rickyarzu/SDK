program TestPhoenixBackgroundService;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Janua.Phoenix.VCL.LabBackgroundThread in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.LabBackgroundThread.pas',
  uPhoenixBackgroundServiceConf in '..\VCL\uPhoenixBackgroundServiceConf.pas',
  udmFbStorage in '..\..\..\src\januaunidac\datamodules\udmFbStorage.pas' {dmFbStorage: TDataModule},
  Phoenix.Twiliio.dmFbWhatsApp in '..\..\..\src\januaunidac\datamodules\Phoenix.Twiliio.dmFbWhatsApp.pas' {dmFbTwilioWhatsApp: TDataModule};

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
