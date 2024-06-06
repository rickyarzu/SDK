program JanuaCloudCalendarImportExport;

uses
  VCL.Forms,
  VCL.Dialogs,
  Janua.Application.Framework,
  uCloudCalendarSync in 'Cloud\uCloudCalendarSync.pas' {frmCalendarCloudSync} ,
  VCL.Themes,
  VCL.Styles;

{$R *.res}

begin
{$IFDEF DEBUG}
  TJanuaApplication.AppName := ('test.anagraphplanner.com');
{$ELSE}
  TJanuaApplication.AppName := ('destkop.anagraphplanner.com');
{$ENDIF}
  TJanuaApplication.Initialize;

  TJanuaApplication.CloudConf.GoogleAppKey :=
    '236693880296-rm39939mbtpabvkfdiqsolvkdogn334a.apps.googleusercontent.com';
  TJanuaApplication.CloudConf.GoogleAppSecret := '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';

  Application.Initialize;
  if TJanuaApplication.ErrorLog.count > 0 then
    ShowMessage(TJanuaApplication.ErrorLog.Text);

  Application.Initialize;
  TStyleManager.TrySetStyle('Sky');
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalendarCloudSync, frmCalendarCloudSync);
  Application.Run;

end.
