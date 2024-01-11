program AdvMetroCategoryListDemo;

uses
  Forms,
  AdvCategoryMetroTest in '..\src\AdvCategoryMetroTest.pas' {Form96},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Win10IDE_Dark');
  Application.CreateForm(TForm96, Form96);
  Application.Run;
end.
