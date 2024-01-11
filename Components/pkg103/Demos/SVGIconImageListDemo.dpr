program SVGIconImageListDemo;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  UMain in '..\..\..\..\lib\SVGIconImageList\Demo\Source\UMain.pas' {MainForm},
  SVGIconImageListEditorUnit in '..\..\..\..\lib\SVGIconImageList\Packages\SVGIconImageListEditorUnit.pas' {SVGIconImageListEditor},
  SVGIconImageList in '..\..\..\..\lib\SVGIconImageList\source\SVGIconImageList.pas',
  UDataModule in '..\..\..\..\lib\SVGIconImageList\Demo\Source\UDataModule.pas' {ImageDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TImageDataModule, ImageDataModule);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
