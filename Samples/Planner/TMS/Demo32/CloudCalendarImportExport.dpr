program CloudCalendarImportExport;

uses
  Forms,
  uCloudCalendarSync in 'uCloudCalendarSync.pas' {frmCalendarCloudSync} ,
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Sky');
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalendarCloudSync, frmCalendarCloudSync);
  Application.Run;

end.
