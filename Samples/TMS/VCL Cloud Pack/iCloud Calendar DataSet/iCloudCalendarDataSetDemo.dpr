program iCloudCalendarDataSetDemo;

uses
  Forms,
  UiCloudCalendarDataSet in 'UiCloudCalendarDataSet.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
