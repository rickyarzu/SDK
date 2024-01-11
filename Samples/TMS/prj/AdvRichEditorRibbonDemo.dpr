program AdvRichEditorRibbonDemo;

uses
  Forms,
  UAdvRichEditorRibbonDemo in '..\src\UAdvRichEditorRibbonDemo.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 OxfordBlue');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
