program OutlookMailDemo;

uses
  Vcl.Forms,
  UOutlookMailDemo in 'UOutlookMailDemo.pas' {Form12};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm12, Form12);
  Application.Run;
end.
