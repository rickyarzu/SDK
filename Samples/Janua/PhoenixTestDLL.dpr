program PhoenixTestDLL;

uses
  Vcl.Forms,
  ufrmTestPhoenixDLL in 'ufrmTestPhoenixDLL.pas' {frmTestDelphiDLL} ,
  Janua.Phoenix.Vcl.dmGCalendarController
    in '..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.dmGCalendarController.pas' {dmPhoenixVCLGCalendarController: TDataModule} ,
  Janua.Vcl.Cloud.dlgGoogleConnect
    in '..\..\src\VCL\Cloud\Janua.VCL.Cloud.dlgGoogleConnect.pas' {dlgVclCloudGoogleConnect} ,
  Janua.Phoenix.Vcl.BackgroundApplication
    in '..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.BackgroundApplication.pas';

{$R *.res}

begin
  TPhoenixVCLBackgroundApplication.ApplicationSetup('desktop.phoenix_asso.com');
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTestDelphiDLL, frmTestDelphiDLL);
  Application.Run;

end.
