TStyleManager.TrySetStyle('Cyan Night');
  program CloudCalendarImportExport;

uses
  Forms,
  uCloudCalendarSync in 'uCloudCalendarSync.pas' {frmCalendarCloudSync},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TForm4, Form4);
  pplication.Run;
end.
