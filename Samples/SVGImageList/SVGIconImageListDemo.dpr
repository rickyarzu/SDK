program SVGIconImageListDemo;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  UMainNew in 'UMainNew.pas' {MainForm},
  SVGIconImageListEditorUnit in 'SVGIconImageListEditorUnit.pas' {SVGIconImageListEditor},
  SVGIconImageList in 'SVGIconImageList.pas',
  UDataModule in 'UDataModule.pas' {ImageDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TImageDataModule, ImageDataModule);
  Application.CreateForm(TMainForm, MainForm);
  application.Run;
end.
