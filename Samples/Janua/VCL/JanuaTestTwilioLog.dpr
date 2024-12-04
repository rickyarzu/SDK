program JanuaTestTwilioLog;

uses
  Vcl.Forms,
  Janua.Twilio.VCL.frmTestTwilioLog in 'Janua.Twilio.VCL.frmTestTwilioLog.pas' {frmVCLJanuaTestTwilioLog},
  Janua.Phoenix.PgTwilioSync in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.PgTwilioSync.pas' {dmPgTWilioSync: TDataModule},
  udmPgStorage in '..\..\..\src\januaunidac\datamodules\udmPgStorage.pas' {dmPgStorage: TDataModule},
  Janua.FDAC.Phoenix.Lab in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Lab.pas' {dmFDACPhoenixLab: TDataModule},
  uPhoenixBackgroundServiceConf in '..\..\..\prj\DXE15\VCL\uPhoenixBackgroundServiceConf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TPhoenixBackgroundServiceApp.ApplicationSetup('service.assoantincendio.com');
  Application.CreateForm(TdmPgTWilioSync, dmPgTWilioSync);
  Application.CreateForm(TdmFDACPhoenixLab, dmFDACPhoenixLab);
  Application.CreateForm(TfrmVCLJanuaTestTwilioLog, frmVCLJanuaTestTwilioLog);
  Application.Run;
end.
