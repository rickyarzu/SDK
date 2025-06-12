program JanuaTestTwilioLog;

uses
  Vcl.Forms,
  Janua.Twilio.VCL.frmTestTwilioLog in 'Janua.Twilio.VCL.frmTestTwilioLog.pas' {frmVCLJanuaTestTwilioLog},
  Phoenix.Twiliio.dmFbWhatsApp in '..\..\..\src\januaunidac\datamodules\Phoenix.Twiliio.dmFbWhatsApp.pas' {dmFbTwilioWhatsApp: TDataModule},
  udmFbStorage in '..\..\..\src\januaunidac\datamodules\udmFbStorage.pas' {dmFbStorage: TDataModule},
  Janua.FDAC.Phoenix.Lab in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Lab.pas' {dmFDACPhoenixLab: TDataModule},
  uPhoenixBackgroundServiceConf in '..\..\..\prj\DXE15\VCL\uPhoenixBackgroundServiceConf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TPhoenixBackgroundServiceApp.ApplicationSetup('service.assoantincendio.com');
  Application.CreateForm(TdmFbTwilioWhatsApp, dmFbTwilioWhatsApp);
  Application.CreateForm(TdmFDACPhoenixLab, dmFDACPhoenixLab);
  Application.CreateForm(TfrmVCLJanuaTestTwilioLog, frmVCLJanuaTestTwilioLog);
  Application.Run;
end.
