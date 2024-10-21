program PhoenixTestGoogleSync.pas;

uses
  Vcl.Forms,
  ufrmPhoenixTestGoogleSync in 'ufrmPhoenixTestGoogleSync.pas' {frmVCLPhoenixTestGoogleSync},
  Janua.Phoenix.VCL.dmGCalendarController in '..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.dmGCalendarController.pas' {dmPhoenixVCLGCalendarController: TDataModule},
  Janua.VCL.Cloud.dlgGoogleConnect in '..\..\src\VCL\Cloud\Janua.VCL.Cloud.dlgGoogleConnect.pas' {dlgVclCloudGoogleConnect},
  Janua.Phoenix.VCL.BackgroundApplication in '..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.BackgroundApplication.pas',
  Janua.VCL.frameGoogleColor in '..\..\src\VCL\Cloud\Janua.VCL.frameGoogleColor.pas' {frameVCLJanuaGoogleColor: TFrame};

{$R *.res}

begin
  Application.Initialize;
  TPhoenixVCLBackgroundApplication.ApplicationSetup('desktop.phoenix_asso.com');
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLPhoenixTestGoogleSync, frmVCLPhoenixTestGoogleSync);
  Application.Run;
end.
