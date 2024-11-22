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
  Janua.Phoenix.PgTwilioSync in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.PgTwilioSync.pas' {dmPgStorage1: TDataModule};

var
    FBackgroundThread: TBackgroundThread;

begin
  var lResponse := '';
  try
  FBackgroundThread := TBackgroundThread.Create(True);
  FBackgroundThread.Start;
    while true do
    begin
      readln(lResponse);

    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
