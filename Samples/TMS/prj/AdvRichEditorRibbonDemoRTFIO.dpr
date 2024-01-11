program AdvRichEditorRibbonDemoRTFIO;

uses
  Forms,
  UAdvRichEditorRibbonDemo in '..\..\..\..\tmssoftware\TMS VCL UI Pack\Demos\AdvRichEditor\Ribbon\UAdvRichEditorRibbonDemo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
