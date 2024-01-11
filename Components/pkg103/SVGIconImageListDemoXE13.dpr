program SVGIconImageListDemoXE13;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  USVGImageListMain in '..\src\USVGImageListMain.pas' {MainForm},
  SVGIconImageListEditorUnit in '..\..\..\lib\SVGIconImageList\Packages\SVGIconImageListEditorUnit.pas' {SVGIconImageListEditor},
  SVGIconImageList in '..\..\..\lib\SVGIconImageList\source\SVGIconImageList.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
