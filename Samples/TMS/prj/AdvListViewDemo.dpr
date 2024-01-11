program AdvListViewDemo;

uses
  Forms,
  UAdvListViewDemo in '..\src\UAdvListViewDemo.pas' {Form1},
  uAdvListViewprev in '..\src\uAdvListViewprev.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles;

{$R *.RES}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 OxfordBlue');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
