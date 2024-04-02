program CloudCalendarImportExport;

uses
  Forms,
  uCloudCalendarSync in 'uCloudCalendarSync.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TForm4, Form4);
  pplication.Run;
end.
