program dbplandemo;

uses
  Forms,
  Udbplan in 'Udbplan.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.RES}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
