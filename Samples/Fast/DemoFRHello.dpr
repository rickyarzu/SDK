program DemoFRHello;

uses
  Vcl.Forms,
  uDemoHello in 'uDemoHello.pas' {Form1},
  Janua.Phoenix.FbMaintenanceReport in '..\..\src\januaunidac\datamodules\Janua.Phoenix.FbMaintenanceReport.pas' {dmFBPhonixMantReport: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Win10IDE_Light');
  Application.CreateForm(TdmFBPhonixMantReport, dmFBPhonixMantReport);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
