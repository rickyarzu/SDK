program JanuaGoogleCalendarDemo;

uses
  VCL.Forms,
  Janua.Application.Framework,
  ufrmTMSAdvCalendarDemo in 'Cloud\ufrmTMSAdvCalendarDemo.pas' {frmTMSAdvCalendarDemo},
  Janua.Phoenix.VCL.BackgroundApplication in '..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.BackgroundApplication.pas',
  Janua.VCL.Cloud.dlgGoogleConnect in '..\..\src\VCL\Cloud\Janua.VCL.Cloud.dlgGoogleConnect.pas' {dlgVclCloudGoogleConnect};

{$R *.res}

var
dlgVclCloudGoogleConnect:TdlgVclCloudGoogleConnect;

begin
  TJanuaTmsDemosVCLApplication.ApplicationSetup('demo.tmssoftware.com');
  TJanuaApplication.StyleManager.Activate;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  dlgVclCloudGoogleConnect:=TdlgVclCloudGoogleConnect.Create(nil);
  dlgVclCloudGoogleConnect.ShowModal;
  Application.CreateForm(TfrmTMSAdvCalendarDemo, frmTMSAdvCalendarDemo);
  Application.Run;
end.
