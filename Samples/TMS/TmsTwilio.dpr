program TmsTwilio;

uses
  Vcl.Forms,
  Janua.Application.Framework,
  Janua.VCL.TestApplication,
  Janua.TMS.SMS,
  ufrmTwilio in 'ufrmTwilio.pas' {frmTwilio};

{$R *.res}

begin
  Application.Initialize;
  TJanuaApplication.AppName := 'TestTwilio';
  TJanuaApplication.Initialize;
  TJanuaTestVCLApplication.ApplicationSetup('app.carservice.com');
  Application.MainFormOnTaskbar := True;
  if TJanuaApplication.UserSessionVM.LoginWithDialog then
  begin
    Application.CreateForm(TfrmTwilio, frmTwilio);
    Application.Run;
  end
  else
    Application.Terminate;

end.
