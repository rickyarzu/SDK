program plandemo;

uses
  Forms,
  Uplan in 'Uplan.pas' {Form1},
  Uhelp in 'Uhelp.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles;

{$R *.RES}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Win10IDE_Light');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
