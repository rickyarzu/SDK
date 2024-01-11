program IconFontsImageListDemoXE13;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  IconFontsImageListEditorUnit in '..\..\..\lib\IconFontsImageList\Packages\IconFontsImageListEditorUnit.pas' {IconFontsImageListEditor},
  UMain in '..\..\..\lib\IconFontsImageList\Demo\Source\UMain.pas' {MainForm},
  Icons.MaterialDesign in '..\..\..\lib\IconFontsImageList\Source\Fonts\Icons.MaterialDesign.pas',
  Icons.Utils in '..\..\..\lib\IconFontsImageList\Source\Fonts\Icons.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;

//  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
end.
